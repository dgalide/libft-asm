section 	.text
global		_ft_strcat

_ft_strcat:

	mov		rax, rdi

shifter:

	cmp byte [rdi], 0
    je copy
    inc rdi
    jmp shifter

copy:

	cmp byte [rsi], 0
    je end
    mov r11, [rsi]
    mov [rdi], r11
    inc rdi
    inc rsi
    jmp copy

end:

	mov byte	[rdi], 0
	ret