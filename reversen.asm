global reversen
section .text
reversen:
	mov rcx,rsi;
	mov r14,rdi;
	cmp rsi,0;
	jz finish;
looper:
	cmp rcx,0;
	jz postloop;
	dec rcx;
	xor rax,rax;
	mov al,[r14];
	push rax;
	inc r14;
	jmp looper;
postloop:
	mov rcx,rsi;
	mov r14,rdi;
reversed:
	cmp rcx,0;
	jz finish;
	dec rcx;
	xor rax,rax;
	pop rax;
	mov [r14],al;
	inc r14;
	jmp reversed;
finish: ret;
 
