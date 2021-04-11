data segment
mat1 dw 0022h,0011h,0020h,0033h,0016h,0011h,0013h
mat2 dw 0020h,0013h, 0010h,0023h,0015h,0042h,0031h
res dw 7 dup(0)
data ends
code segment
assume ds:data,cs:code
start:
mov cx,07h
mov ax,data
mov ax,data
mov ds,ax
lea si,mat1
lea di,mat2
lea bx,res
rpt:
mov ax,[si]
add ax,[di]
mov [bx],ax
add si,2
add di,2
add bx,2
loop rpt
hlt
code ends
end