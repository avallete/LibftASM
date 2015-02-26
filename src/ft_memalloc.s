section	.text
	global	ft_memalloc	;void *ft_memalloc(size_t size)
	extern	malloc

ft_memalloc:
	push	rdi		;save rdi value
	mov	rax,	0	;init return at NULL
	cmp	rdi,	0	;check if size is 0
	je	exit		;if it is return
	call	malloc		;call malloc with rdi

exit:
	pop	rdi
	ret
