section	.text
	global	ft_isupper

ft_isupper:
	push	rdi				;save rdi adress
	mov	rax,	0			;init return at 0
	cmp	rdi,	65			;check if arg1 is >= at A
	jl	exit				;else	exit
	cmp	rdi,	90			;cmp arg1 to Z
	jg	exit				;if greater jump exit
	mov	rax,	1			;return	1

exit:
	pop	rdi				;restore rdi adress
	ret
