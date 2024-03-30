section .text
global my_memcpy

my_memcpy:
    mov rax, rdi        ; Copy the source (src , first argument) address to RAX register
    mov rcx, rdx        ; Copy the number of bytes to RCX register
    cld                 ; Flag cld register for forward movement

    rep movsb           ; Prefix rep and movsb instruction , copy from source (RSI) to dest (RDI) and also increments both of them to repeat action

    ret