section	.text
	global	ft_memset

ft_memset:
	push	rdi				;save ptr of args 1
	push	rsi				;// 2
	push	rdx				;// 3
	mov	rax,	rdi			;return rdi ptr
	cmp	rdx,	0			;cmp size to 0
	jle	exit				;if lower or egual exit
	cmp	rdi,	0			;check if ptr is NULL
	je	exit				;if it is exit

fill_rdi:
	cmp	rdx,	0			;check if size is 0
	jg	filler				;if is greater fill it
	jmp	exit

filler:
	mov	[rdi],	rsi			;copy int c in *s
	inc	rdi				;s[i++]
	dec	rdx				;size--
	jmp	fill_rdi			;re do while

exit:
	pop	rdx
	pop	rsi
	pop	rdi
	ret
