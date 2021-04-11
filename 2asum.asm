data segment
mat1 dw 0022h,0011h,0020h,0033h,0016h,0011h,0013h
mat2 dw 0020h,0013h, 0010h,0023h,0015h,0042h,0031h
res dw 00h
data ends
code segment
assume ds:data, cs:code
start:
mov ax,Data
mov ds,ax
mov cl,07
lea si,mat1
lea di,mat2
lea bx,res
rpt:
mov ax,[si]
mov dx,[di]
add ax,dx
mov [bx],ax
add si, 02h
add di, 02h
add bx, 02h
loop rpt
hlt
code ends
end