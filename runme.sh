mkdir build
cd build || exit
cmake ..
make

dir=riscv-elf/rv64im

./Sim ../$dir/inclass/add.riscv
./Sim ../$dir/inclass/mul-div.riscv
./Sim ../$dir/inclass/n!.riscv
./Sim ../$dir/inclass/qsort.riscv
./Sim ../$dir/inclass/simple-function.riscv

./Sim ../$dir/others/ackermann.riscv
./Sim ../$dir/others/helloworld.riscv
./Sim ../$dir/others/matrixmulti.riscv
./Sim ../$dir/others/quicksort.riscv
./Sim ../$dir/others/test_arithmetic.riscv
./Sim ../$dir/others/test_branch.riscv

#./CacheSim ../cache-trace/1.trace
#./CacheSim ../cache-trace/2.trace
#./CacheSim ../cache-trace/01-mcf-gem5-xcg.trace
#./CacheSim ../cache-trace/02-stream-gem5-xaa.trace


#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 1
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 2
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 4
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 8
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 16
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 32
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 64
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 128
#./CacheYouhuaSim ../cache-trace2/01-mcf-gem5-xcg.trace 10 256
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 1
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 2
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 4
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 8
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 16
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 32
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 64
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 128
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10 256
#./CacheYouhuaSim ../cache-trace2/02-stream-gem5-xaa.trace 10