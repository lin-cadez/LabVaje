	.org 0x0000
	rjmp start

	.org 0x0034
	
start:
	ldi ZL, LOW(msg1*2)
	ldi ZH, HIGH(msg1*2)

naslednja_crka:
	lpm r16, Z+ //load value from program space
	and r16, r16

	brne naslednja_crka

loop:
	rjmp loop

send_char:
	nop 
	ret

	.org 0x200

msg1:
	.db "Jaz sem JAKA", 0x00

msg2:
	.db "press ANY key to continue or any other key to quit", 0x00

msg3:
	.db "keyboard missing. press f1 to continue", 0x00

sporocila:
	.dw msg1
	.dw msg2
	.dw msg3

