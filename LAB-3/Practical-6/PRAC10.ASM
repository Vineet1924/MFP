DATA SEGMENT
    ARRAY DW 05H,15H,25H,35H,45H
    ANS DW ?
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    MOV AX,DATA
    MOV DS,AX
    LEA SI,ARRAY
    MOV CX,05H
    MOV AX,00H
    MYLOOP :
        ADD AX,[SI]
        ADD SI,2
        DEC CX
        JNZ MYLOOP
    MOV WORD PTR ANS,AX
    INT 03
CODE ENDS
END

