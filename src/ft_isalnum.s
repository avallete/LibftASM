section	.text
	global	ft_isalnum
	extern	ft_isalpha
	extern	ft_isdigit

ft_isalnum:
	push	rdi				;save rdi adress
	mov	rax,	0			;init return at 0

check_alpha:
	call	ft_isalpha			;call ft_isalpha
	cmp	rax,	1			;call check if is alpha
	je	exit				;if is alpha jump exit

check_digit:
	call	ft_isdigit			;call ft_isdigit
	cmp	rax,	1			;check if is digit

exit:
	pop	rdi				;restore rdi adress
	ret
