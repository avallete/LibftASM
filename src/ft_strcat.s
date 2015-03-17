section	.text
	global	ft_strcat
	extern	ft_strlen
	extern	ft_memcpy

ft_strcat:
	push		r12					;save r12 addr
	push		rdi					;save addr of first arg
	push		rsi					;save addr of second arg
	cmp		rdi,		0			;check if first arg is NULL
	je		exit					;if egual null exit
	cmp		rsi,		0			;check if second arg is NULL
	je		exit					;if egual null exit
	call	ft_strlen				;take rdi size
	mov		r12,		rax			;save s1 val
	mov		rdi,	rsi				;mov rsi in rdi for strlen s2
	call	ft_strlen				;call ft_strlen
	inc		rax						;inc strlen return (for \0)
	mov		rdx,	rax				;mov len value in rdx for memcpy
	pop		rsi						;restaur original rsi addr
	pop		rdi						;restaur original rdi addr
	mov		rax,	rdi				;return rdi basic addr
	push	rdi						;save rdi addr
	add		rdi,	r12				;inc rdi of strlen s1
	call	ft_memcpy				;copy s2 in s1
	pop		rdi						;restaur rdi addr
	pop		r12						;restaur r12 addr

exit:
	mov		rax,	rdi				;return s1 addr
	ret
