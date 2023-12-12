;   7.	Napišite podprogram, ki bo vsebino podatkovnega pomnilnika od 0x0200 do vključno 0x020F postavil na vrednost, ki jo pred klicem podamo v r16. Uporabite indeksni register.

ldi r16, 0xFC ; vrednost, ki jo želimo zapisati
ldi r18, 0x0F ; število bajtov, ki jih želimo zapisati
ldi XH, 0x02 ; naslov prvega bajta
ldi XL, 0x00 ; naslov prvega bajta

loop:
        st X+, r16 ; zapišemo vrednost
        dec r18 ; zmanjšamo števec
        brne loop ; če števec ni 0, ponovimo zanko