global expr
section .text
expr:
    xor rax, rax;
    xor rdx,rdx;
    mov rcx,rdi;

outer_loop:
    xor rdx,rdx;
    dec rcx;
    cmp rcx,$0;
    jl next;
    
loop:
    inc rdx;
    add rax, rdi;
    cmp rdx, rdi;
    jl loop;
    jmp outer_loop;
 
next: 
    mov rbx,rax;
    xor rax,rax;
    mov rcx,rsi;
    xor rdx,rdx;

outer_loop1:
    xor rdx,rdx;
    dec rcx;
    cmp rcx,$0;
    jl finish;
    
loop1:
    inc rdx;
    add rax, rsi;
    cmp rdx, rsi;
    jl loop1;
    jmp outer_loop1;

finish:
    add rax,rbx;
    ret
