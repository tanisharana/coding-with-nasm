global matMul
section .text
matMul: 
      mov rbx,rdx;
	
	mov rax,8;
	imul rcx;
	mov r8,rax;
	
	mov r11, rdi;
	mov r12, rsi;
	mov r13,rsi;
	
	mov rdx,rbx;

      mov rbx,0;
	mov r9, rcx;
	mov r10,rcx;
	mov r14, rcx;
	cmp rcx, 0; 
	je finish;
	
next: 
	mov rax,[rdi];
	imul byte [rsi];
	add rbx,rax;
	dec r9;	
	cmp r9,$0;
	je next1;
	
	add rdi,$8;
	add rsi, r8;
	
	jmp next;
      
next1:
	mov r9,rcx;
	mov [rdx],rbx;
	mov rbx,$0;
	add rdx,$8;
	dec r10;
	cmp r10,0;
	je next2;


	mov rdi,r11;
	mov rsi,r12;
	add rsi,$8;
	mov r12,rsi;

	jmp next;


next2:
	dec r14;
	cmp r14,0;
	je finish;
	
	mov r10,rcx;
	mov rdi,r11;
	
	add rdi,r8;
	mov r11,rdi;
	mov rsi,r13;
	mov r12,rsi;
	
	jmp next;
	
	
finish:
	ret 
