.data
	escreva00: .asciiz"Insira um numero: "
	escreva01: .asciiz"Quadrado = "
	escreva02: .asciiz"\n"
.text
main:
	li $t2, 1	

enquanto:
	li $v0, 4
	la $a0, escreva00	
	syscall

	li $v0, 5
	syscall

	add $t0, $v0, 0

	mul $t1, $t0, $t0

	li $v0, 4
	la $a0, escreva01
	syscall

	li $v0, 1
	add $a0, $t1, 0
	syscall

	li $v0, 4
	la $a0, escreva02
	syscall

	add $t2, $t2, 1

	ble $t2, 5, enquanto