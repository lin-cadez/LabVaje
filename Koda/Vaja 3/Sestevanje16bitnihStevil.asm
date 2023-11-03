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

;.................................................................
//Navodilo naloge:
//Napišite program, ki bo seštel dve 16 bitni števili; 0x1234 in 0x9999
//in rezultat spravil v RAM na naslov 0x0100 in 0x0101.
//Preverite rezultat s kalkulatorjem in v razhroščevalniku.
;.................................................................


call setup
call void
call save

forever:
	rjmp forever


setup:
	ldi r16, 0x34
	ldi r17, 0x12
	ldi r18, 0x99
	ldi r19, 0x99
	clr r20
	ret

void:
	add r16, r18
	adc r19, r17
	ret

save:
	sts 0x0101, r16
	sts 0x0100, r19
	ret


