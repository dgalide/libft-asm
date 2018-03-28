%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

_ft_putchar:
	push rbp
	mov rbp, rsp
	sub rsp , 16
	mov [rsp], rdi
	mov rsi, rsp
	mov rdi, STDOUT
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	leave
	ret
