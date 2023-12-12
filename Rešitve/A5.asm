start:
    ldi r16, 0x0A   ; Primer 8-bitnega števila

    call remainder_mod_4


infinite_loop:
    rjmp infinite_loop ; Neskončna zanka


remainder_mod_4:
    ; Naloži delitelj (4) v register r18
    ldi r18, 0x04

    ; Izvedi deljenje in shranjevanje ostanka v r16
    call divide_by_4

    ret

; Podprogram za deljenje z vrednostjo 4
divide_by_4:
        sub r16, r18    ; Odštej delitelj od deljenca
        brcc divide_by_4 ; Če je bil rezultat pozitiven, ponovi postopek
        add r16, r18    ; Če je bil rezultat negativen, prištej delitelj
        
        ret             ; Vrnitev iz podprograma