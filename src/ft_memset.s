section	.text
	global	ft_memset

ft_memset:
	push	rdi				;save void *s addr
	cmp	rdx,	0			;cmp size to 0
	jle	exit				;if lower or egual exit
	cmp	rdi,	0			;check if ptr is NULL
	je	exit				;if it is exit
	mov	rax,	rsi			;cp int in rax for stosb can use it
	mov	rcx,	rdx			;copy size in cmpt for stosb
	cld						;init incrementation

fill_rdi:
	rep	stosb				;while rcx(size(rdx)) > 0 copy byte (rax(int c(rsi))) in rdi

exit:
	pop	rdi					;restaure vois *addr
	mov	rax,	rdi			;return = s
	ret
