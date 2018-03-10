	.file	"example.cpp"
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align 2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, @function
_ZNSt9exceptionC2Ev:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt9exception(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.text._ZNSt9bad_allocC2Ev,"axG",@progbits,_ZNSt9bad_allocC5Ev,comdat
	.align 2
	.weak	_ZNSt9bad_allocC2Ev
	.type	_ZNSt9bad_allocC2Ev, @function
_ZNSt9bad_allocC2Ev:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionC2Ev
	leaq	16+_ZTVSt9bad_alloc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	_ZNSt9bad_allocC2Ev, .-_ZNSt9bad_allocC2Ev
	.weak	_ZNSt9bad_allocC1Ev
	.set	_ZNSt9bad_allocC1Ev,_ZNSt9bad_allocC2Ev
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZStanSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStanSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStanSt13_Ios_FmtflagsS_
	.type	_ZStanSt13_Ios_FmtflagsS_, @function
_ZStanSt13_Ios_FmtflagsS_:
.LFB1087:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1087:
	.size	_ZStanSt13_Ios_FmtflagsS_, .-_ZStanSt13_Ios_FmtflagsS_
	.section	.text._ZStorSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStorSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStorSt13_Ios_FmtflagsS_
	.type	_ZStorSt13_Ios_FmtflagsS_, @function
_ZStorSt13_Ios_FmtflagsS_:
.LFB1088:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1088:
	.size	_ZStorSt13_Ios_FmtflagsS_, .-_ZStorSt13_Ios_FmtflagsS_
	.section	.text._ZStcoSt13_Ios_Fmtflags,"axG",@progbits,_ZStcoSt13_Ios_Fmtflags,comdat
	.weak	_ZStcoSt13_Ios_Fmtflags
	.type	_ZStcoSt13_Ios_Fmtflags, @function
_ZStcoSt13_Ios_Fmtflags:
.LFB1090:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1090:
	.size	_ZStcoSt13_Ios_Fmtflags, .-_ZStcoSt13_Ios_Fmtflags
	.section	.text._ZStoRRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStoRRSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStoRRSt13_Ios_FmtflagsS_
	.type	_ZStoRRSt13_Ios_FmtflagsS_, @function
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB1091:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	_ZStorSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1091:
	.size	_ZStoRRSt13_Ios_FmtflagsS_, .-_ZStoRRSt13_Ios_FmtflagsS_
	.section	.text._ZStaNRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStaNRSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStaNRSt13_Ios_FmtflagsS_
	.type	_ZStaNRSt13_Ios_FmtflagsS_, @function
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB1092:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	_ZStanSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1092:
	.size	_ZStaNRSt13_Ios_FmtflagsS_, .-_ZStaNRSt13_Ios_FmtflagsS_
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, @function
_ZStorSt13_Ios_OpenmodeS_:
.LFB1095:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1095:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.section	.text._ZNKSt8ios_base5flagsEv,"axG",@progbits,_ZNKSt8ios_base5flagsEv,comdat
	.align 2
	.weak	_ZNKSt8ios_base5flagsEv
	.type	_ZNKSt8ios_base5flagsEv, @function
_ZNKSt8ios_base5flagsEv:
.LFB1118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1118:
	.size	_ZNKSt8ios_base5flagsEv, .-_ZNKSt8ios_base5flagsEv
	.section	.text._ZNSt8ios_base5flagsESt13_Ios_Fmtflags,"axG",@progbits,_ZNSt8ios_base5flagsESt13_Ios_Fmtflags,comdat
	.align 2
	.weak	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags
	.type	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags, @function
_ZNSt8ios_base5flagsESt13_Ios_Fmtflags:
.LFB1119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1119:
	.size	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags, .-_ZNSt8ios_base5flagsESt13_Ios_Fmtflags
	.section	.text._ZNSt8ios_base4setfESt13_Ios_Fmtflags,"axG",@progbits,_ZNSt8ios_base4setfESt13_Ios_Fmtflags,comdat
	.align 2
	.weak	_ZNSt8ios_base4setfESt13_Ios_Fmtflags
	.type	_ZNSt8ios_base4setfESt13_Ios_Fmtflags, @function
_ZNSt8ios_base4setfESt13_Ios_Fmtflags:
.LFB1120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZStoRRSt13_Ios_FmtflagsS_
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1120:
	.size	_ZNSt8ios_base4setfESt13_Ios_Fmtflags, .-_ZNSt8ios_base4setfESt13_Ios_Fmtflags
	.section	.text._ZNSt8ios_base6unsetfESt13_Ios_Fmtflags,"axG",@progbits,_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags,comdat
	.align 2
	.weak	_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags
	.type	_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags, @function
_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags:
.LFB1122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	_ZStcoSt13_Ios_Fmtflags
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZStaNRSt13_Ios_FmtflagsS_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1122:
	.size	_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags, .-_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags
	.section	.text._ZNKSt8ios_base9precisionEv,"axG",@progbits,_ZNKSt8ios_base9precisionEv,comdat
	.align 2
	.weak	_ZNKSt8ios_base9precisionEv
	.type	_ZNKSt8ios_base9precisionEv, @function
_ZNKSt8ios_base9precisionEv:
.LFB1123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1123:
	.size	_ZNKSt8ios_base9precisionEv, .-_ZNKSt8ios_base9precisionEv
	.section	.text._ZNSt8ios_base9precisionEl,"axG",@progbits,_ZNSt8ios_base9precisionEl,comdat
	.align 2
	.weak	_ZNSt8ios_base9precisionEl
	.type	_ZNSt8ios_base9precisionEl, @function
_ZNSt8ios_base9precisionEl:
.LFB1124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1124:
	.size	_ZNSt8ios_base9precisionEl, .-_ZNSt8ios_base9precisionEl
	.section	.text._ZNKSt8ios_base5widthEv,"axG",@progbits,_ZNKSt8ios_base5widthEv,comdat
	.align 2
	.weak	_ZNKSt8ios_base5widthEv
	.type	_ZNKSt8ios_base5widthEv, @function
_ZNKSt8ios_base5widthEv:
.LFB1125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1125:
	.size	_ZNKSt8ios_base5widthEv, .-_ZNKSt8ios_base5widthEv
	.section	.text._ZNSt8ios_base5widthEl,"axG",@progbits,_ZNSt8ios_base5widthEl,comdat
	.align 2
	.weak	_ZNSt8ios_base5widthEl
	.type	_ZNSt8ios_base5widthEl, @function
_ZNSt8ios_base5widthEl:
.LFB1126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1126:
	.size	_ZNSt8ios_base5widthEl, .-_ZNSt8ios_base5widthEl
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt14numeric_limitsImE3maxEv,"axG",@progbits,_ZNSt14numeric_limitsImE3maxEv,comdat
	.weak	_ZNSt14numeric_limitsImE3maxEv
	.type	_ZNSt14numeric_limitsImE3maxEv, @function
_ZNSt14numeric_limitsImE3maxEv:
.LFB2006:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2006:
	.size	_ZNSt14numeric_limitsImE3maxEv, .-_ZNSt14numeric_limitsImE3maxEv
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.type	_ZN4armaL4endrE, @object
	.size	_ZN4armaL4endrE, 1
_ZN4armaL4endrE:
	.zero	1
	.local	_ZN4arma4fillL4noneE
	.comm	_ZN4arma4fillL4noneE,1,1
	.local	_ZN4arma4fillL5zerosE
	.comm	_ZN4arma4fillL5zerosE,1,1
	.local	_ZN4arma4fillL4onesE
	.comm	_ZN4arma4fillL4onesE,1,1
	.local	_ZN4arma4fillL3eyeE
	.comm	_ZN4arma4fillL3eyeE,1,1
	.local	_ZN4arma4fillL5randuE
	.comm	_ZN4arma4fillL5randuE,1,1
	.local	_ZN4arma4fillL5randnE
	.comm	_ZN4arma4fillL5randnE,1,1
	.section	.text._ZN4arma10solve_opts4optsC2Ey,"axG",@progbits,_ZN4arma10solve_opts4optsC5Ey,comdat
	.align 2
	.weak	_ZN4arma10solve_opts4optsC2Ey
	.type	_ZN4arma10solve_opts4optsC2Ey, @function
_ZN4arma10solve_opts4optsC2Ey:
.LFB4266:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4266:
	.size	_ZN4arma10solve_opts4optsC2Ey, .-_ZN4arma10solve_opts4optsC2Ey
	.weak	_ZN4arma10solve_opts4optsC1Ey
	.set	_ZN4arma10solve_opts4optsC1Ey,_ZN4arma10solve_opts4optsC2Ey
	.section	.rodata
	.align 8
	.type	_ZN4arma10solve_optsL9flag_noneE, @object
	.size	_ZN4arma10solve_optsL9flag_noneE, 8
_ZN4arma10solve_optsL9flag_noneE:
	.zero	8
	.align 8
	.type	_ZN4arma10solve_optsL9flag_fastE, @object
	.size	_ZN4arma10solve_optsL9flag_fastE, 8
_ZN4arma10solve_optsL9flag_fastE:
	.quad	1
	.align 8
	.type	_ZN4arma10solve_optsL16flag_equilibrateE, @object
	.size	_ZN4arma10solve_optsL16flag_equilibrateE, 8
_ZN4arma10solve_optsL16flag_equilibrateE:
	.quad	2
	.align 8
	.type	_ZN4arma10solve_optsL14flag_no_approxE, @object
	.size	_ZN4arma10solve_optsL14flag_no_approxE, 8
_ZN4arma10solve_optsL14flag_no_approxE:
	.quad	4
	.align 8
	.type	_ZN4arma10solve_optsL9flag_triuE, @object
	.size	_ZN4arma10solve_optsL9flag_triuE, 8
_ZN4arma10solve_optsL9flag_triuE:
	.quad	8
	.align 8
	.type	_ZN4arma10solve_optsL9flag_trilE, @object
	.size	_ZN4arma10solve_optsL9flag_trilE, 8
_ZN4arma10solve_optsL9flag_trilE:
	.quad	16
	.section	.text._ZN4arma10solve_opts9opts_noneC2Ev,"axG",@progbits,_ZN4arma10solve_opts9opts_noneC5Ev,comdat
	.align 2
	.weak	_ZN4arma10solve_opts9opts_noneC2Ev
	.type	_ZN4arma10solve_opts9opts_noneC2Ev, @function
_ZN4arma10solve_opts9opts_noneC2Ev:
.LFB4270:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4arma10solve_opts4optsC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4270:
	.size	_ZN4arma10solve_opts9opts_noneC2Ev, .-_ZN4arma10solve_opts9opts_noneC2Ev
	.weak	_ZN4arma10solve_opts9opts_noneC1Ev
	.set	_ZN4arma10solve_opts9opts_noneC1Ev,_ZN4arma10solve_opts9opts_noneC2Ev
	.section	.text._ZN4arma10solve_opts9opts_fastC2Ev,"axG",@progbits,_ZN4arma10solve_opts9opts_fastC5Ev,comdat
	.align 2
	.weak	_ZN4arma10solve_opts9opts_fastC2Ev
	.type	_ZN4arma10solve_opts9opts_fastC2Ev, @function
_ZN4arma10solve_opts9opts_fastC2Ev:
.LFB4273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN4arma10solve_opts4optsC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4273:
	.size	_ZN4arma10solve_opts9opts_fastC2Ev, .-_ZN4arma10solve_opts9opts_fastC2Ev
	.weak	_ZN4arma10solve_opts9opts_fastC1Ev
	.set	_ZN4arma10solve_opts9opts_fastC1Ev,_ZN4arma10solve_opts9opts_fastC2Ev
	.section	.text._ZN4arma10solve_opts16opts_equilibrateC2Ev,"axG",@progbits,_ZN4arma10solve_opts16opts_equilibrateC5Ev,comdat
	.align 2
	.weak	_ZN4arma10solve_opts16opts_equilibrateC2Ev
	.type	_ZN4arma10solve_opts16opts_equilibrateC2Ev, @function
_ZN4arma10solve_opts16opts_equilibrateC2Ev:
.LFB4276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZN4arma10solve_opts4optsC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4276:
	.size	_ZN4arma10solve_opts16opts_equilibrateC2Ev, .-_ZN4arma10solve_opts16opts_equilibrateC2Ev
	.weak	_ZN4arma10solve_opts16opts_equilibrateC1Ev
	.set	_ZN4arma10solve_opts16opts_equilibrateC1Ev,_ZN4arma10solve_opts16opts_equilibrateC2Ev
	.section	.text._ZN4arma10solve_opts14opts_no_approxC2Ev,"axG",@progbits,_ZN4arma10solve_opts14opts_no_approxC5Ev,comdat
	.align 2
	.weak	_ZN4arma10solve_opts14opts_no_approxC2Ev
	.type	_ZN4arma10solve_opts14opts_no_approxC2Ev, @function
_ZN4arma10solve_opts14opts_no_approxC2Ev:
.LFB4279:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZN4arma10solve_opts4optsC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4279:
	.size	_ZN4arma10solve_opts14opts_no_approxC2Ev, .-_ZN4arma10solve_opts14opts_no_approxC2Ev
	.weak	_ZN4arma10solve_opts14opts_no_approxC1Ev
	.set	_ZN4arma10solve_opts14opts_no_approxC1Ev,_ZN4arma10solve_opts14opts_no_approxC2Ev
	.section	.text._ZN4arma10solve_opts9opts_triuC2Ev,"axG",@progbits,_ZN4arma10solve_opts9opts_triuC5Ev,comdat
	.align 2
	.weak	_ZN4arma10solve_opts9opts_triuC2Ev
	.type	_ZN4arma10solve_opts9opts_triuC2Ev, @function
_ZN4arma10solve_opts9opts_triuC2Ev:
.LFB4282:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ZN4arma10solve_opts4optsC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4282:
	.size	_ZN4arma10solve_opts9opts_triuC2Ev, .-_ZN4arma10solve_opts9opts_triuC2Ev
	.weak	_ZN4arma10solve_opts9opts_triuC1Ev
	.set	_ZN4arma10solve_opts9opts_triuC1Ev,_ZN4arma10solve_opts9opts_triuC2Ev
	.section	.text._ZN4arma10solve_opts9opts_trilC2Ev,"axG",@progbits,_ZN4arma10solve_opts9opts_trilC5Ev,comdat
	.align 2
	.weak	_ZN4arma10solve_opts9opts_trilC2Ev
	.type	_ZN4arma10solve_opts9opts_trilC2Ev, @function
_ZN4arma10solve_opts9opts_trilC2Ev:
.LFB4285:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZN4arma10solve_opts4optsC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4285:
	.size	_ZN4arma10solve_opts9opts_trilC2Ev, .-_ZN4arma10solve_opts9opts_trilC2Ev
	.weak	_ZN4arma10solve_opts9opts_trilC1Ev
	.set	_ZN4arma10solve_opts9opts_trilC1Ev,_ZN4arma10solve_opts9opts_trilC2Ev
	.local	_ZN4arma10solve_optsL4noneE
	.comm	_ZN4arma10solve_optsL4noneE,8,8
	.local	_ZN4arma10solve_optsL4fastE
	.comm	_ZN4arma10solve_optsL4fastE,8,8
	.local	_ZN4arma10solve_optsL11equilibrateE
	.comm	_ZN4arma10solve_optsL11equilibrateE,8,8
	.local	_ZN4arma10solve_optsL9no_approxE
	.comm	_ZN4arma10solve_optsL9no_approxE,8,8
	.local	_ZN4arma10solve_optsL4triuE
	.comm	_ZN4arma10solve_optsL4triuE,8,8
	.local	_ZN4arma10solve_optsL4trilE
	.comm	_ZN4arma10solve_optsL4trilE,8,8
	.section	.text._ZN4arma13gmm_dist_modeC2Ey,"axG",@progbits,_ZN4arma13gmm_dist_modeC5Ey,comdat
	.align 2
	.weak	_ZN4arma13gmm_dist_modeC2Ey
	.type	_ZN4arma13gmm_dist_modeC2Ey, @function
_ZN4arma13gmm_dist_modeC2Ey:
.LFB4288:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4288:
	.size	_ZN4arma13gmm_dist_modeC2Ey, .-_ZN4arma13gmm_dist_modeC2Ey
	.weak	_ZN4arma13gmm_dist_modeC1Ey
	.set	_ZN4arma13gmm_dist_modeC1Ey,_ZN4arma13gmm_dist_modeC2Ey
	.section	.text._ZN4arma13gmm_dist_euclC2Ev,"axG",@progbits,_ZN4arma13gmm_dist_euclC5Ev,comdat
	.align 2
	.weak	_ZN4arma13gmm_dist_euclC2Ev
	.type	_ZN4arma13gmm_dist_euclC2Ev, @function
_ZN4arma13gmm_dist_euclC2Ev:
.LFB4293:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_dist_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4293:
	.size	_ZN4arma13gmm_dist_euclC2Ev, .-_ZN4arma13gmm_dist_euclC2Ev
	.weak	_ZN4arma13gmm_dist_euclC1Ev
	.set	_ZN4arma13gmm_dist_euclC1Ev,_ZN4arma13gmm_dist_euclC2Ev
	.section	.text._ZN4arma13gmm_dist_mahaC2Ev,"axG",@progbits,_ZN4arma13gmm_dist_mahaC5Ev,comdat
	.align 2
	.weak	_ZN4arma13gmm_dist_mahaC2Ev
	.type	_ZN4arma13gmm_dist_mahaC2Ev, @function
_ZN4arma13gmm_dist_mahaC2Ev:
.LFB4296:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_dist_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4296:
	.size	_ZN4arma13gmm_dist_mahaC2Ev, .-_ZN4arma13gmm_dist_mahaC2Ev
	.weak	_ZN4arma13gmm_dist_mahaC1Ev
	.set	_ZN4arma13gmm_dist_mahaC1Ev,_ZN4arma13gmm_dist_mahaC2Ev
	.section	.text._ZN4arma13gmm_dist_probC2Ev,"axG",@progbits,_ZN4arma13gmm_dist_probC5Ev,comdat
	.align 2
	.weak	_ZN4arma13gmm_dist_probC2Ev
	.type	_ZN4arma13gmm_dist_probC2Ev, @function
_ZN4arma13gmm_dist_probC2Ev:
.LFB4299:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_dist_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4299:
	.size	_ZN4arma13gmm_dist_probC2Ev, .-_ZN4arma13gmm_dist_probC2Ev
	.weak	_ZN4arma13gmm_dist_probC1Ev
	.set	_ZN4arma13gmm_dist_probC1Ev,_ZN4arma13gmm_dist_probC2Ev
	.local	_ZN4armaL9eucl_distE
	.comm	_ZN4armaL9eucl_distE,8,8
	.local	_ZN4armaL9maha_distE
	.comm	_ZN4armaL9maha_distE,8,8
	.local	_ZN4armaL9prob_distE
	.comm	_ZN4armaL9prob_distE,8,8
	.section	.text._ZN4arma13gmm_seed_modeC2Ey,"axG",@progbits,_ZN4arma13gmm_seed_modeC5Ey,comdat
	.align 2
	.weak	_ZN4arma13gmm_seed_modeC2Ey
	.type	_ZN4arma13gmm_seed_modeC2Ey, @function
_ZN4arma13gmm_seed_modeC2Ey:
.LFB4302:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4302:
	.size	_ZN4arma13gmm_seed_modeC2Ey, .-_ZN4arma13gmm_seed_modeC2Ey
	.weak	_ZN4arma13gmm_seed_modeC1Ey
	.set	_ZN4arma13gmm_seed_modeC1Ey,_ZN4arma13gmm_seed_modeC2Ey
	.section	.text._ZN4arma22gmm_seed_keep_existingC2Ev,"axG",@progbits,_ZN4arma22gmm_seed_keep_existingC5Ev,comdat
	.align 2
	.weak	_ZN4arma22gmm_seed_keep_existingC2Ev
	.type	_ZN4arma22gmm_seed_keep_existingC2Ev, @function
_ZN4arma22gmm_seed_keep_existingC2Ev:
.LFB4307:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_seed_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4307:
	.size	_ZN4arma22gmm_seed_keep_existingC2Ev, .-_ZN4arma22gmm_seed_keep_existingC2Ev
	.weak	_ZN4arma22gmm_seed_keep_existingC1Ev
	.set	_ZN4arma22gmm_seed_keep_existingC1Ev,_ZN4arma22gmm_seed_keep_existingC2Ev
	.section	.text._ZN4arma22gmm_seed_static_subsetC2Ev,"axG",@progbits,_ZN4arma22gmm_seed_static_subsetC5Ev,comdat
	.align 2
	.weak	_ZN4arma22gmm_seed_static_subsetC2Ev
	.type	_ZN4arma22gmm_seed_static_subsetC2Ev, @function
_ZN4arma22gmm_seed_static_subsetC2Ev:
.LFB4310:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_seed_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4310:
	.size	_ZN4arma22gmm_seed_static_subsetC2Ev, .-_ZN4arma22gmm_seed_static_subsetC2Ev
	.weak	_ZN4arma22gmm_seed_static_subsetC1Ev
	.set	_ZN4arma22gmm_seed_static_subsetC1Ev,_ZN4arma22gmm_seed_static_subsetC2Ev
	.section	.text._ZN4arma22gmm_seed_static_spreadC2Ev,"axG",@progbits,_ZN4arma22gmm_seed_static_spreadC5Ev,comdat
	.align 2
	.weak	_ZN4arma22gmm_seed_static_spreadC2Ev
	.type	_ZN4arma22gmm_seed_static_spreadC2Ev, @function
_ZN4arma22gmm_seed_static_spreadC2Ev:
.LFB4313:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_seed_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4313:
	.size	_ZN4arma22gmm_seed_static_spreadC2Ev, .-_ZN4arma22gmm_seed_static_spreadC2Ev
	.weak	_ZN4arma22gmm_seed_static_spreadC1Ev
	.set	_ZN4arma22gmm_seed_static_spreadC1Ev,_ZN4arma22gmm_seed_static_spreadC2Ev
	.section	.text._ZN4arma22gmm_seed_random_subsetC2Ev,"axG",@progbits,_ZN4arma22gmm_seed_random_subsetC5Ev,comdat
	.align 2
	.weak	_ZN4arma22gmm_seed_random_subsetC2Ev
	.type	_ZN4arma22gmm_seed_random_subsetC2Ev, @function
_ZN4arma22gmm_seed_random_subsetC2Ev:
.LFB4316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_seed_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4316:
	.size	_ZN4arma22gmm_seed_random_subsetC2Ev, .-_ZN4arma22gmm_seed_random_subsetC2Ev
	.weak	_ZN4arma22gmm_seed_random_subsetC1Ev
	.set	_ZN4arma22gmm_seed_random_subsetC1Ev,_ZN4arma22gmm_seed_random_subsetC2Ev
	.section	.text._ZN4arma22gmm_seed_random_spreadC2Ev,"axG",@progbits,_ZN4arma22gmm_seed_random_spreadC5Ev,comdat
	.align 2
	.weak	_ZN4arma22gmm_seed_random_spreadC2Ev
	.type	_ZN4arma22gmm_seed_random_spreadC2Ev, @function
_ZN4arma22gmm_seed_random_spreadC2Ev:
.LFB4319:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZN4arma13gmm_seed_modeC2Ey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4319:
	.size	_ZN4arma22gmm_seed_random_spreadC2Ev, .-_ZN4arma22gmm_seed_random_spreadC2Ev
	.weak	_ZN4arma22gmm_seed_random_spreadC1Ev
	.set	_ZN4arma22gmm_seed_random_spreadC1Ev,_ZN4arma22gmm_seed_random_spreadC2Ev
	.local	_ZN4armaL13keep_existingE
	.comm	_ZN4armaL13keep_existingE,8,8
	.local	_ZN4armaL13static_subsetE
	.comm	_ZN4armaL13static_subsetE,8,8
	.local	_ZN4armaL13static_spreadE
	.comm	_ZN4armaL13static_spreadE,8,8
	.local	_ZN4armaL13random_subsetE
	.comm	_ZN4armaL13random_subsetE,8,8
	.local	_ZN4armaL13random_spreadE
	.comm	_ZN4armaL13random_spreadE,8,8
	.section	.text._ZN4arma15get_stream_err1Ev,"axG",@progbits,_ZN4arma15get_stream_err1Ev,comdat
	.weak	_ZN4arma15get_stream_err1Ev
	.type	_ZN4arma15get_stream_err1Ev, @function
_ZN4arma15get_stream_err1Ev:
.LFB4331:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	_ZN4arma16arma_stream_err1IcEERSoPSo
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4331:
	.size	_ZN4arma15get_stream_err1Ev, .-_ZN4arma15get_stream_err1Ev
	.section	.text._ZN4arma15get_stream_err2Ev,"axG",@progbits,_ZN4arma15get_stream_err2Ev,comdat
	.weak	_ZN4arma15get_stream_err2Ev
	.type	_ZN4arma15get_stream_err2Ev, @function
_ZN4arma15get_stream_err2Ev:
.LFB4332:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	_ZN4arma16arma_stream_err2IcEERSoPSo
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4332:
	.size	_ZN4arma15get_stream_err2Ev, .-_ZN4arma15get_stream_err2Ev
	.section	.rodata
	.align 8
.LC0:
	.string	": incompatible matrix dimensions: "
.LC1:
	.string	" and "
	.text
	.type	_ZN4armaL25arma_incompat_size_stringEyyyyPKc, @function
_ZN4armaL25arma_incompat_size_stringEyyyyPKc:
.LFB4352:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4352
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	%rcx, -448(%rbp)
	movq	%r8, -456(%rbp)
	movq	%r9, -464(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %edx
	leaq	-416(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE0:
	movq	-464(%rbp), %rax
	leaq	-416(%rbp), %rdx
	addq	$16, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdx
	movq	-440(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-448(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdx
	movq	-456(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movq	-424(%rbp), %rax
	leaq	-416(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE1:
	nop
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	movq	-424(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L56
	jmp	.L58
.L57:
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L58:
	call	__stack_chk_fail@PLT
.L56:
	addq	$456, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4352:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4352:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4352-.LLSDACSB4352
.LLSDACSB4352:
	.uleb128 .LEHB0-.LFB4352
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4352
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L57-.LFB4352
	.uleb128 0
	.uleb128 .LEHB2-.LFB4352
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE4352:
	.text
	.size	_ZN4armaL25arma_incompat_size_stringEyyyyPKc, .-_ZN4armaL25arma_incompat_size_stringEyyyyPKc
	.section	.rodata
	.align 8
.LC2:
	.string	": incompatible cube dimensions: "
	.text
	.type	_ZN4armaL25arma_incompat_size_stringEyyyyyyPKc, @function
_ZN4armaL25arma_incompat_size_stringEyyyyyyPKc:
.LFB4353:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4353
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	%rcx, -448(%rbp)
	movq	%r8, -456(%rbp)
	movq	%r9, -464(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %edx
	leaq	-416(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE3:
	movq	-472(%rbp), %rax
	leaq	-416(%rbp), %rdx
	addq	$16, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdx
	movq	-440(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdx
	movq	-448(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-456(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdx
	movq	-464(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZNSolsEy@PLT
	movq	-424(%rbp), %rax
	leaq	-416(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE4:
	nop
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	movq	-424(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L62
	jmp	.L64
.L63:
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L64:
	call	__stack_chk_fail@PLT
.L62:
	addq	$472, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4353:
	.section	.gcc_except_table
.LLSDA4353:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4353-.LLSDACSB4353
.LLSDACSB4353:
	.uleb128 .LEHB3-.LFB4353
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB4353
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L63-.LFB4353
	.uleb128 0
	.uleb128 .LEHB5-.LFB4353
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE4353:
	.text
	.size	_ZN4armaL25arma_incompat_size_stringEyyyyyyPKc, .-_ZN4armaL25arma_incompat_size_stringEyyyyyyPKc
	.section	.text._ZN4arma18arma_ostream_stateC2ERKSo,"axG",@progbits,_ZN4arma18arma_ostream_stateC5ERKSo,comdat
	.align 2
	.weak	_ZN4arma18arma_ostream_stateC2ERKSo
	.type	_ZN4arma18arma_ostream_stateC2ERKSo, @function
_ZN4arma18arma_ostream_stateC2ERKSo:
.LFB5696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt8ios_base5flagsEv
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt8ios_base9precisionEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt8ios_base5widthEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5696:
	.size	_ZN4arma18arma_ostream_stateC2ERKSo, .-_ZN4arma18arma_ostream_stateC2ERKSo
	.weak	_ZN4arma18arma_ostream_stateC1ERKSo
	.set	_ZN4arma18arma_ostream_stateC1ERKSo,_ZN4arma18arma_ostream_stateC2ERKSo
	.section	.text._ZNK4arma18arma_ostream_state7restoreERSo,"axG",@progbits,_ZNK4arma18arma_ostream_state7restoreERSo,comdat
	.align 2
	.weak	_ZNK4arma18arma_ostream_state7restoreERSo
	.type	_ZNK4arma18arma_ostream_state7restoreERSo, @function
_ZNK4arma18arma_ostream_state7restoreERSo:
.LFB5698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSt8ios_base5flagsESt13_Ios_Fmtflags
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt8ios_base9precisionEl
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt8ios_base5widthEl
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5698:
	.size	_ZNK4arma18arma_ostream_state7restoreERSo, .-_ZNK4arma18arma_ostream_state7restoreERSo
	.section	.text._ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE,"axG",@progbits,_ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE,comdat
	.align 2
	.weak	_ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE
	.type	_ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE, @function
_ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE:
.LFB5712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4arma18arma_ostream_stateC1ERKSo
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$2048, %esi
	movq	%rax, %rdi
	call	_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt8ios_base4setfESt13_Ios_Fmtflags
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEy@PLT
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4arma18arma_ostream_state7restoreERSo
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5712:
	.size	_ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE, .-_ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE
	.section	.text._ZN4armalsERSoRKNS_7SizeMatE,"axG",@progbits,_ZN4armalsERSoRKNS_7SizeMatE,comdat
	.weak	_ZN4armalsERSoRKNS_7SizeMatE
	.type	_ZN4armalsERSoRKNS_7SizeMatE, @function
_ZN4armalsERSoRKNS_7SizeMatE:
.LFB5885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4arma12arma_ostream5printERSoRKNS_7SizeMatE
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5885:
	.size	_ZN4armalsERSoRKNS_7SizeMatE, .-_ZN4armalsERSoRKNS_7SizeMatE
	.section	.text._ZN4arma7SizeMatC2Eyy,"axG",@progbits,_ZN4arma7SizeMatC5Eyy,comdat
	.align 2
	.weak	_ZN4arma7SizeMatC2Eyy
	.type	_ZN4arma7SizeMatC2Eyy, @function
_ZN4arma7SizeMatC2Eyy:
.LFB7784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7784:
	.size	_ZN4arma7SizeMatC2Eyy, .-_ZN4arma7SizeMatC2Eyy
	.weak	_ZN4arma7SizeMatC1Eyy
	.set	_ZN4arma7SizeMatC1Eyy,_ZN4arma7SizeMatC2Eyy
	.text
	.globl	main
	.type	main, @function
main:
.LFB9766:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9766
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$3, -236(%rbp)
	movl	-236(%rbp), %eax
	imull	-236(%rbp), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L73
	salq	$3, %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Znam@PLT
	movq	%rax, -232(%rbp)
	movl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movl	-236(%rbp), %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rsi
	leaq	-208(%rbp), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	_ZN4arma3MatIdEC1EPdyybb
.LEHE6:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
.LEHB7:
	call	_ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_
.LEHE7:
	jmp	.L79
.L73:
.LEHB8:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE8:
.L79:
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB9:
	call	_ZN4armalsERSoRKNS_7SizeMatE
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE9:
	movl	$0, %ebx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4arma3MatIdED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L77
	jmp	.L80
.L78:
	movq	%rax, %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4arma3MatIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L80:
	call	__stack_chk_fail@PLT
.L77:
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9766:
	.section	.gcc_except_table
.LLSDA9766:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9766-.LLSDACSB9766
.LLSDACSB9766:
	.uleb128 .LEHB6-.LFB9766
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB9766
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L78-.LFB9766
	.uleb128 0
	.uleb128 .LEHB8-.LFB9766
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB9766
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L78-.LFB9766
	.uleb128 0
	.uleb128 .LEHB10-.LFB9766
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE9766:
	.text
	.size	main, .-main
	.section	.text._ZN4arma4fill10fill_classINS0_9fill_noneEEC2Ev,"axG",@progbits,_ZN4arma4fill10fill_classINS0_9fill_noneEEC5Ev,comdat
	.align 2
	.weak	_ZN4arma4fill10fill_classINS0_9fill_noneEEC2Ev
	.type	_ZN4arma4fill10fill_classINS0_9fill_noneEEC2Ev, @function
_ZN4arma4fill10fill_classINS0_9fill_noneEEC2Ev:
.LFB10030:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10030:
	.size	_ZN4arma4fill10fill_classINS0_9fill_noneEEC2Ev, .-_ZN4arma4fill10fill_classINS0_9fill_noneEEC2Ev
	.weak	_ZN4arma4fill10fill_classINS0_9fill_noneEEC1Ev
	.set	_ZN4arma4fill10fill_classINS0_9fill_noneEEC1Ev,_ZN4arma4fill10fill_classINS0_9fill_noneEEC2Ev
	.section	.text._ZN4arma4fill10fill_classINS0_10fill_zerosEEC2Ev,"axG",@progbits,_ZN4arma4fill10fill_classINS0_10fill_zerosEEC5Ev,comdat
	.align 2
	.weak	_ZN4arma4fill10fill_classINS0_10fill_zerosEEC2Ev
	.type	_ZN4arma4fill10fill_classINS0_10fill_zerosEEC2Ev, @function
_ZN4arma4fill10fill_classINS0_10fill_zerosEEC2Ev:
.LFB10033:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10033:
	.size	_ZN4arma4fill10fill_classINS0_10fill_zerosEEC2Ev, .-_ZN4arma4fill10fill_classINS0_10fill_zerosEEC2Ev
	.weak	_ZN4arma4fill10fill_classINS0_10fill_zerosEEC1Ev
	.set	_ZN4arma4fill10fill_classINS0_10fill_zerosEEC1Ev,_ZN4arma4fill10fill_classINS0_10fill_zerosEEC2Ev
	.section	.text._ZN4arma4fill10fill_classINS0_9fill_onesEEC2Ev,"axG",@progbits,_ZN4arma4fill10fill_classINS0_9fill_onesEEC5Ev,comdat
	.align 2
	.weak	_ZN4arma4fill10fill_classINS0_9fill_onesEEC2Ev
	.type	_ZN4arma4fill10fill_classINS0_9fill_onesEEC2Ev, @function
_ZN4arma4fill10fill_classINS0_9fill_onesEEC2Ev:
.LFB10036:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10036:
	.size	_ZN4arma4fill10fill_classINS0_9fill_onesEEC2Ev, .-_ZN4arma4fill10fill_classINS0_9fill_onesEEC2Ev
	.weak	_ZN4arma4fill10fill_classINS0_9fill_onesEEC1Ev
	.set	_ZN4arma4fill10fill_classINS0_9fill_onesEEC1Ev,_ZN4arma4fill10fill_classINS0_9fill_onesEEC2Ev
	.section	.text._ZN4arma4fill10fill_classINS0_8fill_eyeEEC2Ev,"axG",@progbits,_ZN4arma4fill10fill_classINS0_8fill_eyeEEC5Ev,comdat
	.align 2
	.weak	_ZN4arma4fill10fill_classINS0_8fill_eyeEEC2Ev
	.type	_ZN4arma4fill10fill_classINS0_8fill_eyeEEC2Ev, @function
_ZN4arma4fill10fill_classINS0_8fill_eyeEEC2Ev:
.LFB10039:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10039:
	.size	_ZN4arma4fill10fill_classINS0_8fill_eyeEEC2Ev, .-_ZN4arma4fill10fill_classINS0_8fill_eyeEEC2Ev
	.weak	_ZN4arma4fill10fill_classINS0_8fill_eyeEEC1Ev
	.set	_ZN4arma4fill10fill_classINS0_8fill_eyeEEC1Ev,_ZN4arma4fill10fill_classINS0_8fill_eyeEEC2Ev
	.section	.text._ZN4arma4fill10fill_classINS0_10fill_randuEEC2Ev,"axG",@progbits,_ZN4arma4fill10fill_classINS0_10fill_randuEEC5Ev,comdat
	.align 2
	.weak	_ZN4arma4fill10fill_classINS0_10fill_randuEEC2Ev
	.type	_ZN4arma4fill10fill_classINS0_10fill_randuEEC2Ev, @function
_ZN4arma4fill10fill_classINS0_10fill_randuEEC2Ev:
.LFB10042:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10042:
	.size	_ZN4arma4fill10fill_classINS0_10fill_randuEEC2Ev, .-_ZN4arma4fill10fill_classINS0_10fill_randuEEC2Ev
	.weak	_ZN4arma4fill10fill_classINS0_10fill_randuEEC1Ev
	.set	_ZN4arma4fill10fill_classINS0_10fill_randuEEC1Ev,_ZN4arma4fill10fill_classINS0_10fill_randuEEC2Ev
	.section	.text._ZN4arma4fill10fill_classINS0_10fill_randnEEC2Ev,"axG",@progbits,_ZN4arma4fill10fill_classINS0_10fill_randnEEC5Ev,comdat
	.align 2
	.weak	_ZN4arma4fill10fill_classINS0_10fill_randnEEC2Ev
	.type	_ZN4arma4fill10fill_classINS0_10fill_randnEEC2Ev, @function
_ZN4arma4fill10fill_classINS0_10fill_randnEEC2Ev:
.LFB10045:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10045:
	.size	_ZN4arma4fill10fill_classINS0_10fill_randnEEC2Ev, .-_ZN4arma4fill10fill_classINS0_10fill_randnEEC2Ev
	.weak	_ZN4arma4fill10fill_classINS0_10fill_randnEEC1Ev
	.set	_ZN4arma4fill10fill_classINS0_10fill_randnEEC1Ev,_ZN4arma4fill10fill_classINS0_10fill_randnEEC2Ev
	.weak	_ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1
	.section	.data.rel._ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1,"awG",@progbits,_ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1,comdat
	.align 8
	.type	_ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1, @gnu_unique_object
	.size	_ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1, 8
_ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1:
	.quad	_ZSt4cout
	.section	.text._ZN4arma16arma_stream_err1IcEERSoPSo,"axG",@progbits,_ZN4arma16arma_stream_err1IcEERSoPSo,comdat
	.weak	_ZN4arma16arma_stream_err1IcEERSoPSo
	.type	_ZN4arma16arma_stream_err1IcEERSoPSo, @function
_ZN4arma16arma_stream_err1IcEERSoPSo:
.LFB10083:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L88
	movq	-8(%rbp), %rax
	movq	%rax, _ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1(%rip)
.L88:
	movq	_ZZN4arma16arma_stream_err1IcEERSoPSoE11stream_err1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10083:
	.size	_ZN4arma16arma_stream_err1IcEERSoPSo, .-_ZN4arma16arma_stream_err1IcEERSoPSo
	.weak	_ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2
	.section	.data.rel._ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2,"awG",@progbits,_ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2,comdat
	.align 8
	.type	_ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2, @gnu_unique_object
	.size	_ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2, 8
_ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2:
	.quad	_ZSt4cout
	.section	.text._ZN4arma16arma_stream_err2IcEERSoPSo,"axG",@progbits,_ZN4arma16arma_stream_err2IcEERSoPSo,comdat
	.weak	_ZN4arma16arma_stream_err2IcEERSoPSo
	.type	_ZN4arma16arma_stream_err2IcEERSoPSo, @function
_ZN4arma16arma_stream_err2IcEERSoPSo:
.LFB10084:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L91
	movq	-8(%rbp), %rax
	movq	%rax, _ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2(%rip)
.L91:
	movq	_ZZN4arma16arma_stream_err2IcEERSoPSoE11stream_err2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10084:
	.size	_ZN4arma16arma_stream_err2IcEERSoPSo, .-_ZN4arma16arma_stream_err2IcEERSoPSo
	.section	.rodata
.LC3:
	.string	"\nerror: "
	.text
	.type	_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_, @function
_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_:
.LFB10089:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10089
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	call	_ZN4arma15get_stream_err1Ev
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE11:
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE12:
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB13:
	call	_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE13:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	_ZNSt11logic_errorD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt11logic_error(%rip), %rsi
	movq	%rbx, %rdi
.LEHB14:
	call	__cxa_throw@PLT
.L98:
	movq	%rax, %r12
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L95
.L97:
	movq	%rax, %r12
.L95:
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE14:
	.cfi_endproc
.LFE10089:
	.section	.gcc_except_table
.LLSDA10089:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10089-.LLSDACSB10089
.LLSDACSB10089:
	.uleb128 .LEHB11-.LFB10089
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB10089
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L97-.LFB10089
	.uleb128 0
	.uleb128 .LEHB13-.LFB10089
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L98-.LFB10089
	.uleb128 0
	.uleb128 .LEHB14-.LFB10089
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE10089:
	.text
	.size	_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_, .-_ZN4armaL21arma_stop_logic_errorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_
	.section	.text._ZN4arma3MatIdED2Ev,"axG",@progbits,_ZN4arma3MatIdED5Ev,comdat
	.align 2
	.weak	_ZN4arma3MatIdED2Ev
	.type	_ZN4arma3MatIdED2Ev, @function
_ZN4arma3MatIdED2Ev:
.LFB10142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L100
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$16, %rax
	jbe	.L100
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L100:
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10142:
	.size	_ZN4arma3MatIdED2Ev, .-_ZN4arma3MatIdED2Ev
	.weak	_ZN4arma3MatIdED1Ev
	.set	_ZN4arma3MatIdED1Ev,_ZN4arma3MatIdED2Ev
	.section	.text._ZN4arma8arma_str6formatD2Ev,"axG",@progbits,_ZN4arma8arma_str6formatD5Ev,comdat
	.align 2
	.weak	_ZN4arma8arma_str6formatD2Ev
	.type	_ZN4arma8arma_str6formatD2Ev, @function
_ZN4arma8arma_str6formatD2Ev:
.LFB10146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10146:
	.size	_ZN4arma8arma_str6formatD2Ev, .-_ZN4arma8arma_str6formatD2Ev
	.weak	_ZN4arma8arma_str6formatD1Ev
	.set	_ZN4arma8arma_str6formatD1Ev,_ZN4arma8arma_str6formatD2Ev
	.section	.rodata
.LC4:
	.string	"\nwarning: "
	.text
	.type	_ZN4armaL9arma_warnINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_, @function
_ZN4armaL9arma_warnINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_:
.LFB10245:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err2Ev
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10245:
	.size	_ZN4armaL9arma_warnINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_, .-_ZN4armaL9arma_warnINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_
	.type	_ZN4armaL23arma_stop_runtime_errorIA49_cEEvRKT_, @function
_ZN4armaL23arma_stop_runtime_errorIA49_cEEvRKT_:
.LFB10246:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10246
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	call	_ZN4arma15get_stream_err2Ev
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE15:
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-65(%rbp), %rdx
	movq	-88(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE16:
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB17:
	call	_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE17:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt13runtime_error(%rip), %rsi
	movq	%rbx, %rdi
.LEHB18:
	call	__cxa_throw@PLT
.L111:
	movq	%rax, %r12
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L108
.L110:
	movq	%rax, %r12
.L108:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE18:
	.cfi_endproc
.LFE10246:
	.section	.gcc_except_table
.LLSDA10246:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10246-.LLSDACSB10246
.LLSDACSB10246:
	.uleb128 .LEHB15-.LFB10246
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB10246
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L110-.LFB10246
	.uleb128 0
	.uleb128 .LEHB17-.LFB10246
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L111-.LFB10246
	.uleb128 0
	.uleb128 .LEHB18-.LFB10246
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE10246:
	.text
	.size	_ZN4armaL23arma_stop_runtime_errorIA49_cEEvRKT_, .-_ZN4armaL23arma_stop_runtime_errorIA49_cEEvRKT_
	.section	.text._ZN4arma3MatIdEC2EPdyybb,"axG",@progbits,_ZN4arma3MatIdEC5EPdyybb,comdat
	.align 2
	.weak	_ZN4arma3MatIdEC2EPdyybb
	.type	_ZN4arma3MatIdEC2EPdyybb, @function
_ZN4arma3MatIdEC2EPdyybb:
.LFB10307:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -68(%rbp)
	movl	%edx, %eax
	movb	%al, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 24(%rax)
	cmpb	$0, -68(%rbp)
	je	.L113
	movl	$0, %eax
	jmp	.L114
.L113:
	cmpb	$0, -72(%rbp)
	je	.L115
	movl	$2, %eax
	jmp	.L114
.L115:
	movl	$1, %eax
.L114:
	movq	-40(%rbp), %rdx
	movl	%eax, 28(%rdx)
	cmpb	$0, -68(%rbp)
	je	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-48(%rbp), %rax
.L118:
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	cmpb	$0, -68(%rbp)
	je	.L123
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4arma3MatIdE9init_coldEv
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	%rax, -16(%rbp)
	cmpq	$9, -16(%rbp)
	ja	.L121
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y
	jmp	.L123
.L121:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L123:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10307:
	.size	_ZN4arma3MatIdEC2EPdyybb, .-_ZN4arma3MatIdEC2EPdyybb
	.weak	_ZN4arma3MatIdEC1EPdyybb
	.set	_ZN4arma3MatIdEC1EPdyybb,_ZN4arma3MatIdEC2EPdyybb
	.section	.text._ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_,"axG",@progbits,_ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_,comdat
	.weak	_ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_
	.type	_ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_, @function
_ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_:
.LFB10309:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4arma5ProxyINS_3MatIdEEEC1ERKS2_
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4arma7SizeMatC1Eyy
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L128
	call	__stack_chk_fail@PLT
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10309:
	.size	_ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_, .-_ZN4arma4sizeINS_3MatIdEEEENS_10enable_if2IXsrNS_12is_arma_typeIT_EE5valueEKNS_7SizeMatEE6resultERKS5_
	.section	.rodata
	.align 8
.LC5:
	.string	"Mat::init(): requested size is too large"
	.section	.text._ZN4arma3MatIdE9init_coldEv,"axG",@progbits,_ZN4arma3MatIdE9init_coldEv,comdat
	.align 2
	.weak	_ZN4arma3MatIdE9init_coldEv
	.type	_ZN4arma3MatIdE9init_coldEv, @function
_ZN4arma3MatIdE9init_coldEv:
.LFB10494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	testb	%al, %al
	je	.L130
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4arma8arma_str6formatD1Ev
.L130:
	leaq	.LC5(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	ja	.L131
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	jbe	.L132
.L131:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	js	.L133
	cvtsi2sdq	%rax, %xmm1
	jmp	.L134
.L133:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
.L134:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	js	.L135
	cvtsi2sdq	%rax, %xmm0
	jmp	.L136
.L135:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L136:
	mulsd	%xmm1, %xmm0
	ucomisd	.LC6(%rip), %xmm0
	jbe	.L132
	movl	$1, %eax
	jmp	.L138
.L132:
	movl	$0, %eax
.L138:
	movzbl	%al, %eax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZN4arma10arma_checkIPKcEEvbRKT_
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$16, %rax
	ja	.L139
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	movq	-120(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L148
.L140:
	movq	-120(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdx, (%rax)
	jmp	.L148
.L139:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	-120(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rbx
	movq	%rax, %rdi
	call	_ZN4arma6memory7acquireIdEEPT_y
	movq	%rax, (%rbx)
.L148:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L146
	call	__stack_chk_fail@PLT
.L146:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10494:
	.size	_ZN4arma3MatIdE9init_coldEv, .-_ZN4arma3MatIdE9init_coldEv
	.text
	.type	_ZN4arma8arma_strL11str_wrapperIcEEPKT_S4_PKNS0_9char_onlyIS2_E6resultE, @function
_ZN4arma8arma_strL11str_wrapperIcEEPKT_S4_PKNS0_9char_onlyIS2_E6resultE:
.LFB10496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10496:
	.size	_ZN4arma8arma_strL11str_wrapperIcEEPKT_S4_PKNS0_9char_onlyIS2_E6resultE, .-_ZN4arma8arma_strL11str_wrapperIcEEPKT_S4_PKNS0_9char_onlyIS2_E6resultE
	.type	_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_, @function
_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_:
.LFB10497:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10497
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	call	_ZN4arma15get_stream_err1Ev
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE19:
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-65(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE20:
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB21:
	call	_ZNSt11logic_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE21:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	_ZNSt11logic_errorD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt11logic_error(%rip), %rsi
	movq	%rbx, %rdi
.LEHB22:
	call	__cxa_throw@PLT
.L156:
	movq	%rax, %r12
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L153
.L155:
	movq	%rax, %r12
.L153:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE22:
	.cfi_endproc
.LFE10497:
	.section	.gcc_except_table
.LLSDA10497:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10497-.LLSDACSB10497
.LLSDACSB10497:
	.uleb128 .LEHB19-.LFB10497
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB10497
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L155-.LFB10497
	.uleb128 0
	.uleb128 .LEHB21-.LFB10497
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L156-.LFB10497
	.uleb128 0
	.uleb128 .LEHB22-.LFB10497
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE10497:
	.text
	.size	_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_, .-_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_
	.type	_ZN4armaL10arma_printIA27_cEEvRKT_, @function
_ZN4armaL10arma_printIA27_cEEvRKT_:
.LFB10511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10511:
	.size	_ZN4armaL10arma_printIA27_cEEvRKT_, .-_ZN4armaL10arma_printIA27_cEEvRKT_
	.section	.text._ZN4arma5ProxyINS_3MatIdEEEC2ERKS2_,"axG",@progbits,_ZN4arma5ProxyINS_3MatIdEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN4arma5ProxyINS_3MatIdEEEC2ERKS2_
	.type	_ZN4arma5ProxyINS_3MatIdEEEC2ERKS2_, @function
_ZN4arma5ProxyINS_3MatIdEEEC2ERKS2_:
.LFB10609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10609:
	.size	_ZN4arma5ProxyINS_3MatIdEEEC2ERKS2_, .-_ZN4arma5ProxyINS_3MatIdEEEC2ERKS2_
	.weak	_ZN4arma5ProxyINS_3MatIdEEEC1ERKS2_
	.set	_ZN4arma5ProxyINS_3MatIdEEEC1ERKS2_,_ZN4arma5ProxyINS_3MatIdEEEC2ERKS2_
	.section	.text._ZN4arma10arma_checkIPKcEEvbRKT_,"axG",@progbits,_ZN4arma10arma_checkIPKcEEvbRKT_,comdat
	.weak	_ZN4arma10arma_checkIPKcEEvbRKT_
	.type	_ZN4arma10arma_checkIPKcEEvbRKT_, @function
_ZN4arma10arma_checkIPKcEEvbRKT_:
.LFB10688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movb	%al, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpb	$0, -20(%rbp)
	je	.L162
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4arma8arma_strL11str_wrapperIcEEPKT_S4_PKNS0_9char_onlyIS2_E6resultE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_
.L162:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L161
	call	__stack_chk_fail@PLT
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10688:
	.size	_ZN4arma10arma_checkIPKcEEvbRKT_, .-_ZN4arma10arma_checkIPKcEEvbRKT_
	.text
	.type	_ZN4armaL10arma_printIA32_cEEvRKT_, @function
_ZN4armaL10arma_printIA32_cEEvRKT_:
.LFB10689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10689:
	.size	_ZN4armaL10arma_printIA32_cEEvRKT_, .-_ZN4armaL10arma_printIA32_cEEvRKT_
	.type	_ZN4armaL10arma_printIA30_cEEvRKT_, @function
_ZN4armaL10arma_printIA30_cEEvRKT_:
.LFB10690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10690:
	.size	_ZN4armaL10arma_printIA30_cEEvRKT_, .-_ZN4armaL10arma_printIA30_cEEvRKT_
	.section	.rodata
	.align 8
.LC7:
	.string	"arma::memory::acquire(): requested size is too large"
	.align 8
.LC8:
	.string	"arma::memory::acquire(): out of memory"
	.section	.text._ZN4arma6memory7acquireIdEEPT_y,"axG",@progbits,_ZN4arma6memory7acquireIdEEPT_y,comdat
	.align 2
	.weak	_ZN4arma6memory7acquireIdEEPT_y
	.type	_ZN4arma6memory7acquireIdEEPT_y, @function
_ZN4arma6memory7acquireIdEEPT_y:
.LFB10691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt14numeric_limitsImE3maxEv
	shrq	$3, %rax
	cmpq	%rax, -56(%rbp)
	seta	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rsi
	movl	%eax, %edi
	call	_ZN4arma10arma_checkIA53_cEEvbRKT_
	movq	$16, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	-32(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	posix_memalign@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L166
	movq	-32(%rbp), %rax
	jmp	.L167
.L166:
	movl	$0, %eax
.L167:
	movq	%rax, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L168
	cmpq	$0, -16(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rsi
	movl	%eax, %edi
	call	_ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_
.L168:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L170
	call	__stack_chk_fail@PLT
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10691:
	.size	_ZN4arma6memory7acquireIdEEPT_y, .-_ZN4arma6memory7acquireIdEEPT_y
	.section	.text._ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y,"axG",@progbits,_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y,comdat
	.align 2
	.weak	_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y
	.type	_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y, @function
_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y:
.LFB10692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$9, -24(%rbp)
	ja	.L183
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	.L174(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L174(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata._ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y,"aG",@progbits,_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y,comdat
	.align 4
	.align 4
.L174:
	.long	.L183-.L174
	.long	.L173-.L174
	.long	.L175-.L174
	.long	.L176-.L174
	.long	.L177-.L174
	.long	.L178-.L174
	.long	.L179-.L174
	.long	.L180-.L174
	.long	.L181-.L174
	.long	.L182-.L174
	.section	.text._ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y,"axG",@progbits,_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y,comdat
.L182:
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L181:
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L180:
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L179:
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L178:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L177:
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L176:
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L175:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L173:
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
.L183:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10692:
	.size	_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y, .-_ZN4arma8arrayops10copy_smallIdEEvPT_PKS2_y
	.text
	.type	_ZN4armaL10arma_printIA46_cEEvRKT_, @function
_ZN4armaL10arma_printIA46_cEEvRKT_:
.LFB10701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10701:
	.size	_ZN4armaL10arma_printIA46_cEEvRKT_, .-_ZN4armaL10arma_printIA46_cEEvRKT_
	.section	.text._ZN4arma10arma_checkIA53_cEEvbRKT_,"axG",@progbits,_ZN4arma10arma_checkIA53_cEEvbRKT_,comdat
	.weak	_ZN4arma10arma_checkIA53_cEEvbRKT_
	.type	_ZN4arma10arma_checkIA53_cEEvbRKT_, @function
_ZN4arma10arma_checkIA53_cEEvbRKT_:
.LFB10758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movb	%al, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpb	$0, -20(%rbp)
	je	.L188
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4arma8arma_strL11str_wrapperIcEEPKT_S4_PKNS0_9char_onlyIS2_E6resultE
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4armaL21arma_stop_logic_errorIPKcEEvRKT_
.L188:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L187
	call	__stack_chk_fail@PLT
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10758:
	.size	_ZN4arma10arma_checkIA53_cEEvbRKT_, .-_ZN4arma10arma_checkIA53_cEEvbRKT_
	.section	.text._ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_,"axG",@progbits,_ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_,comdat
	.weak	_ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_
	.type	_ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_, @function
_ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_:
.LFB10759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	cmpb	$0, -4(%rbp)
	je	.L191
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_
.L191:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10759:
	.size	_ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_, .-_ZN4arma20arma_check_bad_allocIA39_cEEvbRKT_
	.text
	.type	_ZN4armaL10arma_printIA28_cEEvRKT_, @function
_ZN4armaL10arma_printIA28_cEEvRKT_:
.LFB10845:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10845:
	.size	_ZN4armaL10arma_printIA28_cEEvRKT_, .-_ZN4armaL10arma_printIA28_cEEvRKT_
	.type	_ZN4armaL10arma_printIA33_cEEvRKT_, @function
_ZN4armaL10arma_printIA33_cEEvRKT_:
.LFB10860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10860:
	.size	_ZN4armaL10arma_printIA33_cEEvRKT_, .-_ZN4armaL10arma_printIA33_cEEvRKT_
	.type	_ZN4armaL10arma_printIA31_cEEvRKT_, @function
_ZN4armaL10arma_printIA31_cEEvRKT_:
.LFB10861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10861:
	.size	_ZN4armaL10arma_printIA31_cEEvRKT_, .-_ZN4armaL10arma_printIA31_cEEvRKT_
	.type	_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_, @function
_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_:
.LFB10883:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	call	_ZN4arma15get_stream_err2Ev
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	call	_ZNSt9bad_allocC1Ev
	movq	_ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt9bad_alloc(%rip), %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE10883:
	.size	_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_, .-_ZN4armaL19arma_stop_bad_allocIA39_cEEvRKT_
	.type	_ZN4armaL10arma_printIA29_cEEvRKT_, @function
_ZN4armaL10arma_printIA29_cEEvRKT_:
.LFB10952:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN4arma15get_stream_err1Ev
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10952:
	.size	_ZN4armaL10arma_printIA29_cEEvRKT_, .-_ZN4armaL10arma_printIA29_cEEvRKT_
	.type	_ZN4armaL19arma_stop_bad_allocIA29_cEEvRKT_, @function
_ZN4armaL19arma_stop_bad_allocIA29_cEEvRKT_:
.LFB10974:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	call	_ZN4arma15get_stream_err2Ev
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	call	_ZNSt9bad_allocC1Ev
	movq	_ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt9bad_alloc(%rip), %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE10974:
	.size	_ZN4armaL19arma_stop_bad_allocIA29_cEEvRKT_, .-_ZN4armaL19arma_stop_bad_allocIA29_cEEvRKT_
	.type	_ZN4armaL19arma_stop_bad_allocIA34_cEEvRKT_, @function
_ZN4armaL19arma_stop_bad_allocIA34_cEEvRKT_:
.LFB10998:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	call	_ZN4arma15get_stream_err2Ev
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	call	_ZNSt9bad_allocC1Ev
	movq	_ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt9bad_alloc(%rip), %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE10998:
	.size	_ZN4armaL19arma_stop_bad_allocIA34_cEEvRKT_, .-_ZN4armaL19arma_stop_bad_allocIA34_cEEvRKT_
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11012:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L201
	cmpl	$65535, -8(%rbp)
	jne	.L201
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
	leaq	_ZN4arma4fillL4noneE(%rip), %rdi
	call	_ZN4arma4fill10fill_classINS0_9fill_noneEEC1Ev
	leaq	_ZN4arma4fillL5zerosE(%rip), %rdi
	call	_ZN4arma4fill10fill_classINS0_10fill_zerosEEC1Ev
	leaq	_ZN4arma4fillL4onesE(%rip), %rdi
	call	_ZN4arma4fill10fill_classINS0_9fill_onesEEC1Ev
	leaq	_ZN4arma4fillL3eyeE(%rip), %rdi
	call	_ZN4arma4fill10fill_classINS0_8fill_eyeEEC1Ev
	leaq	_ZN4arma4fillL5randuE(%rip), %rdi
	call	_ZN4arma4fill10fill_classINS0_10fill_randuEEC1Ev
	leaq	_ZN4arma4fillL5randnE(%rip), %rdi
	call	_ZN4arma4fill10fill_classINS0_10fill_randnEEC1Ev
	leaq	_ZN4arma10solve_optsL4noneE(%rip), %rdi
	call	_ZN4arma10solve_opts9opts_noneC1Ev
	leaq	_ZN4arma10solve_optsL4fastE(%rip), %rdi
	call	_ZN4arma10solve_opts9opts_fastC1Ev
	leaq	_ZN4arma10solve_optsL11equilibrateE(%rip), %rdi
	call	_ZN4arma10solve_opts16opts_equilibrateC1Ev
	leaq	_ZN4arma10solve_optsL9no_approxE(%rip), %rdi
	call	_ZN4arma10solve_opts14opts_no_approxC1Ev
	leaq	_ZN4arma10solve_optsL4triuE(%rip), %rdi
	call	_ZN4arma10solve_opts9opts_triuC1Ev
	leaq	_ZN4arma10solve_optsL4trilE(%rip), %rdi
	call	_ZN4arma10solve_opts9opts_trilC1Ev
	leaq	_ZN4armaL9eucl_distE(%rip), %rdi
	call	_ZN4arma13gmm_dist_euclC1Ev
	leaq	_ZN4armaL9maha_distE(%rip), %rdi
	call	_ZN4arma13gmm_dist_mahaC1Ev
	leaq	_ZN4armaL9prob_distE(%rip), %rdi
	call	_ZN4arma13gmm_dist_probC1Ev
	leaq	_ZN4armaL13keep_existingE(%rip), %rdi
	call	_ZN4arma22gmm_seed_keep_existingC1Ev
	leaq	_ZN4armaL13static_subsetE(%rip), %rdi
	call	_ZN4arma22gmm_seed_static_subsetC1Ev
	leaq	_ZN4armaL13static_spreadE(%rip), %rdi
	call	_ZN4arma22gmm_seed_static_spreadC1Ev
	leaq	_ZN4armaL13random_subsetE(%rip), %rdi
	call	_ZN4arma22gmm_seed_random_subsetC1Ev
	leaq	_ZN4armaL13random_spreadE(%rip), %rdi
	call	_ZN4arma22gmm_seed_random_spreadC1Ev
.L201:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11012:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11014:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11014:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 8
.LC6:
	.long	0
	.long	1139802112
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3.2) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
