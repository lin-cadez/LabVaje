	.org 0x0000

reset:
		rjmp setup

		.org 0x0034

setup:				//v Z damo naslov byta, kjer se za�ne niz znakov
		ldi ZL, LOW (stevilo*2)	
		ldi ZH, HIGH(stevilo*2)

		call string_to_16_bit

loop:
		rjmp loop


string_to_16_bit:	//dobi naslov niza iz programskega pomnilnika, naslov dobi v registru Z, rezultat vrne v X
		clr XL		//popuca X
		clr XH
	
nov_znak:	
		lpm r16, Z+	//Z pove�amo za 1, ker bomo 

		cpi r16, 0	//preverimo, �e smo na koncu null terminated niza; �e smo gremo vn
		breq vrni_se

		call u16_bit_mnozi_z_10

		//�e je zadeva ascii cifra rabimo samo spodnje 4 bite
		andi r16, 0x0F

		//vrednost pri�tejemo rezultatu
		add XL, r16

		//�e ni prenosa, presko�ino naslednjo instrukcijo
		brcc ni_prenosa
		inc XH

ni_prenosa:
		rjmp nov_znak

vrni_se:
		ret

u16_bit_mnozi_z_10:
		push r0		//premaknemo vsebino registrov nekam
		push r1
		push r16

		ldi r16, 10
		mul XL, r16
		mov XL, r0

		push r1		//visoki del rezultata za�asno damo na stran, ker se ga bo rabilo za pri�tevanje naprej

		mul XH, r16 //mno�imo �e visoki del X z 10, visoki del rezultata bo propadel, zato ne mno�imo previsokih vrednosti

		pop r16		//poberemo kar je bilo prej shranjeno

		add r0, r16
		mov XH, r0	//reultat spravimo v XH

		pop r16		//damo vsebino nazaj v registre
		pop r1
		pop r0

		ret

stevilo:
		.db "65535",0