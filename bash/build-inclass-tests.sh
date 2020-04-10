echo "Building RISC-V ELFs..."

mkdir riscv-elf/inclass -p
cd test-inclass || exit
dir=~/riscv/riscv64im/bin

rvgcc=$dir/riscv64-unknown-elf-gcc
flags='-Wa,-march=rv64im'

$rvgcc $flags add.c -o ../riscv-elf/inclass/add.riscv
$rvgcc $flags double-float.c -o ../riscv-elf/inclass/double-float.riscv
$rvgcc $flags mul-div.c -o ../riscv-elf/inclass/mul-div.riscv
$rvgcc $flags n!.c -o ../riscv-elf/inclass/n!.riscv
$rvgcc $flags qsort.c -o ../riscv-elf/inclass/qsort.riscv
$rvgcc $flags simple-function.c -o ../riscv-elf/inclass/simple-function.riscv

echo "Automatically dumping ELFs for reference"
cd ../riscv-elf/inclass || exit
rvdump=$dir/riscv64-unknown-elf-objdump

$rvdump -D add.riscv > add.s
$rvdump -D double-float.riscv > double-float.s
$rvdump -D mul-div.riscv > mul-div.s
$rvdump -D n!.riscv > n!.s
$rvdump -D qsort.riscv > qsort.s
$rvdump -D simple-function.riscv > simple-function.s
cd ../..