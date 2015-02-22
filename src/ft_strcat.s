section	.text
	global	ft_strcat

ft_strcat:
	push	rdi						;save addr of first arg
	push	rsi						;save addr of second arg
	cmp		rdi,		0			;check if first arg is NULL
	je		exit					;if egual null exit
	cmp		rsi,		0			;check if second arg is NULL
	je		exit					;if egual null exit

goend:
	cmp		byte[rdi],	0
	je		copyrdi

incrdi:
	inc		rdi
	jmp		goend

copyrdi:
	cmp		byte [rsi],	0			;check if we are \0 is rdi (s2)
	jne		rditorsi				;if is not \0 copy s2 in s1 and inc
	mov		byte [rdi],	0			;if	it is \0 stop copy and add \0 in s1
	jmp		exit					;go end of exit

rditorsi:
	mov		rax,	[rsi]				;copy char s2 to rax tmp
	mov		[rdi],	rax				;copy rax tmp in s1
	mov		rax,	0				;reinit rax NULL
	inc		rsi						;s2++
	inc		rdi						;s1++
	jmp		copyrdi					;jump begin while

exit:
	pop		rsi
	pop		rdi
	ret
