.data

str1: .asciiz "Hello\n"
error: .asciiz "Error: Number > 4\n"
str2: .space 8
test: .byte 0xFF, 0xFF, 0xFF

a: .word 20
b: .word 30
c: .word 15

.text

.globl main
main:

#Ερωτημα a
li $v0, 11
la $t0, str1
lb $a0, 0($t0)
syscall

lb $a0, 1($t0)
syscall

#Ερωτημα b
li $v0, 5
syscall

slti $t0, $v0, 5
bne $t0, $zero, LESS

li $v0, 4
la $a0, error
syscall
j NEXT

LESS:  
	la $t1, str1
	add $t1, $t1, $v0
	addi $t1, $t1, -1
	li $v0, 11
	lb $a0, 0($t1)
	syscall

NEXT:

#Ερωτημα c
li $v0, 8
la $a0, str2
li $a1, 50
syscall

li $v0, 11
la $t0, str2
lb $a0, 1($t0)
syscall 

#Ερωτημα d
la $t0, a
lw $t1, 0($t0)
la $t0, b
lw $t2, 0($t0)
add $t3, $t1, $t2
la $t0, c
lw $t1, 0($t0)
addi $t4, $t1, 10
sub $a0, $t3, $t4
li $v0, 1
syscall



#str1($t1) βάζω ως σταθερό το str1 και μεταβλητό το $t1
