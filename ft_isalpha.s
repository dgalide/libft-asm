section .text
global _ft_isalpha

extern _ft_islower
extern _ft_isupper

_ft_isalpha:

	call _ft_isupper
	cmp	rax, 1
	je	true

checkupper:

	call _ft_islower
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
