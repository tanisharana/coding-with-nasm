global mode
section .text
mode: 
      mov r8, rsi;
      mov rdx,rdi;
	cmp rsi, $0; 
	je end;
outer_loop:
      xor rcx,rcx;
      not rcx;
      cmp rsi,$0;
      je end;
      mov rdi,rdx;
      dec rsi;
inner_loop:
      inc rcx;
      mov rax,[rdi];
      add rdi,$8;
      mov rbx, [rdi];
      cmp rcx, rsi;
      jge outer_loop;
      cmp rax,rbx;
      jle inner_loop;
      xchg rax,rbx;
      mov [rdi],rbx;
      mov [rdi-8],rax;
      jmp inner_loop;

end:
      mov rbx,0;
      mov rcx,1;
      mov r10,1;//
      mov r9,0;
      mov rdi,rdx;
      mov rdx,0;
      mov r11, [rdi];//
      mov rsi,r8;
      mov r8,1;
      mov rax,[rdi];
      cmp rsi,$0;
      je finish;
ans:
      dec rsi;
      cmp rsi,$0;
      je finish;
      add rdi,$8;
      mov rdx, [rdi-8];
      mov rbx, [rdi];
      cmp rdx,rbx;
      jne comp;
      inc rcx;
      jmp ans;
comp: 
      cmp rcx,r8;
      jle ans;
      mov r8,rcx;
      mov rcx,1;
      mov rax,[rdi-8];
      jmp ans;
finish: 
      ret



      
















	