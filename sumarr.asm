global sumarr
section .text
sumarr:
cmp rsi,$0;
jg next;
mov rax, $0;
ret;

next:
mov rdx, [rdi];
push rdx;
add rdi, $8;
dec rsi;
call sumarr;
pop rbx;
add rax, rbx;
ret;