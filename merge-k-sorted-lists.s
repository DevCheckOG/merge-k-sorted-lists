	.file	"merge-k-sorted-lists.c"
	.text
	.globl	swap
	.p2align	4
	.type	swap,@function
swap:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	swap, .Lfunc_end0-swap
	.cfi_endproc

	.globl	heapify
	.p2align	4
	.type	heapify,@function
heapify:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	shll	%eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	shll	%eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB1_3
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB1_3
# %bb.2:
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB1_3:
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB1_6
# %bb.4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB1_6
# %bb.5:
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB1_6:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB1_8
# %bb.7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movslq	-16(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rsi
	callq	swap
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	heapify
.LBB1_8:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	heapify, .Lfunc_end1-heapify
	.cfi_endproc

	.globl	push
	.p2align	4
	.type	push,@function
push:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB2_2
# %bb.1:
	jmp	.LBB2_7
.LBB2_2:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, 8(%rcx)
	movl	%eax, -20(%rbp)
.LBB2_3:
	xorl	%eax, %eax

	cmpl	$0, -20(%rbp)
	movb	%al, -21(%rbp)
	jle	.LBB2_5
# %bb.4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	cmpl	(%rcx), %eax
	setg	%al
	movb	%al, -21(%rbp)
.LBB2_5:
	movb	-21(%rbp), %al
	testb	$1, %al
	jne	.LBB2_6
	jmp	.LBB2_7
.LBB2_6:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cltq
	shlq	$3, %rax
	addq	%rax, %rsi
	callq	swap
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	jmp	.LBB2_3
.LBB2_7:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	push, .Lfunc_end2-push
	.cfi_endproc

	.globl	pop
	.p2align	4
	.type	pop,@function
pop:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB3_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rdx)
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	heapify
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	pop, .Lfunc_end3-pop
	.cfi_endproc

	.globl	mergeKLists
	.p2align	4
	.type	mergeKLists,@function
mergeKLists:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movslq	-52(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -16(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -56(%rbp)
.LBB4_1:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_6
# %bb.2:
	movq	-48(%rbp), %rax
	movslq	-56(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB4_4
# %bb.3:
	movq	-48(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	-24(%rbp), %rdi
	callq	push
.LBB4_4:
	jmp	.LBB4_5
.LBB4_5:
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB4_1
.LBB4_6:
	leaq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB4_7:
	cmpl	$0, -16(%rbp)
	jle	.LBB4_11
# %bb.8:
	leaq	-24(%rbp), %rdi
	callq	pop
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_10
# %bb.9:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-24(%rbp), %rdi
	callq	push
.LBB4_10:
	jmp	.LBB4_7
.LBB4_11:
	movq	-24(%rbp), %rdi
	callq	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_13
# %bb.12:
	movq	-80(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_13:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end4:
	.size	mergeKLists, .Lfunc_end4-mergeKLists
	.cfi_endproc

	.globl	createNode
	.p2align	4
	.type	createNode,@function
createNode:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$16, %edi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	createNode, .Lfunc_end5-createNode
	.cfi_endproc

	.globl	printList
	.p2align	4
	.type	printList,@function
printList:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB6_1:
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_1
.LBB6_3:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	printList, .Lfunc_end6-printList
	.cfi_endproc

	.globl	freeList
	.p2align	4
	.type	freeList,@function
freeList:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB7_1:
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# %bb.2:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB7_1
.LBB7_3:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	freeList, .Lfunc_end7-freeList
	.cfi_endproc

	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, %edi
	callq	createNode
	movq	%rax, -48(%rbp)
	movl	$4, %edi
	callq	createNode
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	$5, %edi
	callq	createNode
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, 8(%rax)
	movl	$1, %edi
	callq	createNode
	movq	%rax, -56(%rbp)
	movl	$3, %edi
	callq	createNode
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	$4, %edi
	callq	createNode
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, 8(%rax)
	movl	$2, %edi
	callq	createNode
	movq	%rax, -64(%rbp)
	movl	$6, %edi
	callq	createNode
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$3, -68(%rbp)
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -72(%rbp)
.LBB8_1:
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB8_4
# %bb.2:
	movl	-72(%rbp), %esi
	addl	$1, %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movslq	-72(%rbp), %rax
	movq	-32(%rbp,%rax,8), %rdi
	callq	printList
# %bb.3:
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB8_1
.LBB8_4:
	movl	-68(%rbp), %esi
	leaq	-32(%rbp), %rdi
	callq	mergeKLists
	movq	%rax, -80(%rbp)
	leaq	.L.str.4(%rip), %rdi
	xorl	%eax, %eax

	callq	printf@PLT
	movq	-80(%rbp), %rdi
	callq	printList
	movq	-80(%rbp), %rdi
	callq	freeList
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_6
# %bb.5:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_6:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"Input lists:\n\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"List %d: "
	.size	.L.str.3, 10

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"\nCombined lists: "
	.size	.L.str.4, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swap
	.addrsig_sym heapify
	.addrsig_sym push
	.addrsig_sym pop
	.addrsig_sym mergeKLists
	.addrsig_sym malloc
	.addrsig_sym free
	.addrsig_sym createNode
	.addrsig_sym printList
	.addrsig_sym printf
	.addrsig_sym freeList
	.addrsig_sym __stack_chk_fail
