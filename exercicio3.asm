.data

	fatorial: .asciiz "Informe um valor:"
	resultado: .asciiz "O resultado é:"
.text

main:

	li $v0, 4
	la $a0, fatorial
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	addi $t2, $zero, 0

	loop: beq $t0, $t2, final
	      subu $t1, $t0, 1
	      mul $t0, $t0, $t1
	      j loop
	      

	final: 

	li $v0, 4
	la $a0, resultado
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	jr $ra
	
	