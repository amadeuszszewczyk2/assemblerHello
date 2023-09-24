section .data
    hello db 'Hello, World!',0    ; null-terminated string

section .text
global _start

_start:
    ; write(1, hello, 13)
    mov rax, 0x1        ; syscall number for sys_write
    mov rdi, 0x1        ; file descriptor 1 (stdout)
    mov rsi, hello      ; pointer to the message
    mov rdx, 0xd        ; message length
    syscall             ; call kernel

    ; exit(0)
    mov rax, 0x60       ; syscall number for sys_exit
    xor rdi, rdi        ; exit status 0
    syscall             ; call kernel
