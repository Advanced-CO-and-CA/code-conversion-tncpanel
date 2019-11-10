@###############################################################
@
@    Sivalingam Periasamy - CS18M502
@    Code-Conversion - arm lab 5 - Part 3
@
@###############################################################
@ DATA SECTION
.data
Input:
	BCDNUM: 	.word 92529679 	 ; #(1001 0010 0101 0010 1001 0110 0111 1001 – 13)
Output: 
	NUM: 		.word 0x0;

LDR R0, =BCDNUM
LDR R1, =NUM
LDR R2, [R0]	        
STR R2, [R1]     
# R4 register loaded back from BCDNUM (Just to check if the Output is set properly)       
LDR R0, =BCDNUM
LDR R4, [R0]             
