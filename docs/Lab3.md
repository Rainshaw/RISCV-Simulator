# 计算机组织与体系结构实习Lab3

# 高速缓存的模拟、配置和优化

## 单级Cache模拟

单层Cache模拟器，主程序在`source-code/CacheMain.cpp`中，主要负责读取`trace`文件，并执行Cache模拟。由于第二阶段需与CPU模拟器级联，故新编写`Cache.cpp`文件并修改原有文件使得可以正确运行。

### `MemoryManager`模块修改

主存在本次试验中是最底层的存储器，故对于主存必然命中。主存对于读取字节的响应延迟应为总线延迟和主存命中延迟之和。主存对于写若干字节的响应延迟应为总线延迟和主存命中延迟之和。

将原有`get`,`set`函数修改，均加入延迟时间计算。

### `Cache`模块设计

缓存在运行过程中，会不停接收到读、写请求，根据自身情况，分别响应读命中、读不命中、写命中、写不命中。

对于读命中，从存储中取出内容，经过总线延迟和命中延迟完成动作。

对于读不命中，首先找到空闲块或待替换的块，若`write_back`为真，则将被替代块写回下一层存储，再向下一层存储发出读请求替换至准备好的块中，再进行读命中操作，需经过总线延迟和命中延迟再加上下一级的延迟来完成。

对于写命中，若`write_back`为真，则设置`dirty`为真，之后进行写入操作。若`write_back`为真，需经总线延迟与命中延迟完成；否则，需向下一级存储发出写请求，等待下一级存储也写入完成，需总线延迟、命中延迟和下一级的延迟完成。

对于写不命中，若`write_alloc`为真，则需先替换块，再根据`wirte_back`决定写入时的操作。需要总线延迟、命中延迟再加上下一级的延迟完成；否则，直接向下一级传递请求，需总线延迟、命中延迟、下一级延迟完成。

### Miss Rate 随 Block Size 的变化

![](../assets/01-mcf-gem5-xcg-1.png)

如图所示为在不同Cache Size的条件下，Miss Rate 随 Block Size的变化趋势，取associativity为8。可以看出，随着Block Size的增大，Miss Rate会逐渐减小至一稳定值。

### Miss Rate 随 Associativity 的变化

![](../assets/01-mcf-gem5-xcg-2.png)

如图所示，为固定Block Size 为64Byte，Miss Rate随Associativity的变化趋势。可以看出，绝大多数情况，随着associativity的增大，Miss Rate也会逐渐减小至一稳定值。

## Write Through, Write Back, Write Allocate和 No-write Allocate访问延时差异

![](../assets/01-mcf-gem5-xcg-3.png)

如图所示，在不同的写策略时，总访问延时有一定区别。可以看到，Write Back策略访问延时明显低于Write Through；Write Allocate对延时的减小有微弱的帮助。

## 与CPU模拟器级联

修改`Simulator`模块、主程序模块，将Cache加入至流水线模拟之中。

这里采用Cache模块计算访存延迟并返回给流水线模拟器，再将该延迟加入到流水线模拟器的周期数中，以便计算CPI

| Level | Capacity | Associativity | Block Size | Write Policy | Hit Latency  |
| ----- | -------- | ------------- | ---------- | ------------ | ------------ |
| L1    | 32KB     | 8 ways        | 64         | Write Back   | 1 CPU Cycle  |
| L2    | 256KB    | 8 ways        | 64         | Write Back   | 8 CPU Cycle  |
| LLC   | 8MB      | 8 ways        | 64         | Write Back   | 20 CPU Cycle |

### 程序运行结果

```bash
Ackermann(0,0) = 1
Ackermann(0,1) = 2
Ackermann(0,2) = 3
Ackermann(0,3) = 4
Ackermann(0,4) = 5
Ackermann(1,0) = 2
Ackermann(1,1) = 3
Ackermann(1,2) = 4
Ackermann(1,3) = 5
Ackermann(1,4) = 6
Ackermann(2,0) = 3
Ackermann(2,1) = 5
Ackermann(2,2) = 7
Ackermann(2,3) = 9
Ackermann(2,4) = 11
Ackermann(3,0) = 5
Ackermann(3,1) = 13
Ackermann(3,2) = 29
Ackermann(3,3) = 61
Ackermann(3,4) = 125
Program exit from exit() system call
-------STATISTICS---------
Number of Cycles: 524861
Number of Instructions: 430659
Avg Cycles per Instrcution: 1.2187
Number of JALR Instructions: 13740
Number of JAL Instructions: 20734
Number of LOAD Instructions: 95400
Number of STORE Instructions: 68308
Number of BRANCH Instructions: 27451
Number of Successful Prediction: 13847
Number of Unsuccessful Prediction: 13604
Branch Prediction Accuracy: 0.5044 (Using Strategy: Always Not Taken)
Number of Control Hazards: 61860
Number of Data Hazards: 307250
Number of Structural Hazards: 27192
```

