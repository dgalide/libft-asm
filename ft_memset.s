section .text
global _ft_memset

_ft_memset:
	
	cmp			rdx, 0
	je			zero_n
	push		rdi
	push		rcx

loop:

	mov     	rax, rsi 			; value to set - int c -
	mov     	rcx, rdx 			; nb iterations
	cld                     		; move forward
	rep			stosb				; store value

end:
	pop			rcx
	pop			rdi
	mov			rax, rdi 			; output
	ret

zero_n:
	mov		rax, rdi
	ret