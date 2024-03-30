section .text
global my_memmove

my_memmove:
    mov rax, rdi          
    mov rcx, rdx          
    cmp rdi, rsi          
    je .done              

    jbe .forward          
    lea rdi, [rdi+rcx-1]  
    lea rsi, [rsi+rcx-1] 

    std                   
    rep movsb         

.done:
    cld                  
    ret

.forward:
    cld                   
    rep movsb             

    ret