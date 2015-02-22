section	.text
	global	ft_isascii

ft_isascii:
	push	rdi				;save rdi adress
	mov	rax,	0			;init return at 0
	cmp	rdi,	0			;check if arg1 is > at 0
	jl	exit				;else	exit
	cmp	rdi,	127			;cmp arg1 to 127
	jg	exit				;if greater jump exit
	mov	rax,	1			;return	1

exit:
	pop	rdi				;restore rdi adress
	ret
