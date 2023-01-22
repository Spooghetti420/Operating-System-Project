%include "text.asm"

mov bl, 'A'
alphabet_loop:
print_char bl
inc bl
xor bl, 0b100000

print_char bl
inc bl
xor bl, 0b100000
cmp bl, 'Z' + 1
jl alphabet_loop
jmp $

%include "padding.asm"
