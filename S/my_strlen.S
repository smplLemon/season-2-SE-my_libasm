section .text
global my_strlen

my_strlen:
    xor rax, rax          

.loop:
    cmp byte [rdi], 0     
    je .found            

    inc rdi               
    inc rax               
    jmp .loop             

.found:
    ret                   