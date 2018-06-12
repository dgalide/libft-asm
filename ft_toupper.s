global _ft_toupper

extern _ft_islower

_ft_toupper:

	call _ft_islower
	cmp rax, 0
	je	false
	jmp	convert

false:
	mov rax, rdi
	ret

convert:

	mov rax, rdi
	sub rax, 32
	ret