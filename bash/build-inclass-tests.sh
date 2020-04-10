echo "Building RISC-V ELFs..."
cd ..
dir2=riscv-elf/rv64im/inclass
mkdir $dir2 -p

cd test-inclass || exit
dir=~/riscv/riscv64im/bin

rvgcc=$dir/riscv64-unknown-elf-gcc
flags='-Wa,-march=rv64im'

$rvgcc $flags add.c -o ../$dir2/add.riscv
$rvgcc $flags double-float.c -o ../$dir2/double-float.riscv
$rvgcc $flags mul-div.c -o ../$dir2/mul-div.riscv
$rvgcc $flags n!.c -o ../$dir2/n!.riscv
$rvgcc $flags qsort.c -o ../$dir2/qsort.riscv
$rvgcc $flags simple-function.c -o ../$dir2/simple-function.riscv

echo "Automatically dumping ELFs for reference"
cd ../$dir2 || exit
rvdump=$dir/riscv64-unknown-elf-objdump

$rvdump -D add.riscv > add.s
$rvdump -D double-float.riscv > double-float.s
$rvdump -D mul-div.riscv > mul-div.s
$rvdump -D n!.riscv > n!.s
$rvdump -D qsort.riscv > qsort.s
$rvdump -D simple-function.riscv > simple-function.s
cd ../..