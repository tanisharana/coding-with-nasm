global even
section .text
even: 
	xor rax,rax;
      xor rbx,rbx;
	cmp rsi, 0; 
	je finish;
next:
	cmp rsi, 0;
      je finish;
      dec rsi;
      add rdi, 8;
	mov rbx, [rdi-8];
      AND rbx,1;
      cmp rbx,1;
      je next;
      inc rax;
      jne next;
      
finish:
	ret 
