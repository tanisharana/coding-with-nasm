global gcd
section .text
gcd: 
	xor rax,rax;
      xor rbx,rbx;
      xor r8,r8;
      xor r9,r9;
      xor r10,r10;
      mov r8,[rdi];
      
	cmp rsi, 0; 
	je finish;
     
outer_loop:
	cmp rsi, 0;
      je finish;
      dec rsi;
      mov rax, r8;
      mov rbx, [rdi+8];
      add rdi, 8;
      mov rcx,0;

outer_loop1_initialise:
      inc rcx;
      mov rax,r8;
      mov r9,rax;
      mov r10,[rdi];
      mov rbx, [rdi];
      jmp inner_loop;

inner_loop_initialise:
      inc rcx;
      mov rax,r9;
      mov rbx,r10;
                      
inner_loop:  
       
      cmp rcx,rax;
      jg outer_loop;
     
      cmp rcx,rbx;
      jg outer_loop;
      
      mov r9,rax;
      mov r10,rbx;
      mov rdx,$0;
      idiv rcx;          
      cmp rdx,0;
      jne inner_loop_initialise;      calculating process
      mov rax,rbx;
      mov rdx,$0;
      idiv rcx;
      cmp rdx,0;
      jne inner_loop_initialise;
      jmp ans;       
ans: 
      mov r8, rcx;
      jmp inner_loop_initialise;   
finish:
      mov rax,r8;
	ret 
