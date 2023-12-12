;   1. Med seboj zamenjajte vsebino registrov X in Y, instrukcijo mov uporabite natanko dvakrat.

start:
    ; Nastavi začetne vrednosti v registro X in Y (lahko prilagodite)
    ldi r26, 0x55   ; Nizki bajt za register X
    ldi r27, 0xAA   ; Visoki bajt za register X

    ldi r28, 0xCC   ; Nizki bajt za register Y
    ldi r29, 0xDD   ; Visoki bajt za register Y

    ; Zamenjaj vsebino registrov X in Y
    push r26        ; Shrani nizki bajt iz X na sklad
    push r27        ; Shrani visoki bajt iz X na sklad

    
    mov r26, r28    ; Kopiraj nizki bajt iz Y v X
    mov r27, r29    ; Kopiraj visoki bajt iz Y v X

    pop r28         ; Kopiraj nizki bajt iz sklad v X
    pop r29         ; Kopiraj visoki bajt iz sklad v X

infinite_loop:
    rjmp infinite_loop ; Neskončna zanka
