section .text
global _ft_isalnum

extern _ft_isalpha
extern _ft_isdigit

_ft_isalnum:

	call _ft_isalpha
	cmp	rax, 1
	je	true

checknum:

	call _ft_isdigit
	cmp rax, 0
	je	false
	jmp true

true:
	mov rax, 1
	jmp out

false:
	mov rax, 0
	jmp out

out:
	ret