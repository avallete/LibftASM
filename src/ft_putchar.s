%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define	WRITE				4

section .data
	buf:
		.byte db 0

section	.text
	global	ft_putchar									;int	ft_putchar(char c)

ft_putchar:
	push	rsi										;save rsi addr
	push	rdx										;save rdx addr
	push	rdi										;save rdi addr
	push 	rcx
	mov		rdx,	1								;write len 1
	lea		rcx,	[rel buf.byte]							;move in rcx buf byte
	mov 		[rcx],	dil								;move byte rdi in rcx value
	mov		rsi,	rcx								;move rcx in rsi for write
	mov		rdi,	STDOUT								;init fd for STDOUT
	mov		rax,	MACH_SYSCALL(WRITE)						;syscall write
	syscall

exit:
	pop 	rcx
	pop	rdi
	pop	rdx										;Restore registre addr
	pop	rsi
	ret
