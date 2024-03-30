section .text
global my_read

my_read:
    mov rax, 0          ; System call number (0) for read system call should be executed.
    syscall             ; Perform the system call
    ret                 ; Return read byetes