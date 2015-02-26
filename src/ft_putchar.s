%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define	WRITE				4

section	.text
	global	ft_putchar									;int	ft_putchar(const char *s)

ft_putchar:
	push	rdi										;save rdi addr
	push	rsi										;save rsi addr
	push	rdx										;save rdx addr
	mov		rdx,	1								;write len 1
	mov		rsi,	rdi								;move *s in rsi for write
	mov		rdi,	STDOUT								;init fd for STDOUT
	mov		rax,	MACH_SYSCALL(WRITE)						;syscall write
	syscall

exit:
	pop	rdx
	pop	rsi
	pop	rdi
	ret
