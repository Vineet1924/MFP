DATA SEGMENT 
    NUM1 DW 16
    NUM2 DW 04
    ANS DW ?
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    MOV AX,DATA
    MOV DS,AX
    MOV AX,WORD PTR NUM1
    NEG AX
    IMUL WORD PTR NUM2
    MOV WORD PTR ANS,AX
    INT 03
CODE ENDS
END