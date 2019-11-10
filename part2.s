@###############################################################
@
@    Sivalingam Periasamy - CS18M502
@    Code-Conversion - arm lab 5 - Part 2
@
@###############################################################
@ DATA SECTION
.data
Input:
	STRING:	.word 0x31
			.word 0x30
			.word 0x31
			.word 0x30
			.word 0x30
			.word 0x30
			.word 0x31
			.word 0x31
			.word 0x30
Output: 
	NUMBER: .word 0x0;
	ERROR:  .word 0x0;

LDR R1, =STRING
LDR R2, =NUMBER
LDR R3, =ERROR
MOV R4, #0		@ Set the loop counter to zero

LOOP:
	LDR R5, [R1], #4 	@ Get one Char at a time
	CMP R5, #0x31		@ Check if the Char is one or Zero and Set Number
	BEQ SET_NUMBER
	CMP R5, #0x30 
	BEQ SET_NUMBER
	
	MOV R6, #0x00  @ Clear the output
	MOV R7, #0xFF  @ Set the error to 1
	
	B EXIT
	
SET_NUMBER:
	MOV R6, R6, LSL#4 @ Left shift 
	ADD R6, R6, R5	  @ Add string char to output as number
	ADD R4, #1		  @ Increase the loop counter
	CMP R4, #8		  @ Loop if LE 8
	BLE LOOP
	
EXIT:
	STR R6, [R2]	@Store the NUMBER
	STR R7, [R3]	@Store the ERROR          
