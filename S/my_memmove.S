section .text
global my_memmove

my_memmove:
    mov rax, rdi          ; Copy the destination (the first argument) address to RAX register
    mov rcx, rdx          ; Copy the number of bytes to copy to RCX register
    cmp rdi, rsi          ; Compare the destination and source (the second argument) addresses
    je .done              ; No need to handle overlap, if they are equal

    jbe .forward          ; If destination address <= source address, move forward
    lea rdi, [rdi+rcx-1]  ; Otherwise, move backward
    lea rsi, [rsi+rcx-1]  ; Adjust source address

    std                   ; The direction flag for backward movement
    rep movsb             ; Repeat move a byte from destination [RSI] to source [RDI] register

.done:
    cld                   ; The direction flag for forward movement
    ret

.forward:
    cld                   ; The direction flag for forward movement
    rep movsb             ; Repeat move a byte from destination [RSI] to source [RDI] register

    ret