PAUSE: equ 0
INPUT: equ 0x16

%macro get_char 0
    mov ah, PAUSE
    int INPUT
%endmacro
