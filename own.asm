                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
A DB 03H
B DB 05H
C DB 02H
NUM DW 0000H
DEN DW 0000H
RES DW 0000H
DATA ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
        MOV AX,DATA
        MOV DS,AX
        MOV AL,B
        MUL AL
        MOV CX,AX
        MOV AL,A
        MOV BL,C
        MUL BL
        MOV BX,0004H
        MUL BX
        SUB CX,AX
        MOV NUM,CX
        MOV AL,A
        MOV BL,02H
        MUL BL
        MOV DEN,AX
        MOV DX,0000H
        MOV AX,NUM
        MOV BX,DEN
        DIV BX
        MOV RES,AX
CODE ENDS
END
