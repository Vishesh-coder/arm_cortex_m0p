	AREA data_area, DATA, READWRITE
	
SIGN16
	DCW 0xFF2D, 0xFFA1, 0xFF3F, 0xFFAD, 0xFF54, 0x0032, 0x0010, 0xFFED
	
	AREA code_area, CODE, READONLY
	EXPORT sum_negative
		
sum_negative
	LDR R0,= 0x8
	LDR R1,= SIGN16
	LDR R7,= 0x0
	
looping	
    LDRH R2, [R1]
	SXTH R2, R2
	ADDS R2, #0
		
	BPL onecompadd
    MVNS R2, R2
	ADDS R7, R2
	
onecompadd
	ADDS R1, #0x2
	SUBS R0, #0x1
	
	BNE looping	

here B here
	END