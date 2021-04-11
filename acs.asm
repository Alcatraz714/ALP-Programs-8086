data segment
arr1 db 0020h,0050h,0030h,0060h,0045h
count db 05h
data ends
code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax
MOV cl,05h
mov si, offset arr1
rpt:
mov al,[si]
cmp al,[si+1]
jnl rpt1
inc si
loop rpt
rpt1:
xchg [si+1],al
xchg al,[si]
dec cl
hlt
code ends
end