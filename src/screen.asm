;-- SCREEN IV --------------------------
; Coloca o VDP no modo SCREEN 1 e o 
;   sistema em SCREEN 2
; Autor: Wilson "Barney" Pilon
;        Abril, 2023
;---------------------------------------

include msx.asm         ;Sistema MSX

cseg                    ;Codigo
public ScreenIV
extrn BIOS

ScreenIV:
    ld ix,INIGRP        ;Prepara tabelas SCREEN 1
    call BIOS
    ld ix,INIT32        ;Prepara tabelas SCREEN 2
    call BIOS
    ld ix,SETGRP        ;Seta o VDP no modo SCREEN 2
    call BIOS
    ret

dseg                    ;Dados

end
