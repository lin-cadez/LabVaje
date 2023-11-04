# Seznam vseh ukazov, ki smo jih uporabljali in njihova razlaga

* **nop**: nič ne naredi

  * nop
* **ldi**: naloži neko številko direktno v register

  * ldi	r16, 85 (dec)
  * ldi	r16, 0x55 (hex)
  * ldi 	r16, $55 (hex)
  * ldi	r16,0125 (octal)|(začetni se mora z 0)
  * ldi	r16,0b01010101 (bin)
* **add**: prišteje en register drugemu

  * add r1,r2 ; Add r2 to r1 (r1=r1+r2)
  * add r28,r28 ; Add r28 to itself (r28=r28+r28)
* **inc**: poveča register za 1

  * inc r16
* **dec**: zmanjša register za 1

  * dec r16
* **brne**: branch if not equal. Ponavlja dokler ni Z-flag prižgan

  * loop:
    inc r27
    cpi r27,5 ; Compare r27 to 5| Če ni enako je 1, če je enako je 0
    brne loop ; Skoči nazaj na začetek če r27 != 5
* **breq** : skoči, če je enako

  * loop:
    inc r27
  * cpi r27, 5; če je r27 enako 5 bo šlo še enkrat skozi, čene pa ne
  * breq loop
* **mov:** kopira vsebino enega registra v drug register

  * mov r16, r17
* **lds:** Load Direct from Data Space

  * lds r2, 0xFF0
* **sts:** store data to dataspace

  * sts 0x100, r1
* **ret** in **call:** rabiš da lahko narediš funkcijo

  * call save; pokliče funkcijo save
    save:
    sts 0x0101, r16
    sts 0x0100, r19
    ret; vrne nazaj na mesto kjer si klical funkcijo
* **rjmp:** relativni skok

  * forever:
    rjmp forever
* **mul**: množenje, pri čemer ti da višjnji del številke v r1, nižji v r0 =>AVR je little endian

  * mul r5, r4
*
