global factorial
section .text
factorial : 
             cmp rdi,$0;
             jg next;
             mov rax $1;
             ret;
next:
             push rdi;
             dec rdi;
             call factorial;
             pop rbx;
             imul rbx;
             ret;
