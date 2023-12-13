ldi r16, 0x20
call isNumber

end:
    rjmp end

isNumber:
    cpi r16, 0x30-1
    brcs Terminate
    cpi r16, 0x39+1
    brcc Terminate
    sez
    ret
    Terminate:
        clz
        ret