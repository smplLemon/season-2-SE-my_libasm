section .text
global my_strcmp

my_strcmp:
    mov rax, rdi          ; Move str1 (the first argument) to RAX register
    mov rbx, rsi          ; Move str2 (the second argument) to RBX register

.loop:
    mov dl, byte [rax]    ; Load the byte from str1
    cmp dl, byte [rbx]    ; Compare the byte from str1 with str2
    jne .done             ; If they aren't equal, jump to .done label

    cmp dl, 0             ; Compare the byte with NULL terminator
    je .done              ; If null terminator is reached, jump to .done label

    inc rax               ; Increment the pointer for str1
    inc rbx               ; Increment the pointer for str2
    jmp .loop             ; Jump back to .loop

.done:
    sub rax, rbx          ; Subtracting from RAX with RBX register
    ret