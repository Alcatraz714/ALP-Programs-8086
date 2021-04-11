code segment
assume cs:code
mov ax, 06h 
mov bx, 02h 
div bx
hlt 
code ends 
end