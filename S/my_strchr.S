section .text
global my_strchr

my_strchr:
    mov rax, rdi          
    mov dl, sil           
    
.loop:
    cmp byte [rax], dl    
    je .found             
    cmp byte [rax], 0     
    je .not_found         
    
    inc rax               
    jmp .loop             

.found:
    mov rax, rax          
    ret

.not_found:
    xor rax, rax          
    ret