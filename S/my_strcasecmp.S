section .text
global my_strcasecmp

my_strcasecmp:
    cmp rdi, rsi                  ; Compare RDI (first argument [s1]) to RSI (second argument [s2]) register.
    je .end                       ; If they are equal, jump to .end label

    .loop:
        movzx rax, byte [rdi]
        movzx rbx, byte [rsi]
                                  ; Convert to lower case if it's an uppercase letter
        cmp rax, 'A'
        jl .next                  ; Jump to .next label if RAX register less than 'A' character 
        cmp rax, 'Z'
        jg .next                  ; Jump to .next label if RAX register greater than 'Z' character
        add rax, 32               ; Convert to lower case

    .next:
        cmp rbx, 'A'
        jl .compare               ; Jump to .compare label if RBX register less than 'A' character
        cmp rbx, 'Z'
        jg .compare               ; Jump to .compare label if RBX register greater than 'Z' character
        add rbx, 32               ; Convert to lower case

    .compare:
        cmp rax, rbx
        jne .end                  ; Jump to .end label if RAX and RBX are not equal
        cmp rax, 0                ; Check if we reached the end of the string
        je .end
        inc rdi                   ; Increment RDI register
        inc rsi                   ; Increment RSI register
        jmp .loop                 ; Jump back to .loop label

    .end:
        sub rax, rbx              ; Subtract from RAX with RBX register
        ret