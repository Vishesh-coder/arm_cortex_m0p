	AREA asm_area, CODE, READONLY
	EXPORT subtract
		
subtract
	LDR R0,=0xEEEEEEEE
	LDR R1,=0xFFFFFFFF
	
	LDR R2,=0x05205205
	LDR R3,=0xD25EC052
	LDR R5,=0x0
	
	SUBS R6, R2, R0
	SBCS R3, R1
	MOVS R7, R3
	
	BCS twoscomp
stop B stop
	
twoscomp
	MVNS R6, R6
	MVNS R7, R7
	ADDS R6, #0x1
	ADCS R7, R5
here B here
	END