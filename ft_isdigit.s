section .text
global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jl false
	cmp rdi, 58
	jl true
	jmp false

true:
	mov rax, 1
	jmp out

false:
	mov rax, 0
	jmp out

out:
	ret