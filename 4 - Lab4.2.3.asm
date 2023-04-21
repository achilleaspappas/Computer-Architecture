.data

list: .word 1, 15, 0, -3, 99, 48, -17, -9, 20, 15
size: .word 40

.text globl main
main:

li $t1, 0
lw $t2, list($t1)	
la $t3, size
lw $t4, 0($t3)
li $a0, 0

LOOP:
	add $a0, $a0, $t2
	addi $t1, $t1, 4
	lw $t2, list($t1)
	beq $t1, $t4, EXIT
	j LOOP
	
EXIT:
	li $v0, 1
	syscall
	li $v0, 10
	syscall
