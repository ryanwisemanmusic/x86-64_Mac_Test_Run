section .data
msg db "Hello, macOS!", 0

section .text
global _start    ; Declare the entry point for macOS

_start:
    ; Write message to stdout
    mov rax, 0x2000004       ; syscall: write
    mov rdi, 1               ; file descriptor: stdout
    lea rsi, [rel msg]       ; pointer to message (RIP-relative)
    mov rdx, 13              ; message length
    syscall

    ; Exit program
    mov rax, 0x2000001       ; syscall: exit
    xor rdi, rdi             ; exit code: 0
    syscall


