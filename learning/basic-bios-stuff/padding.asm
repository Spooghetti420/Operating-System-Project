;; This code is transcluded inside other programs to format the output binary according to the bootable-binary rules.
;; I.e., we fill the empty space left in a program with null bytes, and end it with 0x55aa to finish the signature.
times 510-($-$$) db 0  ; Pad with null bytes for the remaining space of the binary (only 512 bytes to work with)
db 0x55, 0xaa          ; Magic signature for bootable binaries
