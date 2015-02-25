%define	SYSC(nb)			0x2000000 | nb
%define STDOUT				1
%define	WRITE				4
%define	READ				3
%define	BUF_SIZE			1024

section	.data
	buf:
		.string	times BUF_SIZE + 1 db 0

section	.text
	global	ft_cat						;void	ft_cat(int	fd)

ft_cat:
	push	rdi							;save rdi add (keep fd)
	lea		rsi,	[rel buf.string]	;charge buf in rsi for read
	mov		rdx,	BUF_SIZE			;mov BUF_SIZE in rdx for read
	mov		rax,	SYSC(READ)			;syscall read
	syscall								;call read
	jc		end							;if error return
	cmp		rax,	0					;chek if read is end
	jg		print						;write buf

print:
	mov		rdi,	STDOUT				;init rdi at STDOUT for write
	mov		rdx,	rax					;take read return
	mov		rax,	SYSC(WRITE)			;call write
	syscall
	pop		rdi							;retaur rdi addr
	jc		end							;if error exit
	jmp		ft_cat						;loop

end:
	ret
