; ALP to find the maximum element
; rdi (1st-arg), rsi (2nd-arg)
global maxN
section .text
maxN: 
	mov rax, [rdi]; 
	cmp rsi, $0 ; 
	je finish ;
	dec rsi;
next:
	add rdi, $8;
	cmp rax, [rdi];
	jg trans;
	mov rax, [rdi];
trans:	dec rsi; 	
	cmp rsi, $0 ;
	jne next;

finish:
	ret 
