;
; main.asm
;
; Created: 11. 10. 2023 13:45:18
; Author : Lin Čadež
;

//Nova ukaza
; LDS-LOAD DATA
; STS STORE DATA TO DATASPACE

; ENDIAN - big, little
;ret - vrne funkcijo
;call - za poklicat funkcijo


.org 0x0000
rjmp start
.org 0x0050

start:
	ldi r16, 0x01 << 7
	ldi r17, 0x03 << 3
	rjmp cont1
cont1:
	mul r16, r17
	sts 0x0100, r0 ;big or little endian????
	sts 0x0101, r1
	rjmp cont2

	.org 0x0040
cont2:
	nop	
	nop
 	rjmp cont3

cont3:
	rjmp start
