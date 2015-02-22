section	.text
	global	ft_isprint

ft_isprint:
	push	rdi				;save rdi adress
	mov	rax,	0			;init return at 0
	cmp	rdi,	32			;check if arg1 is > at 32
	jl	exit				;else	exit
	cmp	rdi,	126			;cmp arg1 to 126
	jg	exit				;if greater jump exit
	mov	rax,	1			;return	1

exit:
	pop	rdi				;restore rdi adress
	ret
