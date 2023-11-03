;
; Vaja 1.asm
;
; Created: 4. 10. 2023 13:45:00
; Author : Vegova
;

//nop: nič
//ldi: naloži v register
//add: prišteje
//inc: zveča za 1
//dec: zmanjša za 1
//brne: skoči, če ni enako (nič)
//mov: dejansko je "copy", kopira iz enga registra v drugega

start:
	ldi r16, 7 //to prištevamo
	ldi r17, 8 //števec
	ldi r18, 0 //rezultat

ponovitev:
	add r18, r16 //prištejemo
	dec r17 //zmanjšamo števec
	brne ponovitev

forever:
	rjmp forever