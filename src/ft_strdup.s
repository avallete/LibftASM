section	.text
	global	ft_strdup					;char	*ft_strdup(const char *s)
	extern	ft_memcpy
	extern	ft_strlen
	extern	malloc

ft_strdup:
	push	rdi
	push	rsi
	push	rdx
	mov		rax,	0					;init return at NULL
	cmp		rdi,	0					;check if *s is NULL
	je		exit						;if it is, return
	call	ft_strlen					;call ft_strlen (len is in rax now)
	mov		rdx,	rax					;cp	rax to rdx for save
	add		rdx,	4					;add 4 at rdx for \0
	mov		rsi,	rdi					;save rdi in rdi (save *s ptr)
	mov		rdi,	rdx					;move size in rdi for malloc
	call	malloc						;call malloc so now rax is mallocated ptr
	mov		rdi,	rax					;mov malloc ptr in rdi for ft_memcpy
	call	ft_memcpy					;ft_memcpy so now rax is rdi ptr

exit:
	pop	rdx
	pop	rsi
	pop	rdi
	ret
