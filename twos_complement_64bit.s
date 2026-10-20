	AREA asm_area, CODE, READONLY
	EXPORT twos_comp
		
twos_comp

	LDR R0,=0x55555555
	LDR R1,=0xAAAAAAAA
	LDR R3,=0x0
	
	MVNS R6, R0
	MVNS R7, R1
	
	ADDS R6, #0x1
	ADCS R7, R3
	
here B here
	END