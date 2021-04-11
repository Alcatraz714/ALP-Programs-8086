code segment 
assume cs:code
mov ax, 50FFh
mov bx, 4044h
sub ax, bx
hlt
code ends
end