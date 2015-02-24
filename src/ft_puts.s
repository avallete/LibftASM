%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define	WRITE				4

section	.text
	global	ft_puts						;int	ft_puts(const char *s)
	extern	ft_strlen

ft_puts:
	push	rdi										;save rdi addr
	push	rsi										;save rsi addr
	push	rdx										;save rdx addr
	mov		rax,	-1								;init return at err
	cmp		rdi,	0								;check if addr is null
	je		exit									;if it is exit
	call	ft_strlen								;grep *s size
	mov		rdx,	rax								;move ft_strlen result in rdx for write
	mov		rsi,	rdi								;move *s in rsi for write
	mov		rdi,	STDOUT							;init fd for STDOUT
	mov		rax,	MACH_SYSCALL(WRITE)				;syscall write
	syscall

exit:
	pop	rdx
	pop	rsi
	pop	rdi
	ret
