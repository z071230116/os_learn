	.file	"first.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	jmp	L2
L3:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, 28(%esp)
L2:
	cmpl	$12, 28(%esp)
	jg	L3
	movl	$0, %eax
	leave
	ret
	.ident	"GCC: (GNU) 11.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