从中可以看出，运行结果正确。

### CPI对比

下表给出带Cache和不带Cache的程序运行CPI

| 文件名        | CPI of Ideal<br />Memory | CPI with<br /> Cache | CPI without<br />Cache |
| ------------- | ------------------------ | -------------------- | ---------------------- |
| `helloworld`  | 1.2168                   | 8.9650               | 27.0909                |
| `quicksort`   | 1.3427                   | 1.3952               | 49.2958                |
| `matrixmulti` | 1.2254                   | 1.2583               | 39.0974                |
| `ackermann`   | 1.2060                   | 1.2187               | 39.2194                |

在没有Cache的模拟器中，所有访存周期都为1个周期，当引入Cache后，CPI均有所增加，这是因为引入Cache后，我们访存操作都需要不止一个周期。

从表中可以看出，不同程序其CPI差异很大，局部性好的程序CPI增加幅度小，如矩阵乘法，其数据大多在一个block内，引入Cache带来的性能损失非常小。

当我们去掉Cache并设置访存周期为100时，我们发现引入Cache基本上都能将CPI下降很多，这说明减小访存延迟，合理设计Cache规模对计算机性能的影响是巨大的。

## 高速缓存管理策略优化

采用两级Cache，默认配置如下

| Level | Capacity | Associativity | Line size(Bytes) | Write Policy | Bus Latency | Hit Latency   |
| ----- | -------- | ------------- | ---------------- | ------------ | ----------- | ------------- |
| L1    | 32KB     | 8 ways        | 64               | Write Back   | 0 CPU Cycle | ?             |
| L2    | 256KB    | 8 ways        | 64               | Write Back   | 6 CPU Cycle | ?             |
| Mem   | $\infty$ |               |                  |              | 0           | 100 CPU Cycle |

其中Bus Latency为总线延迟，即本层接到上层发来请求和本层返回数据给上层时间延迟之和，Hit Latency为本层查找数据所需时间，只要没使用bypass该延时始终存在。假设CPU和主存频率为2GHz，主存无限大。

### 计算Hit Latency

安装cacti依赖库

```bash
sudo apt install gcc-multilib g++-multilib
```

修改`cacti`配置文件

```ini
-size (bytes) ???
-block size (bytes) ?
-associativity ?
-technology (u) 0.032
-cache type "cache"
```

得到运行结果

![L1 Cache默认配置](../assets/lab3-3-1.png)

![L1 Cache默认配置](../assets/lab3-3-2.png)

从图中可以看出， 

```bash
默认配置下，32nm工艺节点下，L1 Cache的 Hit Latency 为（1.47944）ns，约等于（3）cycle
- 默认配置下，32nm工艺节点下，L2 Cache的 Hit Latency 为（1.9206）ns，约等于（4）cycle
```

故，默认配置下，Cache的全部参数如下表

| Level | Capacity | Associativity | Line size(Bytes) | Write Policy | Bus Latency | Hit Latency   |
| ----- | -------- | ------------- | ---------------- | ------------ | ----------- | ------------- |
| L1    | 32KB     | 8 ways        | 64               | Write Back   | 0 CPU Cycle | 3 CPU Cycle   |
| L2    | 256KB    | 8 ways        | 64               | Write Back   | 6 CPU Cycle | 4 CPU Cycle   |
| Mem   | $\infty$ |               |                  |              | 0           | 100 CPU Cycle |

### 默认配置运行trace2017

使用LRU替换算法，无任何优化算法，使用命令

```bash
./CacheYouhuaSim ../cache-trace/???.trace 100
```

运行提供的两个trace文件共一百次。



| Trace                    | Level | Latency | Miss Rate | AMAT |      |
| :----------------------- | ----- | :------ | :-------: | ---- | ---- |
| 01-mcf-gem5-xcg.trace    | L1    | 3       |           |      |      |
|                          | L2    | 10      |           |      |      |
|                          | Mem   | 100     |     x     |      |      |
| 02-stream-gem5-xaa.trace | L1    | 3       |           |      |      |
|                          | L2    | 10      |           |      |      |
|                          | Mem   | 100     |     x     |      |      |