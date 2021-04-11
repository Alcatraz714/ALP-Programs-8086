data segment
msg1 db 'Rishi'
data ends
 
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov sp,0d000h
mov bx,offset msg1
mov cx,0007h
move:
mov ah,02h
mov dl,[bx]
int 21h
inc bx
dec cx
jnz move
mov ax,4c00h
hlt
code ends
end start