data segment
res dw 00h
data ends
code segment
assume ds:data, cs:code
start:
mov ax,data
mov ds,ax
mov cl,09h
lea bx,res
mov ax,01h
mov dx,00h
fib:
add [bx],ax
add ax,dx
mov dx,[bx]
inc bx
loop fib
hlt
code ends
end