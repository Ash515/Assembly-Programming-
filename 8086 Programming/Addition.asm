CODE SEGMENT
ASSUME CS: CODE,DS:CODE
ORG 1000H
MOV SI,2000H 
MOV CL,00H 
MOV AX,[SI] 
MOV BX,[SI+02H]
ADD AX,BX
JNC LOOP 
INC CL 
MOV [SI+04H],AX
MOV [SI+06H],CL 
MOV AH,4CH
INT 21H 
CODE ENDS 
END