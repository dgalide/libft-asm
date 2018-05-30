section .text
global _ft_puts
extern _ft_strlen
extern _puts
extern _printf
extern _ft_putchar

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

_ft_puts:
	enter 32, 0
	push rdi
	call _ft_strlen
	pop rdi
	mov rdx, rax
	mov rsi, rdi
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	mov rdi, 0x0a
	call _ft_putchar
	leave
	ret
