%include "text.asm"

[org 0x7c00]
section .text
    mov ah, TELETYPE
    mov bx, hello
start:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp start
end:
    jmp $

hello: db "Hello, world!", 10, 13, 0

%include "padding.asm"
