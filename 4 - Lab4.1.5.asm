.data 

.text globl main
main:

li $t0, 4 #xarakthras
li $t1, 5 #grammes
li $t2, 0
li $t3, 0
li $v0, 11 

LOOP:
	addi $t3, $t3, 1
	li $a0, '*'
	syscall
	bne $t3, $t0, LOOP
		
	andi $t3, $t3, 0x11111100
	li $a0, '\n'
	syscall
	addi $t2, $t2, 1
	beq $t2, $t1, EXIT
	j LOOP	
	
EXIT:
	li $v0, 10
	syscall
	
