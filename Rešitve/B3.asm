;   3.	8-bitno število (denimo, da je število točk) na naslovu 0x0220 pomnožite z 2 in mu prištejte 5.

setup:
        ldi r16, 0x02
        sts 0x0220, r16

lds r16, 0x0220
add r16, r16
ldi r17, 0x05
add r16, r17

sts 0x0220, r16