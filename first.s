	.file	"first.c"
 # GNU C17 (GCC) version 11.2.0 (x86_64-pc-cygwin)
 #	compiled by GNU C version 11.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=x86-64
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # ./first.c:3: int main(){
	call	__main	 #
 # ./first.c:4:     int a = 0;
	movl	$0, -4(%rbp)	 #, a
 # ./first.c:6:     return 0; 
	movl	$0, %eax	 #, _2
 # ./first.c:7: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (GNU) 11.2.0"
