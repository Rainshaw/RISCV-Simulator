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

./CacheSim ../cache-trace2/1.trace
./CacheSim ../cache-trace2/2.trace
./CacheSim ../cache-trace2/01-mcf-gem5-xcg.trace
./CacheSim ../cache-trace2/02-stream-gem5-xaa.trace

