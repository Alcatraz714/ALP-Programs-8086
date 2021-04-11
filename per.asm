Assume CS:Code, DS:Data  
Data Segment 
n dw 05H  
r dw 01H  
org 2500H  
Num dw ?  
d dw ?  
Perm dw ?  
Data Ends 
Code Segment  
org 2000H 
FACTORIAL PROC NEAR  
MOV CX,AX  
MOV AX,01H  
L1: 
    MUL CX  
    DEC CX  
    JNZ L1  
    RET 
FACTORIAL ENDP 
 
START: 
    MOV AX,Data  
    MOV DS,AX 
    MOV SI,Offset n 
    MOV AX,[SI] 
    CALL FACTORIAL  
    MOV Num,AX 
    MOV SI,Offset n  
    MOV AX,[SI] 
    MOV SI,Offset r  
    MOV BX,[SI]  
    SUB AX,BX         
    CALL FACTORIAL  
    MOV BX,AX 
    MOV d,BX  
    MOV AX,Num 
    DIV BX   
    MOV Perm,AX  
    HLT 
    Code ENDS  
    END START 
