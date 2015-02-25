section	.text
	global	ft_strdup					;char	*ft_strdup(const char *s)
	extern	ft_memcpy
	extern	ft_strlen
	extern	malloc

ft_strdup:
	push	rdi
	mov		rax,	0					;init return at NULL;
	cmp		rdi,	0					;check if *s is NULL;
	je		error						;if it is, return;

dup:
	call		ft_strlen					;call ft_strlen (len is in rax now);
	inc		rax						;add 1 at rax for last \0;
	mov		rdx,	rax					;cp rax to rdx for save size;
	mov		rdi,	rdx					;move size in rdi for malloc;
	push		rdx						;save rdx (malloc is a bastard modify reg and no restore them)
	call		malloc						;call malloc so now rax is mallocated ptr;
	mov		rdi,	rax					;mov malloc ptr in rdi for ft_memcpy;
	pop		rdx						;restore size of str for memcpy
	cmp		rdi,	0					;check if malloc succed
	je		error						;else go err
	pop		rsi						;pop rsi so, rdi take place in rsi for memcpy
	call		ft_memcpy					;call memcpy (cpy str, init rax...)

exit:
	ret

error:
	pop	rdi
	ret
