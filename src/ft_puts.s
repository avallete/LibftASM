%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define	WRITE				4

section	.text
	global	ft_puts			;int	ft_puts(const char *s)
	extern	ft_strlen

ft_puts:
	push	rdi				;save rdi addr
	push	rsi				;save rsi addr
	push	rdx				;save rdx addr
	mov		rax,	-1		;init return at error
	cmp		rdi,	0		;if *s is NULL
	je		exit			;exit
	call	ft_strlen		;size of *s
	mov		rdx,	rax		;cp result of ft_strlen in rdx
	mov		rsi,	rdi		;cp *s in rsi for write
	mov		rdi,	STDOUT	;init rdi at STDOUT for write
	mov		rax,	MACH_SYSCALL(WRITE)
	syscall

exit:
	pop		rdx
	pop		rsi
	pop		rdi
	ret
