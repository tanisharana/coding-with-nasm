global length
section .text
length:
	xor rax, rax;
	xor rbx, rbx;
	xor rcx, rcx;
	mov r13, rdi;
	mov cl, [r13];
loop1:
	cmp cl, bl;
	jz finish;
	inc al;
	inc r13;
	mov cl, [r13];
	jmp loop1;
finish: 
	ret;
