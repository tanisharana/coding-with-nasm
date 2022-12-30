global matparmul
section .text
matparmul:
    xor rax, rax;
    mov r14, rdi;
    mov r15, rsi;
    mov r12, rdx;
    mov r13, rcx;
    mov r10, $0;
next1:
    cmp r10, r13;
    je finish;
    mov r9, $0;
next2:
    cmp r9, r13;
    je nextinc1;

    mov rax, r10;
    imul r13;
    add rax, r9;
    mov rdi, [r14 + rax*8];
    mov rax, r9;
    imu1 r13;
    add r15, rax;
    mov rsi, r15;
    

    inc r9;
    jmp next2;
nextinc1:
    inc r10;
    jmp next1;
finish:
    ret