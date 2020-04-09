echo "Building RISC-V ELFs..."
cd test-inclass
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -Wa,-march=rv64i add.c -o ../riscv-elf/inclass/add.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -Wa,-march=rv64i double-float.c -o ../riscv-elf/inclass/double-float.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -Wa,-march=rv64i mul-div.c -o ../riscv-elf/inclass/mul-div.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -Wa,-march=rv64i n!.c -o ../riscv-elf/inclass/n!.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -Wa,-march=rv64i qsort.c -o ../riscv-elf/inclass/qsort.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -Wa,-march=rv64i simple-function.c -o ../riscv-elf/inclass/simple-function.riscv
echo "Automatically dumping ELFs for reference"
cd ../riscv-elf/inclass
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D add.riscv > add.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D double-float.riscv > double-float.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D mul-div.riscv > mul-div.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D n!.riscv > n!.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D qsort.riscv > qsort.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D simple-function.riscv > simple-function.s
cd ../..