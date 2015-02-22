section	.text
	global	ft_islower

ft_islower:
	push	rdi				;save rdi adress
	mov	rax,	0			;init return at 0
	cmp	rdi,	97			;check if arg1 is >= at a
	jl	exit				;else	exit
	cmp	rdi,	122			;cmp arg1 to z
	jg	exit				;if greater jump exit
	mov	rax,	1			;return	1

exit:
	pop	rdi				;restore rdi adress
	ret
