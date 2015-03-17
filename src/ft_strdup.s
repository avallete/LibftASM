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
	call	ft_strlen					;call ft_strlen (len is in rax now);
	inc		rax							;add 1 at rax for last \0;
	mov		r12,	rax					;cp rax to rdx for save size;
	mov		rdi,	r12					;move size in rdi for malloc;
	call	malloc						;call malloc so now rax is mallocated ptr;
	jnc		copy						;if malloc is O;
	jmp		error						;return err

copy:
	mov		rdi,	rax					;mov malloc ptr in rdi for ft_memcpy;
	pop		rsi							;mov *s in rsi for memcpy
	mov		rdx,	r12					;restore size in rdx
	call	ft_memcpy					;call memcpy (cpy str, init rax...)

exit:
	ret

error:
	pop	rdi
	mov	rax,	0					;init return at NULL
	jmp	exit
