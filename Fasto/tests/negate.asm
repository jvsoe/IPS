	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _a__str__8_
# was:	la	_a__str__8__addr, _a__str__8_
	ori	$10, $0, 1
# was:	ori	_a__str__8__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_a__str__8__init, 0(_a__str__8__addr)
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function write_nl
write_nl:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_b_1_, 2, 0
# 	ori	_tmp_4_,_param_b_1_,0
# 	ori	_letBind_3_,_tmp_4_,0
	la	$2, _true
# was:	la	2, _true
	bne	$16, $0, _wBoolF_5_
# was:	bne	_letBind_3_, 0, _wBoolF_5_
	la	$2, _false
# was:	la	2, _false
_wBoolF_5_:
	jal	putstring
# was:	jal	putstring, 2
	la	$2, _a__str__8_
# was:	la	_tmp_7_, _a__str__8_
# _a__str__8_: string "\n"
# 	ori	_letBind_6_,_tmp_7_,0
# 	ori	2,_tmp_7_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_write_nlres_2_,_letBind_3_,0
	ori	$2, $16, 0
# was:	ori	2, _write_nlres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$22, -32($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -36
	ori	$11, $0, 3
# was:	ori	_divide_L_14_, 0, 3
	ori	$10, $0, 2
# was:	ori	_divide_R_15_, 0, 2
	div	$10, $11, $10
# was:	div	_eq_L_12_, _divide_L_14_, _divide_R_15_
	ori	$11, $0, 1
# was:	ori	_eq_R_13_, 0, 1
	ori	$2, $0, 0
# was:	ori	_arg_11_, 0, 0
	bne	$10, $11, _false_16_
# was:	bne	_eq_L_12_, _eq_R_13_, _false_16_
	ori	$2, $0, 1
# was:	ori	_arg_11_, 0, 1
_false_16_:
# 	ori	2,_arg_11_,0
	jal	write_nl
# was:	jal	write_nl, 2
	ori	$18, $2, 0
# was:	ori	_letBind_10_, 2, 0
	ori	$10, $0, 3
# was:	ori	_negate_23_, 0, 3
	addi	$22, $22, 0
# was:	addi	_divide_L_21_, _divide_L_21_, 0
	sub	$22, $22, $10
# was:	sub	_divide_L_21_, _divide_L_21_, _negate_23_
	ori	$10, $0, 2
# was:	ori	_divide_R_22_, 0, 2
	div	$10, $22, $10
# was:	div	_eq_L_19_, _divide_L_21_, _divide_R_22_
	ori	$11, $0, 2
# was:	ori	_negate_24_, 0, 2
	addi	$21, $21, 0
# was:	addi	_eq_R_20_, _eq_R_20_, 0
	sub	$21, $21, $11
# was:	sub	_eq_R_20_, _eq_R_20_, _negate_24_
	ori	$2, $0, 0
# was:	ori	_arg_18_, 0, 0
	bne	$10, $21, _false_25_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_25_
	ori	$2, $0, 1
# was:	ori	_arg_18_, 0, 1
_false_25_:
# 	ori	2,_arg_18_,0
	jal	write_nl
# was:	jal	write_nl, 2
	ori	$21, $2, 0
# was:	ori	_letBind_17_, 2, 0
	ori	$10, $0, 3
# was:	ori	_divide_L_30_, 0, 3
	ori	$11, $0, 2
# was:	ori	_negate_32_, 0, 2
	addi	$20, $20, 0
# was:	addi	_divide_R_31_, _divide_R_31_, 0
	sub	$20, $20, $11
# was:	sub	_divide_R_31_, _divide_R_31_, _negate_32_
	div	$10, $10, $20
# was:	div	_eq_L_28_, _divide_L_30_, _divide_R_31_
	ori	$11, $0, 2
# was:	ori	_negate_33_, 0, 2
	addi	$19, $19, 0
# was:	addi	_eq_R_29_, _eq_R_29_, 0
	sub	$19, $19, $11
# was:	sub	_eq_R_29_, _eq_R_29_, _negate_33_
	ori	$2, $0, 0
# was:	ori	_arg_27_, 0, 0
	bne	$10, $19, _false_34_
# was:	bne	_eq_L_28_, _eq_R_29_, _false_34_
	ori	$2, $0, 1
# was:	ori	_arg_27_, 0, 1
_false_34_:
# 	ori	2,_arg_27_,0
	jal	write_nl
# was:	jal	write_nl, 2
	ori	$19, $2, 0
# was:	ori	_letBind_26_, 2, 0
	ori	$10, $0, 3
# was:	ori	_negate_41_, 0, 3
	addi	$16, $16, 0
# was:	addi	_divide_L_39_, _divide_L_39_, 0
	sub	$16, $16, $10
# was:	sub	_divide_L_39_, _divide_L_39_, _negate_41_
	ori	$10, $0, 2
# was:	ori	_negate_42_, 0, 2
	addi	$17, $17, 0
# was:	addi	_divide_R_40_, _divide_R_40_, 0
	sub	$17, $17, $10
# was:	sub	_divide_R_40_, _divide_R_40_, _negate_42_
	div	$10, $16, $17
# was:	div	_eq_L_37_, _divide_L_39_, _divide_R_40_
	ori	$11, $0, 1
# was:	ori	_eq_R_38_, 0, 1
	ori	$2, $0, 0
# was:	ori	_arg_36_, 0, 0
	bne	$10, $11, _false_43_
# was:	bne	_eq_L_37_, _eq_R_38_, _false_43_
	ori	$2, $0, 1
# was:	ori	_arg_36_, 0, 1
_false_43_:
# 	ori	2,_arg_36_,0
	jal	write_nl
# was:	jal	write_nl, 2
# 	ori	_letBind_35_,2,0
# 	ori	_and_L_47_,_letBind_10_,0
# 	ori	_and_R_48_,_letBind_17_,0
	and	$10, $18, $21
# was:	and	_and_L_46_, _and_L_47_, _and_R_48_
# 	ori	_and_R_49_,_letBind_26_,0
	and	$10, $10, $19
# was:	and	_and_L_45_, _and_L_46_, _and_R_49_
# 	ori	_and_R_50_,_letBind_35_,0
	and	$2, $10, $2
# was:	and	_arg_44_, _and_L_45_, _and_R_50_
# 	ori	2,_arg_44_,0
	jal	write_nl
# was:	jal	write_nl, 2
# 	ori	_mainres_9_,2,0
# 	ori	2,_mainres_9_,0
	addi	$29, $29, 36
	lw	$22, -32($29)
	lw	$21, -28($29)
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_a__str__8_:
	.space	4
	.asciiz	"\n"
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000