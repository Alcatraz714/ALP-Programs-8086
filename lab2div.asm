code segment 
assume cs:code
mov ax, 50FFh
mov bx, 4044h
div ax
hlt
code ends
end