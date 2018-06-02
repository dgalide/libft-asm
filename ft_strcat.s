section 	.text
global		_ft_strcat
extern		_ft_strlen
extern		_ft_memcpy

_ft_strcat:

	mov		rax, rdi
	call	shifter

shifter:

	cmp [rdi], byte 0
    jz copy
    inc rdi
    jmp shifter

copy:

	cmp [rsi], byte 0
    je end
    mov r8, [rsi]
    mov [rdi], r8
    inc rdi
    inc rsi
    jmp copy

end:

	mov 	[rdi], byte 0
	ret