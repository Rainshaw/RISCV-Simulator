mkdir build
cd build
cmake ..
make

./Sim ../riscv-elf/inclass/add.riscv
./Sim ../riscv-elf/inclass/mul-div.riscv
./Sim ../riscv-elf/inclass/n!.riscv
./Sim ../riscv-elf/inclass/qsort.riscv
./Sim ../riscv-elf/inclass/simple-function.riscv

./Sim ../riscv-elf/others/ackermann.riscv
./Sim ../riscv-elf/others/helloworld.riscv
./Sim ../riscv-elf/others/matrixmulti.riscv
./Sim ../riscv-elf/others/quicksort.riscv
./Sim ../riscv-elf/others/test_arithmetic.riscv
./Sim ../riscv-elf/others/test_branch.riscv
#./Sim ../riscv-elf/others/moushou4.riscv

