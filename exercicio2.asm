.data
	str1: .asciiz "Digite o valor A:"
	str2: .asciiz "\nDigite o valor B:"
	str3: .asciiz "\nDigite o valor C:"
	str4: .asciiz "\nDigite o valor D:"
	str5: .asciiz "\n\nO resultado é:"


.text

main:
	li $v0, 4
	la $a0, str1
	syscall

	li $v0, 5
	syscall
	move $t1, $v0

	li $v0, 4
	la $a0, str2
	syscall

	li $v0, 5
	syscall
	move $t2, $v0

	li $v0, 4
	la $a0, str3
	syscall

	li $v0, 5
	syscall
	move $t3, $v0

	li $v0, 4
	la $a0, str4
	syscall

	li $v0, 5
	syscall
	move $t4, $v0

	sub $s1, $t1, $t2
	sub $s2, $t3, $t4
	add $s3, $s1, $s2

	li $v0, 4
	la $a0, str5
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	jr $ra
	




	