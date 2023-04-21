.data

str1: .asciiz "Not equal to zero" 
str2: .asciiz "Equal to zero"

.text globl main
main:

li $v0, 5
syscall

beq $v0, $zero, ZERO
li $v0, 4
la $a0, str1
syscall

j EXIT

ZERO: 
	li $v0, 4
	la $a0, str2
	syscall
	
EXIT: 	
	li $v0, 10
	syscall
