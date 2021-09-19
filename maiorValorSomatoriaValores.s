#Verifica se a soma dos primeiros valores é maior que o terceiro valor
.data
	escreva00: .asciiz"Informe o valor de A =\n" 
	escreva01: .asciiz"Informe o valor de B =\n"
	escreva02: .asciiz"Informe o valor de C =\n"
	escreva03: .asciiz"Soma de A + B é menor que C"
.text
main:
	#Escrevendo, lendo e atribuindo a um registrador o valor de A
	li $v0, 4
	la $a0, escreva00
	syscall

	li $v0, 5
	syscall

	add $t0, $v0, 0	

	#Escrevendo, lendo e atribuindo a um registrador o valor de B
	li $v0, 4
	la $a0, escreva01
	syscall

	li $v0, 5
	syscall

	add $t1, $v0, 0	

	#Escrevendo, lendo e atribuindo a um registrador o valor de C
	li $v0, 4
	la $a0, escreva02
	syscall

	li $v0, 5
	syscall

	add $t2, $v0, 0	

	#Soma dos valores A e B
	add $t3, $t0, $t1

	#A soma de A + B < C
	blt $t3, $t2, entao
	j fimse

entao:
	li $v0, 4	
	la $a0, escreva03
	syscall

fimse: