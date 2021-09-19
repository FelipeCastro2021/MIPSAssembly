#Se o número informado for positivo duplique-o, senão triplique-o
.data
	escreva00: .asciiz"Informe um numero: "
.text
main:
	li $v0, 4
	la $a0, escreva00
	syscall

	li $v0, 5
	syscall
	
	add $t0, $v0, 0

	bgt $t0, 0, entao
	j senao 

entao:
	mul $t1, $t0, 2
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	j fimse

senao:
	mul $t1, $t0, 3

	li $v0, 1
	add $a0, $t1, 0
	syscall

fimse: