section .text
global my_index

my_index:
    mov rax, rdi        ; Move haystack (the first argument) to RAX register
    mov dl, sil         ; Move needle (the second argument) to DL register

.loop:
    cmp byte [rax], dl  ; Compare RAX (haystack) with DL (needle)
    je .found           ; If a match is found, it jumps to .found label
    cmp byte [rax], 0   ; Compare RAX register with NULL (end of string)
    je .not_found       ; if NULL terminator is reached, it jumps to .not_found label

    inc rax             ; Increment the haystack pointer (move to next character)
    jmp .loop           ; Jump back to .loop label

.found:
    sub rax, rdi        ; Subtracting haystack start address 
    ret

.not_found:
    mov rax, -1         ; If needle is not found, return -1 
    ret
