DATA SEGMENT
    STRING DB "HELLOWORLD$"
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    MOV AX,DATA
    MOV DS,AX

    mov al,21h
    mov bl,12h
    xchg al,bl
    sub al,bl
    jnc next
    mov cl,0ffh
    jmp exit
    next:
    mov cl,00h
    exit:
    int 03


CODE ENDS
END