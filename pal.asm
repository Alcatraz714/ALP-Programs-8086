data segment
msg1 db "Rishi$"
msg2 db "The Length of the string is $"
data ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,0000
mov cx,0000
lea si,msg1
mov al,"$"
loop1:
mov ah,[si]
cmp al,ah
je ter
inc cx
inc si
jmp loop1
ter:
mov dx,offset msg2
mov ah,09h
int 21h

mov dx,0000
mov dl,cl
add dl,30h
mov ah,02h
int 21h
mov ax,4c00h
int 21h
hlt
code ends
end start