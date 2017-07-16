.data

str1: .asciiz "Digite um numero:"
str2: .asciiz "\n\nDigite outro numero:"
maior: .asciiz "\n\nO primeiro valor é maior!"
menor: .asciiz "\n\nO segundo valor é maior!"

.text
main:
	
	li $v0, 4	#trecho para imprimir uma string na tela
	la $a0, str1
	syscall

	li $v0, 5	#trecho para ler um numero da tela
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, str2
	syscall

	li $v0, 5
	syscall
	move $t1, $v0

	sgt $a0, $t0, $t1

	beqz $a0, zero
	um: li $v0, 4
	    la $a0, maior
	    syscall

	    j final 



	zero: li $v0, 4
	      la $a0, menor
	      syscall



	final:

	jr $ra

	