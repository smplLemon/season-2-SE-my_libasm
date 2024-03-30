section .text
global my_strncmp

my_strncmp:
    mov rax, rdi          ; Move str1 (the first argument) to RAX register
    mov rbx, rsi          ; Move str2 (the second argument) to RBX register
    mov rcx, rdx          ; Move n (the third argument) to RCX register

.loop:
    cmp rcx, 0            ; Compare n with 0
    je .equal             ; If n is equal to 0, jump to .equal label

    mov dl, byte [rax]    ; Load the byte from str1
    cmp dl, byte [rbx]    ; Compare the byte from str1 with str2
    jne .done             ; If they are not equal, jump to .done label

    cmp dl, 0             ; Compare the byte with NULL terminator
    je .equal             ; If NULL terminator is reached, jump to .equal label

    dec rcx               ; Decrement n
    inc rax               ; Increment the pointer for str1
    inc rbx               ; Increment the pointer for str2
    jmp .loop             ; Jump back to .loop

.equal:
    xor rax, rax          ; If strings are equal, return 0 
    ret

.done:
    mov rax, -1          ; If strings are not equal, return -1
    ret