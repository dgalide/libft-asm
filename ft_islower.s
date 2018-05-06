section .text
global _ft_islower

_ft_islower:
	cmp rdi, 97
	jl false
	cmp rdi, 123
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
