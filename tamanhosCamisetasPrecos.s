#Calcular o valor total das camisetas
.data
	escreva00: .asciiz"Insira quantas camisetas pequenas comprou = "
	escreva01: .asciiz"Insira quantas Camisetas medias comprou = "
	escreva02: .asciiz"Insira quantas Camisetas grandes comprou = "
	escreva03: .asciiz"Valor total = "
.text
main:
	#Camisetas pequenas
	li $v0, 4
	la $a0, escreva00
	syscall

	li $v0, 5
	syscall

	add $t0, $v0, 0

	#Camisetas medias
	li $v0, 4
	la $a0, escreva01
	syscall

	li $v0, 5
	syscall

	add $t1, $v0, 0

	#Camisetas grandes
	li $v0, 4
	la $a0, escreva02
	syscall

	li $v0, 5
	syscall

	add $t2, $v0, 0

	#Somar valores
	mul $t0, $t0, 10
	mul $t1, $t1, 12
	mul $t2, $t2, 15
	
	add $t3, $t0, $t1
	add $t3, $t3, $t2

	#Escrever mensagem do resultado
	li $v0, 4
	la $a0, escreva03
	syscall

	#Exibir resultado
	li $v0, 1
	add $a0, $t3, 0
	syscall