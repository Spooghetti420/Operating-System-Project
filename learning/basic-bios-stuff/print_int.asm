section .text
    global _start
    mov bx, 12345

print_int:
    ; Assume argument is in bx
    push 0  ; Sentinel used to test when the digit stream is over, at print time
    mov ax, bx
    mov bx, 10
div_loop:
    xor dx, dx ; Clear upper half of dividend (dx:ax)
    div bx
    add dx, 0x30 ; Convert to ASCII representation
    push dx ; Push digit onto the stack
    cmp ax, 0 ; When quotient is 0, number is out of digits
    jne div_loop
print_loop:
    pop ax
    cmp ax, 0  ; If the 0 sentinel is reached, finish the loop
    je exit
    mov ah, 0x0e
    int 0x10
    jmp print_loop
exit:
    ret

_start:
    mov bx, 76
    call print_int

%include "padding.asm"