.data

str: .space 17

.text globl main
main:

li $v0, 8
la $a0, str
li $a1, 17
syscall

li $t0, 0
li $t2, '\n'
li $v0, 11


LOOP:
	lb $t1, str($t0)
	beq $t1, $t2, MOD
	addi $t0, $t0, 1
	j LOOP
	
MOD:
	addi $t0, $t0, -1
	j PRINT
		
PRINT: 
	lb $a0, str($t0)
	syscall
	beq $t0, $zero, EXIT
	addi $t0, $t0, -1
	j PRINT

	
EXIT:
	
	li $v0, 10
	syscall
