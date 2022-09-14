global prime
section .text
prime: 
	xor rax,rax;
      xor rbx,rbx;
      xor rcx,rcx;
    
	cmp rsi, 0; 
	je finish;
outer_loop:
	cmp rsi, 0;
      je finish;
      dec rsi;
	mov rax, [rdi];
      add rdi, $8; 

      cmp rax,0;
      je count;
      cmp rax,1; 
      je count;
      cmp rax,2; 
      je count;
      
      mov rbx,2;
inner_loop:
      
      
      mov rax,[rdi-8];
      mov rdx,$0;
      idiv rbx;
             
      cmp rdx,0;      
      je outer_loop;
      inc rbx;
      mov rax,[rdi-8];
      cmp rbx,rax;
      je count;

      jmp inner_loop;
 count: 
      inc rcx;
      jmp outer_loop;     
      
finish:
      mov rax,rcx;
	ret 

