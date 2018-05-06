section .text
global _ft_strlen

_ft_strlen:
	push rpb
	mov rpb, rsp
	sub rsp , 16