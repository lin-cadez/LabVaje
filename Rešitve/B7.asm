;   7.	Napišite podprogram, ki bo preveril, ali je 16-bitno število enako enako 0xBEEF.
; Število najdemo v podatkovnem pomnilniku na naslovu, ki ga drži register X. 
; Ob povratku, naj zastavica Z pove, ali je enako 0 ali ne.

setup:
        ldi r16, 0xEF
        ldi r17, 0xBE
        st X+, r16
        st X, r17

enako:
        ld r18, X
        ld r19, -X
        cp r16, r18
        brne neenako
        cp r17, r19
        brne neenako
        rjmp konec

neenako:
        sez
        rjmp konec

konec:
        rjmp konec