echo "Building RISC-V ELFs..."
cd ..
dir2=riscv-elf/rv64im/others
mkdir $dir2 -p

dir=~/riscv/riscv64im/bin
rvgcc=$dir/riscv64-unknown-elf-gcc

flags='-Wa,-march=rv64im'
$rvgcc $flags test/helloworld.c test/lib.c -o $dir2/helloworld.riscv
$rvgcc $flags test/test_arithmetic.c test/lib.c -o $dir2/test_arithmetic.riscv
$rvgcc $flags test/test_syscall.c test/lib.c -o $dir2/test_syscall.riscv
$rvgcc $flags test/test_branch.c test/lib.c -o $dir2/test_branch.riscv
$rvgcc $flags test/quicksort.c test/lib.c -o $dir2/quicksort.riscv
$rvgcc $flags test/matrixmulti.c test/lib.c -o $dir2/matrixmulti.riscv
$rvgcc $flags test/ackermann.c test/lib.c -o $dir2/ackermann.riscv

echo "Automatically dumping ELFs for reference"

cd $dir2
rvdump=$dir/riscv64-unknown-elf-objdump

$rvdump -D helloworld.riscv > helloworld.s
$rvdump -D test_arithmetic.riscv > test_arithmetic.s
$rvdump -D test_syscall.riscv > test_syscall.s
$rvdump -D test_branch.riscv > test_branch.s
$rvdump -D quicksort.riscv > quicksort.s
$rvdump -D matrixmulti.riscv > matrixmulti.s
$rvdump -D ackermann.riscv > ackermann.s
cd ../..