section		.text
global		_ft_strdup
extern		_malloc
extern		_ft_strlen
extern		_ft_memcpy

_ft_strdup:

	enter	32, 0
	mov		[rsp], rdi
	call	_ft_strlen
	mov		[rsp + 8], rax
	mov		rdi, rax
	call	_malloc
	mov		rdi, rax
	mov		rsi, [rsp]
	mov		rdx, [rsp + 8]
	call	_ft_memcpy
	leave
	ret