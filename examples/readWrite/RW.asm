
; define strings and their sizes
section .data
  userMsg db "Enter a number: "
  lenUserMsg equ $ - userMsg
  dispMsg db "You have entered: "
  lenDispMsg equ $ - dispMsg

; Uninitialized data
section .bss
  num resb 5

; start of code section
section .text
	global _start
_start:

; Display message

mov edx, lenUserMsg
mov ecx, userMsg
mov ebx, 1
mov eax, 4
int 0x80

; read user input

mov edx, 5
mov ecx, num
mov ebx, 2
mov eax, 3
int 0x80

; output the second message

mov edx, lenDispMsg
mov ecx, dispMsg
mov ebx, 1
mov eax, 4
int 0x80

; output the user input

mov edx, 5
mov ebx, 1
mov ecx, num
mov eax, 4
int 0x80


; sys_exit call to finish the program
mov eax, 1
mov ebx, 0 ; return value of the program
int 0x80
