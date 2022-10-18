global natural
section .txt
natural :
cmp rdi,$1;
jg next;
mov rax,$1;
ret;
next:
push rdi;
dec rdi;
call natural;
pop rbx;
add rbx,rdi;
ret;