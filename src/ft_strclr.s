section	.text
	global	ft_strclr			;void ft_strclr(char *s)
	extern	ft_bzero
	extern	ft_strlen

ft_strclr:
	push	rdi				;save *s qddr
	cmp	rdi,	0			;check if *s is null
	je	exit				;if is NULL return
	call	ft_strlen			;grep size of *s
	mov	rsi,	rax			;move size in rsi for bzero
	call	ft_bzero			;fill *s of \0

exit:
	pop	rdi
	ret
