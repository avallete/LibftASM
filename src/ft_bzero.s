section .text
	global ft_bzero			;void	ft_bzero(void *s, size_t n);

ft_bzero:
	push	rdi				;save value rdi addr
	cmp		rdi,		0	;compare if ptr is NULL
	je		exit			;if is NULL exit
	mov		rcx,	rsi		;set size in rcx for stosb cmpt
	mov		rax,	0		;set rax to 0 fot stosb fill
	cld						;init inc
	rep		stosb			;while rcx > 0 fill rdi with rax

exit:
	pop		rax				;restore rdi value
	ret
