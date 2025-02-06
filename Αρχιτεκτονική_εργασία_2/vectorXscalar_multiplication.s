.text
.globl _start
.set noat
.set noreorder

_start:
	addi $t1, $t1, 8 #define the scalar you want(In this case i assign it as 8 as an easy example)
	li $s0, 32     # load immediate value 32
	la $t0,  vector
		
loop:
	bltz $s0, out
	lw $t2, 0($t0) #access the 0+$t0 element of the array
	mul $t3, $t2, $t1 #saving the result of the multiplication with the current element of the array and the scalar in register $t3
	sw $t3, 0($t0)
	addi $t0, $t0, 4 #moving to the next element
	addi $s0, $s0, -1
	j loop

out:
	break
	nop
	
	
	







.data
.org 10000000

vector:
.word    708, -23, 805, -870, -469, -224, -368, -366, -864, -267, 280, 574, -998, 14, -514, -693, -885, 777, 276, 56, -363, -120, -354, -573, -700, -898, 280, 616, -205, -623, -587, -442

