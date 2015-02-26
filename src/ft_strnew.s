section	.text
	global	ft_strnew
	extern	ft_memalloc

ft_strnew:
	push	rdi
	mov	rax,	0		;init return at NULL
	cmp	rdi,	0		;check if size is NULL
	je	exit
	inc	rdi			;inc size of 1 for \0
	call	ft_memalloc		;call memalloc

exit:
	pop	rdi
	ret
