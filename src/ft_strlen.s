section	.text
	global	ft_strlen

ft_strlen:
	push	rdi				;save rdi adress
	mov	rax,		0		;set return to 0
	cmp	rdi,		0		;check if str is NULL
	je	exit				;if str is NULL return 0

compt_size:
	cmp	byte[rdi],	0		;check if rdi is \0
	jne	addsize				;if not inc return
	jmp	exit				;if is \0 exit

addsize:	
	inc	rax				;inc return
	inc	rdi				;str[i++]
	jmp	compt_size			;redo while

exit:
	pop	rdi				;restaure rdi addr
	ret					;return
