section .text
global _ft_strlen

_ft_strlen:

	push	rcx					; save rcx
	mov		rcx, -1				; infinite loop

  	mov		rax, 0x0 			; conditionnal statement -> repne cmp rdi againt accumulator (rax)
  	repne	scasb 				; repeat until condition is met

	not		rcx 				; rdi incremented by 1 after each byte comparison == len
	dec		rcx					; start at -1. then decrement after 'not' instruction
	mov		rax, rcx
	pop		rcx					; restore rcx

	ret