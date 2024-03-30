section .text
global my_strncmp

my_strncmp:
    mov rax, rdi          
    mov rbx, rsi          
    mov rcx, rdx           

.loop:
    cmp rcx, 0            
    je .equal             

    mov dl, byte [rax]    
    cmp dl, byte [rbx]    
    jne .done              

    cmp dl, 0              
    je .equal             

    dec rcx               
    inc rax               
    inc rbx               
    jmp .loop             

.equal:
    xor rax, rax          
    ret

.done:
    mov rax, -1          
    ret