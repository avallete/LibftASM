section	.text
	global	ft_tolower
	extern	ft_isupper

ft_tolower:
	push	rdi				;save rdi adress

check_tolower:
	call	ft_isupper			;check if is a upper letter
	cmp	rax,	1			;if is a upper letter
	je	tolow_it			;tolow it
	mov	rax,	rdi			;return take rdi value
	jmp	exit				;end
						
tolow_it:
	add	rdi,	32			;add 32 to rdi
	mov	rax,	rdi			;return take rdi

exit:
	pop	rdi				;restore rdi addr
	ret
