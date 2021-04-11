data segment
arr dw 0020h,0030h,0010h,0025h
len dw $-arr
data ends
code segment 
assume ds:data, cs:code
start:
      mov ax,data
      mov ds,ax 
      mov cx,03h
outer:
      lea si,arr
      mov bx,0       
inner:
      inc bx
      mov ax,arr[si]
      inc si
      inc si
      cmp ax,arr[si]
      jb skip
      xchg ax,arr[si]
      mov arr[si-2],ax
     
skip:
      cmp bx,cx
      jl  inner
      loop outer
      mov ah,4ch
      int 21h
      hlt   
code ends
end start