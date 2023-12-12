;   1.	Dijak je napisal naslednji ukaz in komentar. Komentar je pravilen, ukaz pa ne. Kateri probleme najdete?	( 1 t )

     cp 0x20, r14          ; preverimo, ali je r20 enak 0x14(16)

;   cp deluje samo z registri, ne moremo primerjati registra z konstanto
;   če bi želeli primerjati z konstanto, bi morali uporabiti ukaz cpi