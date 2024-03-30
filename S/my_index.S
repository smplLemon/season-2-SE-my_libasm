section .text
global my_index

my_index:
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
    sub rax, rdi        
    ret

.not_found:
    mov rax, -1          
    ret
