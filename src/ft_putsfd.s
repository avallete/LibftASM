%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	WRITE				4

section	.text
	global	ft_putsfd								;int	ft_putsfd(int fd, const char *s)
	extern	ft_strlen

ft_putsfd:
	push	rdi										;save rdi addr
	push	rsi										;save rsi addr
	push	rdx										;save rdx addr
	mov		rax,	-1								;init return at err
	cmp		rdi,	0								;check if fd error
	jl		exit									;if it is exit
	cmp		rsi,	0								;check if addr *s is inval
	jle		exit									;if it is exit

write:
	mov		rdx,	rdi								;save fd
	mov		rdi,	rsi								;move *s in rsi for ft_strlen
	call	ft_strlen								;grep *s size
	mov		rdi,	rdx								;reinit fd in rdi for write
	mov		rdx,	rax								;move ft_strlen result in rdx for write
	mov		rax,	MACH_SYSCALL(WRITE)				;syscall write
	syscall

exit:
	pop	rdx
	pop	rsi
	pop	rdi
	ret
