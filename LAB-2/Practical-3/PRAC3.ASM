DATA SEGMENT    
    NUM1 DD 11223344H
    NUM2 DD 11223344H
    SUM DD ?
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    MOV AX,DATA
    MOV DS,AX
    MOV AX,WORD PTR NUM1
    ADD AX,WORD PTR NUM2 
    MOV BX,WORD PTR 2[NUM1]
    ADC BX,WORD PTR 2[NUM2]
    MOV WORD PTR SUM,AX
    MOV WORD PTR 2[SUM],BX
    INT 03
CODE ENDS
END