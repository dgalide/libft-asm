global _ft_isprint

_ft_isprint:

	cmp rdi, 33
	jl false
	cmp rdi, 127
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