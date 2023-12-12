;   8.	Napišite zanko, ki bo obrnila zaporedje bitov v registru 16 (kot bi v desetiškem iz 1235 dobili 5321)	( 3 t )
;(Primer: prej: 0b11010010, potem: 0b01001011).

ldi r16, 0b11010010
ldi r17, 0
ldi r18, 8
loop:
rol r16
dec r18
brne loop