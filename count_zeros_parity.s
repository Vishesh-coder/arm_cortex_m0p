	AREA code_area, CODE, READONLY
	EXPORT count_zero
		
count_zero
	LDR R0,= 0xD25EC052
	LDR R1,= 0x0
	MOVS R5, #32

looping
	LSRS R0, #1
	BCS incdec
	ADDS R1, #1
	
incdec
	SUBS R5, #1
	BNE looping
	
	MOV R3, R1
	LSRS R3, #1
	BCC loading
	LDR R2,= 0xFF00FF00
	B here
	
loading
	LDR R2,= 0x55005500
	
here B here
	END	