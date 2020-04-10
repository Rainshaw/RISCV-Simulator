echo "Building RISC-V ELFs..."
cd ..
mkdir riscv-elf/others -p
dir=~/riscv/riscv64im/bin
rvgcc=$dir/riscv64-unknown-elf-gcc

flags='-Wa,-march=rv64im'
$rvgcc $flags test/helloworld.c test/lib.c -o riscv-elf/others/helloworld.riscv
$rvgcc $flags test/test_arithmetic.c test/lib.c -o riscv-elf/others/test_arithmetic.riscv
$rvgcc $flags test/test_syscall.c test/lib.c -o riscv-elf/others/test_syscall.riscv
$rvgcc $flags test/test_branch.c test/lib.c -o riscv-elf/others/test_branch.riscv
$rvgcc $flags test/quicksort.c test/lib.c -o riscv-elf/others/quicksort.riscv
$rvgcc $flags test/matrixmulti.c test/lib.c -o riscv-elf/others/matrixmulti.riscv
$rvgcc $flags test/ackermann.c test/lib.c -o riscv-elf/others/ackermann.riscv
#~/riscv/riscv64im/bin/riscv64-unknown-elf-g++ -Wa,-march=rv64im test/moshou4.cpp test/lib.c -o riscv-elf/others/moshou4.riscv

echo "Automatically dumping ELFs for reference"

cd riscv-elf/others
rvdump=$dir/riscv64-unknown-elf-objdump
$rvdump -D helloworld.riscv > helloworld.s
$rvdump -D test_arithmetic.riscv > test_arithmetic.s
$rvdump -D test_syscall.riscv > test_syscall.s
$rvdump -D test_branch.riscv > test_branch.s
$rvdump -D quicksort.riscv > quicksort.s
$rvdump -D matrixmulti.riscv > matrixmulti.s
$rvdump -D ackermann.riscv > ackermann.s
#$rvdump -D moshou4.riscv > moshou4.s
cd ../..