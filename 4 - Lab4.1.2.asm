.data 

num: .word 0
str1: .asciiz "Positive"
str2: .asciiz "Non Positive"

.text globl main
main:

li $v0, 5
syscall

beq $v0, $zero , N	#έλεγχος αν είναι 0

andi $v0, $v0, 0x80000000	#κάνω and
la $t0, num 
sw $v0, 0($t0)	#αποθηκεύω την λέξη
lb $t1, 3($t0)	#φορτώνω μονο το πρώτο bit
beq $t1, $zero, P	#έλεγχος αν είναι θετικός
j N

P:	
	li $v0, 4
	la $a0, str1
	syscall
	j EXIT

N:
	li $v0, 4
	la $a0, str2
	syscall
	
EXIT:
	li $v0, 10
	syscall