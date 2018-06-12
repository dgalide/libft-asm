global _ft_tolower

extern _ft_isupper

_ft_tolower:

	call _ft_isupper
	cmp rax, 0
	je	false
	jmp	convert

false:
	mov rax, rdi
	ret

convert:

	mov rax, rdi
	add rax, 32
	ret