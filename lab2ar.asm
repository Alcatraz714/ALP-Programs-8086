data segment
array db 50H, 30H, 2AH, 1FH, 05H
data ends
code segment
assume cs:code, ds:Data
start:
Mov ax,data
Mov ds,ax
Mov cl,05h
Mov al,00h
Rpt:mov al, array[si]
inc si
loop Rpt
HLT
code ends
end