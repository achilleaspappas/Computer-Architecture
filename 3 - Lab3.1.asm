.data

str1: .asciiz "Hello\n"
str2: .asciiz "TEI\n"
str3: .space 8
test: .byte 0xFF, 0xFF, 0xFF


.text

.globl main
main:

#Ερωτημα a
li $v0, 11
li $a0, 'a'
syscall

#Ερωτημα b
li $v0, 11
li $a0, 'a'
syscall
li $a0, 'd'
syscall

#Ερωτημα c
li $v0, 4
la $a0, str1
syscall

#Ερωτημα d
li $v0, 4
la $a0, str1
syscall
la $a0, str2
syscall

#Ερωτημα e
li $v0, 1
li $a0, 5
syscall

#Ερωτημα f
li $v0, 5
syscall
move $a0, $v0
li $v0, 1
syscall

#Ερωτημα G
li $v0, 8
la $a0, str3
li $a1, 100
syscall
li $v0, 4
syscall
