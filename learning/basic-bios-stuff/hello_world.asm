%include "text.asm"

print_char 'H'
print_char 'e'
print_char 'l'
int 0x10
print_char 'o'
print_char ' '
print_char 'w'
print_char 'o'
print_char 'r'
print_char 'l'
print_char 'd'
print_char '!'
print_char 10
print_char 13
jmp $

%include "padding.asm"
