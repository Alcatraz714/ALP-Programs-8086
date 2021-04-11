data segment
bcd dw 12h
data ends    
code segment
assume cs:code,ds:data
start:
mov ax, data
mov ds, ax
mov ax,bcd
and ax, 0fh
mov bx, ax
mov ax, bcd
and ax, 0f0h
mov cl,04h
ror al,cl

mov cx, 0ah
mul cx
add ax, bx
hlt
code ends
end start