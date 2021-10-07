; source - https://medium.com/geekculture/linux-x86-assembly-hello-world-using-nasm-e235205a9d1e

global _start

section .data
	message: db "Hello World", 0xa  ; 0xa is a '\n'
	length: equ $-message ; int length = len(message)


section .text

_start:
	mov rax, 1        ; linux system call for write
	mov rdi, 1        ; making file handle stdout
	mov rsi, message  ; pass address of our message string to output
	mov rdx, length   ; number of bytes
	syscall           ; actually tell linux to write to screen

	mov rax, 60       ; linux system call for exit
	xor rdi, rdi      ; exit code 0
	syscall           ; tell linux to exit the program
