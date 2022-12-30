global gemm2
extern foo
section .text
gemm2:
    mov r11, $0;
    mov r8, rdx;
next1:
  cmp  r11,  rcx;
  je finish;
  mov r12, $0;
next2:
  cmp r12, rcx;
  je next1inc;
  mov rbx, $8;
  
  inc r12;
  jmp next2;
next1inc:
   inc r11;
   jmp next1;
finish:
    ret;
