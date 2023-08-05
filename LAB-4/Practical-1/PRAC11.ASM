DATA SEGMENT
    PRIMENUMBERS DW 50 DUP(?)
    COUNTER DW 2FH
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    MOV AX,DATA
    MOV DS,AX
    MOV BX, WORD PTR COUNTER
    LEA DI,PRIMENUMBERS
    MOV AL,02
    MOV [DI],AL
    ADD DI,1
    MOV AL,03
    MOV [DI],AL
    MOV BP,4
    OUTERLOOP :
        MOV CX,02
        MOV SI,BP
        SUB SI,2
        INNERLOOP :
            MOV DX,00
            MOV AX,BP
            DIV CX
            XOR DX,00H
            JZ NOTPRIME
            INC CX
            DEC SI
            JZ PRIME
            JNZ INNERLOOP
        NOTPRIME:
            INC BP
            DEC BX
            JZ EXIT
            JMP OUTERLOOP
        PRIME:
            ADD DI,1
            MOV [DI],BP
            INC BP
            DEC BX
            JZ EXIT
            JMP OUTERLOOP
    EXIT:
        INT 03
CODE ENDS
END
