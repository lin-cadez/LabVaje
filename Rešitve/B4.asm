;   4.	V čem se razlikujeta instrukciji LD r16, X in LD r16, X+ ? Kdaj uporabimo eno, kdaj drugo?

;   LD r16, X:   shrani vsebino pomnilnika na naslovu X v r16
;   LD r16, X+:  shrani vsebino pomnilnika na naslovu X v r16 in poveča X za 1

;   LD r16, X uporabimo, ko želimo vrednost na naslovu X uporabiti večkrat
;   LD r16, X+ uporabimo, ko želimo vrednost na naslovu X uporabiti samo enkrat