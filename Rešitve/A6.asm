;   6.	Napišite podprogram, ki bo od klica do naslednjega ukaza po povratku potreboval natanko 250 ciklov!

ldi r17, 81

call podprogram

infinite_loop:
    rjmp infinite_loop

podprogram:
    dec r17
    brne podprogram
    ret