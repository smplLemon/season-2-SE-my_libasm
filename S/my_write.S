section .text
global my_write

my_write:
    mov rax, 1          ; System call number (1) for write 
    mov rdi, rdi        ; File descriptor (fd , the first argument)
    mov rsi, rsi        ; Buffer pointer (the second argument)
    mov rdx, rdx        ; Number of bytes to write (the third argument)
    syscall             ; Perform the system call
    ret