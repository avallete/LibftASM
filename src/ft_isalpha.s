section	.text
	global	ft_isalpha

ft_isalpha:
	push	rdi				;save rdi adress
	mov	rax,	0			;init return at 0

check_maj:
	cmp	rdi,	65			;check if arg1 is > at A
	jl	exit				;else	exit
	cmp	rdi,	90			;cmp arg1 to Z
	jg	check_min			;if greater compare minus
	mov	rax,	1			;return	1
	jmp	exit				;jump exit

check_min:
	cmp	rdi,	97			;cmp arg1 to a
	jl	exit				;if lower (Z--(arg)--a) exit
	cmp	rdi,	122			;cmp to z
	jg	exit				;if greater (z---(arg)) exit
	mov	rax,	1			;else return 1
exit:
	pop	rdi				;restore rdi adress
	ret
