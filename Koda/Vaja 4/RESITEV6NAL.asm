

start:
	ldi  ZL, 0x20; Začetni register
	ldi ZH, 0x01;
	ldi XL, 0x50;
	ldi XH, 0x01;

	ldi r16, 0x00; števec
	ldi r17, 0x2F; Max števec

	;.....Procesiranje.........;
	ldi r18, 0x01
	add r17, r18
	clr r18

zapis:
	st Z+, r16
	inc r16

	//pogleda če je končal
	cp r16, r17
	brne zapis

sestevanje:
	;---setup---;
	ldi YH, 0x00
	ldi YL, 0x00
	clr r18
	clr r16
	clr r17

	ld r16, -Z
	add r20, r16
	adc r21, r18

	;---preverim če je konec---;
	cpi ZL, 0x20
	brne sestevanje
	
	



forever:
	rjmp forever


//REZULTAT JE VIDEN V REGISTRU R20, R21
//VIŠJI DEL JE V R21, NIŽJI V R20
//ODGOVOR JE 0X0468

//Rešitev za 6. nalogo LAV2_04