DATA SEGMENT
STRING1 DB 10H,12H,14H,16H,18H,20H,22H,24H,26h
DATA ENDS
 
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
MOV DS,AX
MOV CH,08H
 
RPT: MOV CL,08H
LEA SI,STRING1
 
RPT1: MOV AL,[SI]
MOV BL,[SI+1]
CMP BL,AL
JC RPT2
MOV DL,[SI+1]
XCHG [SI],DL
MOV [SI+1],DL
 
RPT2: INC SI
DEC CL
JNZ RPT1
DEC CH
JNZ RPT

HLT
CODE ENDS
END START