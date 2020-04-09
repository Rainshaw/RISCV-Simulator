echo "Building RISC-V ELFs..."
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/helloworld.c test/lib.c -o riscv-elf/others/helloworld.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/test_arithmetic.c test/lib.c -o riscv-elf/others/test_arithmetic.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/test_syscall.c test/lib.c -o riscv-elf/others/test_syscall.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/test_branch.c test/lib.c -o riscv-elf/others/test_branch.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/quicksort.c test/lib.c -o riscv-elf/others/quicksort.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/matrixmulti.c test/lib.c -o riscv-elf/others/matrixmulti.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/ackermann.c test/lib.c -o riscv-elf/others/ackermann.riscv
~/riscv/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/moshou4.cpp test/lib.c -o riscv-elf/others/moshou4.riscv

echo "Automatically dumping ELFs for reference"
cd riscv-elf/others
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D helloworld.riscv > helloworld.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D test_arithmetic.riscv > test_arithmetic.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D test_syscall.riscv > test_syscall.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D test_branch.riscv > test_branch.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D quicksort.riscv > quicksort.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D matrixmulti.riscv > matrixmulti.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D ackermann.riscv > ackermann.s
~/riscv/riscv64i/bin/riscv64-unknown-elf-objdump -D moshou4.riscv > moshou4.s
cd ../..