global	_ft_isascii


_ft_isascii:

	cmp rdi, 0
	jl false
	cmp rdi, 128
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