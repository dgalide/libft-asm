section .text
global _ft_strlen

_ft_strlen:

  	mov		rax, 0 				; conditionnal statement -> repne cmp rdi againt accumulator (rax)

  	repne	scasb 				; repeat until condition is met

	mov		rax, rdi 			; Increments rdi by 1 after each byte comparison

	ret

