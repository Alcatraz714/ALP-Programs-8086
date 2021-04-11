data segment
n db 05h
r db 02h
data ends
code segment
assume cs:code,ds:data
start:
    mov ax,data
    mov ds,ax
    mov dl,05h
    mov bl,02h
    call fact
    mov dh,al
    sub dl,bl
    mov cl,dl
    call fact
    mov bh,al
    mov al,dh
    div bh
    mov dh,al
    mov dl,bl
    mov cl,dl
    call fact
    mov bh,al
    mov al,dh
    div bh
    jmp close
fact:
    mov al,dl
    mov cl,dl
    cmp cl,01h
    je change
    dec cl
    rpt: 
    mul cl
    loop rpt
    ret
change:
    inc cl
    ret
close:
    hlt
    code ends
    end