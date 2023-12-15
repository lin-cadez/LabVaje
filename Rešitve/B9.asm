ldi r16, 0x5a
call isLetter
end:
    rjmp end

isLetter:
    cpi r16, 0x41
    brcs Terminate ; če je manjša od 0x41-1 bo šlo na Terminate
    cpi r16, 0x7A+1
    brcc Terminate
    ldi r17, 0x60

loop:
        cp r16, r17
        breq Terminate
        dec r17
        cpi r17, 0x5a
        brne loop
        sez; set zero flag
        ret

Terminate:
        clz ;clear zero flag
        ret