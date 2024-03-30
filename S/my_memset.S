section .data
section .text
global my_memset

my_memset:
    mov rax, rsi                    
    mov rcx, rdx                    
    mov rdi, rdi                    

.loop:
    cmp rcx, 0                      
    je .end                         
    dec rcx                         
    mov byte [rdi + rcx], al        
    jmp .loop                       

.end:
    ret                            