section	.text
	global	ft_strlen

ft_strlen:
	push			rcx					;save rcx adress
	push			rdi					;save rdi adress
	mov	rax,		0					;set return to 0
	cmp	rdi,		0					;check if str is NULL
	je				exit				;if str is NULL return 0
	mov	rcx,		0					;init rcx at 0
	not rcx								;invert rcx (so rcx is max now) it's for repne can decrement them for count
	cld									;init incrementation

compt_size:
	repne	scasb						;cmp byte to 0, if not dec rcx, inc rdi
	not		rcx							;rcx invert so good ctmp now
	dec		rcx							;decrement rcx
	mov		rax,	rcx					;give rcx cmptr in value of return

exit:
	pop	rcx				;restaur rcx value
	pop	rdi				;restaur rdi addr
	ret					;return
