section .text
global _ft_isupper

_ft_isupper:
	cmp rdi, 65
	js false
	cmp rdi, 91
	js true

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
