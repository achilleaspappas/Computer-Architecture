.data

str: .space 17

.text globl main
main:

li $v0, 8 #θα διαβάσει 15 χαρακτήρες
la $a0, str
li $a1, 17
syscall

li $t0, 0
li $t2, '\n'


LOOP:
	lb $t1, str($t0)
	beq $t1, $t2, EXIT
	addi $t0, $t0, 1
	j LOOP
	
EXIT:
	li $v0, 1
	move $a0, $t0
	addi $a0, $a0, -1
	syscall
	li $v0, 10
	syscall
