TELETYPE equ 0x0e

%macro print_char 1
    mov ah, TELETYPE   ; Switch into teletype mode
    mov al, %1         ; Move the passed character into al to be printed
    int 0x10           ; Interrupt to call BIOS print routine
%endmacro
