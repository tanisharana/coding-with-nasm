gcc -S matmul.c
as matmul.s -o matmul.o
nasm -felf64 foo.asm
gcc matmul.o foo.o -o output1
./output1