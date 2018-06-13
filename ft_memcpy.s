section .text
global _ft_memcpy

_ft_memcpy:
	
	cmp			rdx, 0
	je			zero_n
	push		rdi
	push		rsi

loop:

	mov     	rcx, rdx 			; nb iterations
	cld                     		; move forward
	rep			movsb				; copy value [rdi] -> [rsi]

end:
	pop			rsi
	pop			rdi
	mov			rax, rdi 			; output
	ret

zero_n:
	mov			rax, rsi
	ret