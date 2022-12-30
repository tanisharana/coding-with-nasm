global valueString
section .text
valueString:
    xor r8,r8;      base address
    xor r9,r9;      current min
    xor r10,r10;    current
    xor r11,r11;    loop1 var for base address
    xor r12,r12;    loop2 var for checking first lexico string
    xor r13,r13;    loop3 var for char in string
    xor rbx,rbx;
    xor rax,rax;
    xor rcx,rcx;    used for \0 value
    xor rdx,rdx;    for imul incase error
    mov r8,rdi;

loop1:
    cmp r11,rsi;
    je finish;
    mov r8,rdi;     update base add
    mov rax,50;
    imul r11;
    add r8,rax;
    xor rax,rax;
    mov r9,r8;      assume first lexico string is the base add
    mov r12,r11;    start checking from the next string for first lexico
    inc r12;
    call loop2;
    xor r12,r12;
    call swapping;
    inc r11;
    jmp loop1;

loop2:
    cmp r12,rsi;
    je finish;
    mov r10,rdi;    current pointer
    mov rax,50;
    imul r12;
    add r10,rax;
    xor rax,rax;
    xor r13,r13;    for first character to 50th character(string size)
    call loop3;
    inc r12;
    jmp loop2;

loop3:
    cmp r13,50;
    je finish;
    mov al,[r9+r13];    checking every character from both strings.
    mov bl,[r10+r13];
    cmp al,cl;          ->if first (min) string reaches end of line char
    je finish;          either both strings are same or first string is lexicographically first
    cmp bl,cl;          ->if second (current) reaches end of line and first didnt. second is the new min
    je swap;            i.e. second is lexicographically smaller than first
    cmp al,bl;          ->if a character from first is smaller than a character from second
    jl finish;          that means first is lexicographically smaller
    cmp al,bl;          ->if a character from second is smaller than first
    jg swap;            that means second is lexico smaller
    inc r13;            
    jmp loop3;          if no if statement satisfied, both characters are equal and check next

swap:
    mov r9,r10;         in case current is smaller than min, replace min pointer with current pointer
    jmp finish;

swapping:
    cmp r12,50;         exchanging the literal characters of base string and min string.
    je finish;          if base string itself is min string, then min pointer wont change
    mov al,[r8+r12];        or if there is only one leftover string then it will swap with itself
    mov bl,[r9+r12];
    xchg al,bl;
    mov [r8+r12],al;
    mov [r9+r12],bl;
    inc r12;
    jmp swapping;

finish: 
ret;