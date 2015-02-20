section .text
	global ft_bzero

ft_bzero:
	push	rsi				;save value rsi for calling convetion
	push	rdi				;save value rdi for calling convetion
	cmp		rdi,		0	;compare if ptr is NULL
	je		exit

while:
	cmp		rsi,		0	;compare size at 0
	je		exit			;if eg ret
	mov		byte [rdi],	0	;else do s[i] = 0
	dec		rsi				;decrement size
	inc		rdi				;increment str pointer
	jmp		while			;continue while

exit:
	pop		rdi				;restore rdi value
	pop		rsi				;restore rsi value
	ret
