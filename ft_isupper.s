section .text
global _ft_isupper

_ft_isupper:
	cmp rdi, 65
	jl false
	cmp rdi, 91
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