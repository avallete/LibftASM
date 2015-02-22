section	.text
	global	ft_isdigit

ft_isdigit:
	push	rdi				;save rdi adress
	mov	rax,	0			;init return at 0
	cmp	rdi,	48			;check if arg1 is > at 0
	jl	exit				;else	exit
	cmp	rdi,	57			;cmp arg1 to 9
	jg	exit				;if greater jump exit
	mov	rax,	1			;return	1

exit:
	pop	rdi				;restore rdi adress
	ret
