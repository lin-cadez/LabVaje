;   3.	V čem se razlikujeta instrukciji LSL in ROL? Ilustriraj na primeru

; LSL - logical shift left
; ROL - rotate left

; LSL - premakne bite v levo, najbolj desni bit se izgubi, najbolj levi bit se nastavi na 0
; ROL - premakne bite v levo, najbolj desni bit se premakne na najbolj levo mesto

; primer:
; 0000 0001 -> LSL -> 0000 0010
; 0000 0001 -> ROL -> 0000 0010