data segment
mat1 dw 0022h,0015h,0030h,0043h
mat2 dw 0020h,0013h,0010h,0023h
res dw 00h
data ends
code segment
assume ds:data, cs:code
start:
mov ax,data
mov ds,ax
mov cl,04
lea si,mat1
lea di,mat2
lea bx,res
rpt:
mov ax,[si]
mov dx,[di]
sub ax,dx
mov [bx],ax
add si, 02h
add di, 02h
add bx, 02h
loop rpt
hlt
code ends
end
