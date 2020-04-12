# RISC-V 模拟器

本模拟器使用5级流水线，并包含分支预测功能

本模拟器目前仅支持`RV64I`基本指令集及部分`M`扩展集指令。


## 编译

```
mkdir build
cd build
cmake ..
make
```

## 使用方法

```
./Sim riscv-elf-file-name [-v] [-s] [-d] [-b strategy]
```
Parameters:

1. `-v` for verbose output, can redirect output to file for further analysis
2. `-s` for single step execution, often used in combination with `-v`.
3. `-d` for creating memory and register history dump in `dump.txt`
4. `-b` for branch perdiction strategy (default `BTFNT`), accepted parameters are `AT`, `NT`, `BTFNT` and `BPB`.
   * AT: Always Taken
   * NT: Always Not Taken
   * BTFNT: Back Taken Forward Not Taken
   * BPB: Branch Prediction Buffer (2 bit history information)

There are a number of reference RISC-V ELFs and its corresponding assembly code in the `riscv-elf/` folder.

## 文档

相关报告在`docs`文件夹下

同时， 你可以从我的[博客](https://blog.ruixiaolu.com/archives/2020/04/11/59.html)上获得更好的阅读体验。
