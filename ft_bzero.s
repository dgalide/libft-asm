section .text
global _ft_bzero

_ft_bzero:
	
	cmp		rsi, 0
	je		zero_byte
	push	rcx
	xor		rcx, rcx

loop:

	cmp			rcx, rsi
	jge			end
	mov byte	[rdi + rcx], 0
	inc			rcx
	jmp			loop

end:
	pop		rcx
	ret

zero_byte:
	ret

