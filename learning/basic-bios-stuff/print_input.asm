;; Get user input, terminated by a newline, and print it.
section .text
    mov bp, sp
get_char:
    mov ah, 0  ; Get single char of input
    int 0x16
    cmp al, 13 ; was newline?
    je print_setup
    movzx bx, al ; Extract only char code
    push bx ; Push char to stack
    jmp get_char
print_setup:
    mov ah, 0x0e
print_input:
    sub bp, 2
    mov al, [bp]
    ; print char
    int 0x10
    cmp sp, bp
    jne print_input
exit:
    ret

%include "padding.asm"