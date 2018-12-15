beq $s3, $t1, initial
slti $t3, $s3, 48                 #invalid for anything below 0
bne $t3, $zero, ErrorInvalid
slti $t3, $s3, 58                 #legal input for everything less than or equal to 9
bne $t3, $zero, Move
slti $t3, $s3, 65                 #legal input for everything less than or equal to 65,  'a'
bne $t3, $zero, Move
slti $t3, $s3, 88                 #legal input for anything less than or equal to 88
bne $t3, $zero, Move
slti $t3, $s3, 97                 # invalid input, not numerical nor alphabetical
bne $t3, $zero, ErrorInvalid
slti $t3, $s3, 120                #legal input for lower case characters
bne $t3, $zero, Move
bgt $s3, 119, ErrorInvalid   # illegal input, out of range

#now I iterate again, this time to check for invalid input
Move:
