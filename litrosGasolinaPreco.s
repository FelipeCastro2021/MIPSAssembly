#Fazer um algoritmo que calcula a quantidade de litros a partir do preço
.data #Cadeias pequenas de caracteres
	escreva00: .asciiz"Preco gasolina = " 
	escreva01: .asciiz"Litros = "
.text #Cadeias grandes de caracteres
main: #Inicio do código Assembly
	li $v0, 4 	#Escreve valor
	la $a0, escreva00	#Mostra a mensagem de escreve
	syscall 	#interrupção

	#Ler valor digitado
	li $v0, 5	#Lê valor inteiro
	syscall

	#Passar valor de $v0 para $t0
	add $t0, $v0, 0 #Soma o valor de $v0 + 0, ou seja, $v0

	#Divisão
	div $t1, $t0, 6 #Faz a divisão por 6 do valor em reais

	#Escrever no console
	li $v0, 4
	la $a0, escreva01
	syscall
	

	#Escrever no Console a Quantidade de litros
	li $v0, 1 #Escreve valor inteiro
	add $a0, $t1, 0
	syscall 	#Interrupção	