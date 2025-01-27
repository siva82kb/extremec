	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	wzr, [x29, #-32]
	stur	w0, [x29, #-36]
	str	x1, [sp, #32]
	sub	x0, x29, #28
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	w8, #10                         ; =0xa
	stur	w8, [x29, #-28]
	mov	w8, #3                          ; =0x3
	stur	w8, [x29, #-24]
	mov	w1, #5                          ; =0x5
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	stur	w1, [x29, #-28]
	mov	w8, #-8                         ; =0xfffffff8
	stur	w8, [x29, #-28]
	mov	w8, #9                          ; =0x9
	stur	w8, [x29, #-28]
	mov	w2, #1                          ; =0x1
	bl	_avg
	str	d0, [sp, #24]
	ldr	d0, [sp, #24]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	w2, #2                          ; =0x2
	bl	_avg
	str	d0, [sp, #24]
	ldr	d0, [sp, #24]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"The average: %f\n"

l_.str.1:                               ; @.str.1
	.asciz	"The squared average: %f\n"

.subsections_via_symbols
