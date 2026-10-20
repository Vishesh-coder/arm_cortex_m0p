	AREA code_area, CODE, READONLY
	EXPORT sumof
		
sumof
	LDR R0,= 0xD25EC052
	LDR R1,= 0x0
	LDR R2,= 0x0
	LDR R3,= 0xFF
	
loop
	MOVS R2, R0
	ANDS R2, R2, R3
	ADDS R1, R2
	LSRS R0, #8
	BNE loop
	
here B here
	END