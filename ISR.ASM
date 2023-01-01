ASSUME DS:DATA, CS:CODE, SS:STACK
DATA SEGMENT
STR2 DB "Test that registers return to previous values", 0AH, 0DH, '$'
MSG1 DB "Press any key to complete execution", 0AH, 0AH, 0DH, '$'

REGA DB "AX: ", '$'
REGB DB " BX: ", '$'
REGC DB " CX: ", '$'
REGD DB " DX: ", '$'
VARA DW 1 DUP(0)
VARB DW 1 DUP(0)
VARC DW 1 DUP(0)
VARD DW 1 DUP(0)

REGSI DB "SI: ", '$'
REGDI DB " DI: ", '$'
REGSP DB " SP: ", '$'
REGBP DB " BP: ", '$'
VARSI DW 1 DUP(0)
VARDI DW 1 DUP(0)
VARSP DW 1 DUP(0)
VARBP DW 1 DUP(0)

REGCS DB "CS: ", '$'
REGES DB " ES: ", '$'
REGSS DB " SS: ", '$'
REGDS DB " DS: ", '$'
VARCS DW 1 DUP(0)
VARES DW 1 DUP(0)
VARSS DW 1 DUP(0)
VARDS DW 1 DUP(0)

NEWLINE DB " ", 0AH, '$' 

DATA ENDS
STACK SEGMENT
STACKDATA DB 100 DUP(?)
STACK ENDS
CODE SEGMENT
START:
        MOV AX, DATA
        MOV DS, AX
        MOV AX, STACK
        MOV SS, AX
        XOR AX, AX
        MOV ES, AX
        MOV BX, OFFSET SINGLESTEP
        MOV ES:[04], BX
        MOV ES:[06], CS

        LEA DX, STR2
        INT 01H
        MOV AH, 09H
        INT 01H
        INT 21H
        

        MOV AH, 4CH
        INT 21H

SINGLESTEP:
        PUSH AX
        PUSH BX
        PUSH CX
        PUSH DX
        PUSH BP
        PUSH SP
        PUSH SI
        PUSH DI
        PUSH DS
        PUSH ES

        POP VARES
        POP VARDS
        POP VARDI
        POP VARSI
        POP VARSP
        POP VARBP
        POP VARD
        POP VARC
        POP VARB
        POP VARA

        PUSH AX
        PUSH BX
        PUSH CX
        PUSH DX
        PUSH BP
        PUSH SP
        PUSH SI
        PUSH DI
        PUSH DS
        PUSH ES


        LEA DX, REGA
        MOV AH, 09H
        INT 21H
        MOV AX, VARA
        CALL PRINT

        LEA DX, REGB
        MOV AH, 09H
        INT 21H
        MOV AX, VARB
        CALL PRINT

        LEA DX, REGC
        MOV AH, 09H
        INT 21H
        MOV AX, VARC
        CALL PRINT

        LEA DX, REGD
        MOV AH, 09H
        INT 21H
        MOV AX, VARD
        CALL PRINT
        LEA DX, NEWLINE
        MOV AH, 09H
        INT 21H


        LEA DX, REGSI
        MOV AH, 09H
        INT 21H
        MOV AX, VARSI
        CALL PRINT

        LEA DX, REGDI
        MOV AH, 09H
        INT 21H
        MOV AX, VARDI
        CALL PRINT

        LEA DX, REGSP
        MOV AH, 09H
        INT 21H
        MOV AX, VARSP
        CALL PRINT

        LEA DX, REGBP
        MOV AH, 09H
        INT 21H
        MOV AX, VARBP
        CALL PRINT
        LEA DX, NEWLINE
        MOV AH, 09H
        INT 21H


        LEA DX, REGCS
        MOV AH, 09H
        INT 21H
        MOV AX, CS
        CALL PRINT

        LEA DX, REGES
        MOV AH, 09H
        INT 21H
        MOV AX, VARES
        CALL PRINT

        LEA DX, REGSS
        MOV AH, 09H
        INT 21H
        MOV AX, SS
        CALL PRINT

        LEA DX, REGDS
        MOV AH, 09H
        INT 21H
        MOV AX, VARDS
        CALL PRINT
        LEA DX, NEWLINE
        MOV AH, 09H
        INT 21H


        LEA DX, MSG1
        MOV AH, 09H
        INT 21H

        MOV AH, 07H
        INT 21H

        POP ES
        POP DS
        POP DI
        POP SI
        POP SP
        POP BP
        POP DX
        POP CX
        POP BX
        POP AX

        IRET

PRINT PROC
    MOV CX,4        
    PRINT_DIGIT:
        ROL AX, 1
        ROL AX, 1
        ROL AX, 1
        ROL AX, 1
        MOV DL, AL
        AND DL, 0FH
        ADD DL, '0'
        CMP DL, '9'
        JBE OK
        ADD DL, 7
    OK:            
        PUSH AX    
        MOV AH, 02H    
        INT 21H
        POP AX     
        LOOP PRINT_DIGIT
        RET
PRINT ENDP
CODE ENDS
END START
