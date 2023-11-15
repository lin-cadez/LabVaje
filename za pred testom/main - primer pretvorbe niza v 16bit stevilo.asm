		.org 0x0000
reset:	rjmp setup

		.org 0x0034
setup:
		// v register Z nalo�imo naslov, kjer je na�e �tevilo, zapisano v ASCII zapisu
		// null-terminated string - niz znakov, ki se zaklju�i z 0x00
		ldi ZL, LOW  (niz_s_stevilom * 2)
		ldi ZH, HIGH (niz_s_stevilom * 2)
		call string_to_16bit_int



loop:
		rjmp loop

string_to_16bit_int:
		// pripravimo register X za rezultat
		clr  XL
		clr  XH

		// v r16 nalo�imo byte, njegov naslov je v registru Z
		// po nalaganju se Z pove�a za 1 in ka�e na naslednji znak
nov_znak:
		lpm r16, Z+

		// ali je �e konec niza? (ali je r16 == 0 ?)
		cpi r16, 0x00
		breq koncali_smo
		andi r16, 0x0F    // "olupimo" ASCII kodo tako, da dobimo samo vrednost
						  // torej da obdr�imo samo spodnje 4 bite

						  // stari rezultat pomno�imo z 10
						  // r16 bo ostal enak, zato smo poskrbeli
		call u16bit_mnozenje_z_10
		add XL, r16       // k spodnjemu delu rezultata pri�tejemo cifro
		brcc ni_prenosa
		inc XH
ni_prenosa:		
		rjmp nov_znak

koncali_smo:
		ret

		// podprogram vsebino registra X pomno�i z 10
		// pri tem ne paca po registrih
u16bit_mnozenje_z_10:
        push r0     // popravimo vsebino registrov na sklad, ker jih bomo popacali
		push r1
		push r16

		ldi r16, 10 // v r16 nalo�imo 10 (10 po deseti�ko)
		mul XL, r16 // mno�imo nizki del X-a z 10, rezultat bo v r1:r0 

		mov XL, r0  // v r0 imamo del kon�nega rezultata
		push r1     // visoki del rezultata r1 shranimo na sklad za kasnej�o uporabo

		mul XH, r16 // zmno�imo �e visoki del X-a z 10
					// visoki del rezultata bom ignorirali (we don't care)
		pop r16     // poberemo prej�nji rezultat v r16 in ga pri�tejemo k r0
		add r0, r16
		mov XH, r0	// rezultat spravimo v XH

		pop r16     // poberemo vsebino registrov, ki smo jih popacali, s sklada
		pop r1
		pop r0
		ret

niz_s_stevilom:
		.db "65535",0    // .db == define byte
		

