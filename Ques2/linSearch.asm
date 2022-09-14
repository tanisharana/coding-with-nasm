; rdi (1st-arg), rsi (2nd-arg), rdx (3rd-arg), rcx (4th-arg) 
; successful case returns the position of key
; unsuccessful case returns -1
global linSearch ; This is a linear search program
section .text
linSearch:
		xor rax, rax;
		not rax 
		mov rcx, $0 ; rsi contains 2nd-arg
		cmp rsi, $0 ;
		jle finish ;
backward: 	
		inc rcx;	
		cmp rdx, [rdi]; key is in rdx
		je forward;
		add rdi, $8;
		cmp rcx, rsi
		jl  backward;
		jmp finish;
forward:   
		mov rax, rcx;
finish: 	
		ret
