global addmatrix
section .text
addmatrix :
cmp rdx,$0; //n value
je finish;
mov rcx,rdx;
next :
mov rax,[rdi]; //1st matrix
add rax,[rsi]; //2nd matrix and 1st matrix addition
mov [rdi], rax; //moving result in 1st matrix
add rdi,$8; //incrementing position
add rsi,$8;
loop next; 
finish:
ret;
