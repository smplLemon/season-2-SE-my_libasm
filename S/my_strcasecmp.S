section .text
global my_strcasecmp

my_strcasecmp:
    cmp rdi, rsi                  
    je .end                       

    .loop:
        movzx rax, byte [rdi]
        movzx rbx, byte [rsi]
                                   
        cmp rax, 'A'
        jl .next                  
        cmp rax, 'Z'
        jg .next                  
        add rax, 32               

    .next:
        cmp rbx, 'A'
        jl .compare               
        cmp rbx, 'Z'
        jg .compare              
        add rbx, 32               

    .compare:
        cmp rax, rbx
        jne .end                   
        cmp rax, 0                
        je .end
        inc rdi                   
        inc rsi                   
        jmp .loop                 

    .end:
        sub rax, rbx              
        ret