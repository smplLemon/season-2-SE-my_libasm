section .data
section .text
global my_memset

my_memset:
    mov rax, rsi                    ; Moving the c (second argument ) into RAX register
    mov rcx, rdx                    ; Moving the n (third argument) into RCX register (loop counter)
    mov rdi, rdi                    ; Moving the dst (first argument) into RDI register

.loop:
    cmp rcx, 0                      ; Compare RCX register with 0
    je .end                         ; If RCX register is equal to 0, jump to .end label
    dec rcx                         ; Decrease RCX by 1
    mov byte [rdi + rcx], al        ; Move the value from AL register (lower byte of RAX) into the memory location pointed by RDI + RCX registers
    jmp .loop                       ; Jump back to loop

.end:
    ret                             ; Return from the function