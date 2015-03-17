%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define	WRITE				4

section	.text
	global	ft_putchar								;int	ft_putchar(char c)

ft_putchar:
	push	rdi										;save rdi allign stack
	mov		rsi,	rsp								;move stack ptr on rsi
	mov		rdx,	1								;len is 1
	mov		rdi,	1								;fd
	mov		rax,	MACH_SYSCALL(WRITE)				;syscall write
	syscall
	jc		error									;if syscall fail

exit:
	pop	rdi
	ret

error:
	mov	rax, -1
	jmp	exit
