section .data
    msg db "GitHub: plataforma online para hospedar e colaborar em projetos de codigo usando Git.",0xA
    len equ $ - msg

section .text
    global _start

_start:
    ; escrever mensagem
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, msg        ; endereço da mensagem
    mov edx, len        ; tamanho da mensagem
    int 0x80            ; chamada de sistema

    ; sair
    mov eax, 1          ; sys_exit
    xor ebx, ebx        ; código de saída 0
    int 0x80
