section .text
global my_strcmp

my_strcmp:
    mov rax, rdi          
    mov rbx, rsi          

.loop:
    mov dl, byte [rax]     
    cmp dl, byte [rbx]    
    jne .done             

    cmp dl, 0             
    je .done               

    inc rax               
    inc rbx               
    jmp .loop             

.done:
    sub rax, rbx          
    ret