section	.text
	global	ft_strcat

ft_strcat:
	push	rdi						;save addr of first arg
	push	rsi						;save addr of second arg
	cmp		rdi,		0			;check if first arg is NULL
	je		exit					;if egual null exit
	cmp		rsi,		0			;check if second arg is NULL
	je		exit					;if egual null exit
	mov		al,			0			;init scasb cmp to 0
	repne	scasb					;go to s1 end
	dec		rdi						;rdi--

copyrdi:
	cmp		byte [rsi],	0			;check if we are \0 is rdi (s2)
	je		end						;go end of exit
	movsb							;copy rsi in rdi and inc
	jmp		copyrdi					;re do

end:
	mov		rdi,	0

exit:
	pop		rsi
	pop		rdi
	mov		rax,	rdi
	ret
