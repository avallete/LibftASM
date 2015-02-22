section	.text
	global	ft_toupper
	extern	ft_islower

ft_toupper:
	push	rdi				;save rdi adress

check_toupper:
	call	ft_islower			;check if is a lower letter
	cmp	rax,	1			;if is a lower letter
	je	tupper_it			;toupper it
	mov	rax,	rdi			;return take rdi value
	jmp	exit				;end
						
tupper_it:
	sub	rdi,	32			;substract -32 to rdi
	mov	rax,	rdi			;return take rdi

exit:
	pop	rdi				;restore rdi addr
	ret
