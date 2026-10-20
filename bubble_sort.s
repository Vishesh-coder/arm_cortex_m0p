	AREA data_area, DATA, READWRITE
array
	DCD 0xAAAAAAAA, 0xBBBBBBBB, 0xCCCCCCCC, 0xDDDDDDDD, 0xEEEEEEEE, 0xFFFFFFFF, 0xD25EC052, 0xA52EC106

	AREA code_area, CODE, READONLY
	EXPORT bubble_sort
		
bubble_sort
	LDR R0,= array ;address 
	MOVS R1, #7 ;counter1
outloop
	MOVS R6, R0 ;copy address
	MOVS R2, R1 ;counter2
inloop
	LDR R3, [R6, #0] ;data
	LDR R4, [R6, #4] ;data
	CMP R3, R4
	BHI skip
	STR R3, [R6, #4] ;swapping
	STR R4, [R6, #0]
skip
	ADDS R6, #4 ;updating address
	SUBS R2, #1 ;updating counter2
	BNE inloop
	SUBS R1, #1 ;updating counter1
	BNE outloop

here B here 
	END