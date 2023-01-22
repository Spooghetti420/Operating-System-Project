size: equ 10
buffer: times size db 0

    mov bx, buffer
start:
    mov ah, 0
    int 0x16  ; Get char
    mov [bx], al ; Store in buffer
    mov ah, 0x0e
    int 0x10 ; Print char
    inc bx
    cmp bx, buffer + size
    jl start

%include "padding.asm"