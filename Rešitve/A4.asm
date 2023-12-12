;   4.	Napišite podprogram, ki bo registru X prištel 0x0040!

start:
    ; Nastavi začetno vrednost v register X (lahko prilagodite)
    ldi r26, 0x55   ; Nizki bajt za register X
    ldi r27, 0xAA   ; Visoki bajt za register X

    ; Kliči podprogram za prištevanje vrednosti 0x0040 k registeru X
    call add_value_to_x

    ; Rezultat je zdaj v registru X

infinite_loop:
    rjmp infinite_loop ; Neskončna zanka

; Podprogram za prištevanje vrednosti 0x0040 k registeru X
add_value_to_x:
    ; Naloži vrednost, ki jo želite prišteti (0x0040)
    ldi r16, 0x40   ; Nizki bajt
    ldi r17, 0x00   ; Visoki bajt

    ; Prištej vrednost k registru X
    add r26, r16
    adc r27, r17  ; Upoštevaj prenos iz nizkega v visoki bajt

    ret

; ali

ldi XL, low(0x0000)
ldi XH, high(0x0000)
ldi YL, low(0x0040)
ldi XH, high(0x0040)

call podprogram


podprogram:

add XL, YL
adc XH, YH
ret