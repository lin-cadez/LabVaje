;   8.	Napišite podprogram, ki bo preveril, ali je ASCII koda šestnajstiška števka ali ne.	( 3 t ) (Z=1 ob izhodu programa pomeni, da je)! Pomagaj si z ASCII tabelo spodaj.

setup:
ldi r16, 'z' // H
call zacetek
rjmp konec

zacetek:
    cpi r16, 0x7B
    brcs je_manj_od_7B
    rjmp ni_crka

je_manj_od_7B:
    clc
    cpi r16, 0x41
    brcc je_vec_od_40
    rjmp ni_crka

je_vec_od_40:
    cpi r16, 0x5B
    breq ni_crka
    cpi r16, 0x5C
    breq ni_crka
    cpi r16, 0x5D
    breq ni_crka
    cpi r16, 0x5E
    breq ni_crka
    cpi r16, 0x5F
    breq ni_crka
    cpi r16, 0x60
    breq ni_crka
    rjmp je_crka

ni_crka:
    clz
    ret

je_crka:
    sez
    ret

konec:
    rjmp konec