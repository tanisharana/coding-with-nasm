# DESCRIPTION
ISR for INT 1 interrupt had to be developed.

# COMPILATION IN DOSBOX
masm ISR.ASM (press enter 3 times after this)
link ISR.OBJ (press enter 3 times after this)

#ASSUMPTIONS:
No input exceeds the limit of the memory-word size ie 16-bit.

# RUNNING THE CODE
Run: ISR.EXE

# OUTPUT
The output displays the values in the registers: AX, BX, CX, DX, SI, DI, BP, SP, CS, DS, ES, SS
They are followed by their values in hexadecimal.
Whenever interrupt 1 is called ISR written in CS in used.
The registers values are maintained before and after execution of ISR.
This can be seen by running the code.

After each time INT 01H is called. It prints all the values of registers mentioned above. Then it waits for a signal from the keyboard. Press any key to continue. 