global odd
section .text
odd: 
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
      jne next;
      inc rax;
      jmp next;
      
finish:
	ret 
