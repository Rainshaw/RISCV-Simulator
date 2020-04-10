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


