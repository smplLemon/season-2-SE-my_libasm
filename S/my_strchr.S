section .text
global my_strchr

my_strchr:
    mov rax, rdi          ; Moving str (the first argument) to RAX register
    mov dl, sil           ; Moving c (the second argument) to DL register
    
.loop:
    cmp byte [rax], dl    ; Compare RAX (str) with dl (c) register 
    je .found             ; If they are equal, it jumps to .found label
    cmp byte [rax], 0     ; Compare RAX register with NULL terminator
    je .not_found         ; If NULL terminator is reached, it jumps to .not_found label
    
    inc rax               ; Increment the str pointer (move to next character)
    jmp .loop             ; Jump back to .loop label

.found:
    mov rax, rax          ; Move the current position of str to RAX register
    ret

.not_found:
    xor rax, rax          ; If needle is not found, it returns NULL (0) 
    ret