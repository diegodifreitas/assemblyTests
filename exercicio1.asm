.data
str: .asciiz "FAI-2014 - SI - OAC-1º ano \nVALOR= "
tx1: .asciiz "\n\nDigite um numero:"
tx2: .asciiz "\n\nDigite outro numero:"
tx3: .asciiz "\n\nSoma= "
tx4: .asciiz "\n\n\nFim do Programa"

.text
main:

	li $v0, 4
	la $a0, str
	syscall 	#imprime titulo(str)

	li $v0, 1
	li $a0, 0xF5
	syscall		#imprime 0xf5 em decimal
	
	li $v0, 4
	la $a0, tx1
	syscall		#imprime tx1
	
	li $v0, 5
	syscall		#le o 1º numero
	move $t0, $v0	#$t0 = numero lido

	li $v0, 4
	la $a0, tx2
	syscall

	li $v0, 5
	syscall		#le o 2º numero
	move $t1, $v0	#$t1 = numero lido

	li $v0, 4
	la $a0, tx3
	syscall

	add $a0, $t0, $t1	#soma numeros
	li $v0, 1
	syscall			#imprime soma

	li $v0, 4
	la $a0, tx4
	syscall 	#imprime Fim do Programa

	jr $ra