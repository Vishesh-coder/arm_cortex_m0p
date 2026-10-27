	AREA code_area, CODE, READONLY
	EXPORT bintobcd
		
bintobcd
	LDR R0,= 0x052 ;binary number
	LDR R1,= 0x0 ;temp
	LDR R2,= 0x0 ;hundreds
	LDR R3,= 0x0 ;tens
	LDR R4,= 0x0 ;ones
	
	MOVS R1, R0
loophunds
	CMP R1, #100
	BLO looptens

	ADDS R2, #1
	SUBS R1, #100
	CMP R1, #100
	BHI loophunds
	
looptens
	CMP R1, #10
	BLO loopones
	
	ADDS R3, #1
	SUBS R1, #10
	CMP R1, #10
	BHI looptens
	
loopones
	MOVS R4, R1
	
here B here
	END
