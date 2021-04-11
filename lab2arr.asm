data segment
array db 05h,03h,0fah,0abh,4ah
data ends
code segment
assume cs:code, ds:data
mov cl,05h
mov al,00H
rpt:mov bl,array[si]
add al,bl
inc si
loop rpt
hlt
code ends
end