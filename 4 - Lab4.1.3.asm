.data 

.text globl main
main:

li $t0, 0
li $t1, 5
li $a0, '*'
li $v0, 11

LOOP:
	syscall
	addi $t0, $t0, 1
	bne $t0, $t1, LOOP
	j EXIT

EXIT:
	li $v0,10
	syscall
	