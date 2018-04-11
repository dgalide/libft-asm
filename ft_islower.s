section .text
global _ft_islower

_ft_islower:
	cmp rdi, 97
	js false
	cmp rdi, 123
	js true

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
