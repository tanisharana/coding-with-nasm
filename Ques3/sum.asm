global sum

section .text

sum:
    xor rax, rax;
    cmp rsi, $0
    je finish
    mov rcx, rdi;

update:
    add rax, rdi;
    imul rdi, rcx;
    dec rsi;
    cmp rsi, $0
    jne update

finish: 
    inc rax
    ret