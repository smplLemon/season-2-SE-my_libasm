section .text
global my_strlen

my_strlen:
    xor rax, rax          ; Register rax (length counter)

.loop:
    cmp byte [rdi], 0     ; Compare the byte with the NULL terminator
    je .found             ; If NULL terminator is found, it jumps to .found label 

    inc rdi               ; Increment the string pointer (move to next character)
    inc rax               ; Increment the RAX register (length counter)
    jmp .loop             ; Jump back to .loop label

.found:
    ret                   ; Return the result