.data 

.text globl main
main:

li $v0, 5
syscall

li $t0, 0
move $t1, $v0
li $v0, 11
la $a0, '*'

LOOP:
	syscall
	addi $t0, $t0, 1
	bne $t0, $t1, LOOP
	j EXIT

EXIT:
	li $v0, 10
	syscall
	
