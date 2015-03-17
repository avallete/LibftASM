section	.text
	global	ft_memcpy		;void *memcpy(void *dst, void *src, size_t n)

ft_memcpy:
	push	rdi				;save void *dst addr
	push	rsi				;save void *src addr
	cmp	rdx,	0			;cmp size n to 0
	jle	exit				;if lower or egual exit
	cmp	rdi,	0			;check if ptr dst is NULL
	je	exit				;if it is exit
	cmp	rsi,	0			;check if ptr src is NULL
	je	exit				;if it is exit
	mov	rcx,	rdx			;copy size in cmpt for stosb
	cld						;init incrementation

fill_rdi:
	rep	movsb				;copy rsi in rdi while rcx > 0

exit:
	pop	rsi
	pop	rax					;pop rax return;
	ret
