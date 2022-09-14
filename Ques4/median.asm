global median
section .text
median:
      mov rax,rsi;
      mov rbx,2;
      div rbx;
      mov rdx, rax;
      mul rdi;
      
   
      
      
      
      
      
finish:
      ret