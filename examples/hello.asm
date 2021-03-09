section .text
    global _start
_start:

mov edx, len ; message length
mov ecx, msg ; message to write
mov ebx, 1 ; file discriptor (stdout)
mov eax, 4 ; syscall n° (sys_write)
int 0x80 ; call kernel

mov eax, 1 ; (sys_exit)
int 0x80 

section .data
msg db 'Hello, world!', 0xa
len equ $ - msg
