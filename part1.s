@###############################################################
@
@    Sivalingam Periasamy - CS18M502
@    Code-Conversion - arm lab 5 - Part 1
@
@###############################################################
@ DATA SECTION
.data
Input:
	A_DIGIT: .word 0x56;
Output: 
	H_DIGIT: .word 0x0;

LDR R1, =A_DIGIT
LDR R2, =H_DIGIT
LDR R3, [R1]

CMP R3,#0x41
BLT Number_Branch

ADD R3,R3,#-0x37
B EXIT

Number_Branch: 
	SUB R3,R3,#0x30

EXIT:
	STR R3,[R2]  @ Store the result    
