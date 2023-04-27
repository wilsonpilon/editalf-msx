;-- MENU -------------------------------
; Menu MSX, no modo MIX SCREEN 1 e 2
; Autor: Wilson "Barney" Pilon
;        Abril, 2023
; Formato N80/LK80
;---------------------------------------

include msx.asm         ;Sistema MSX

cseg                    ;Codigo
extrn Print             ;Impressao de zString via BIOS
extrn ScreenIV          ;Inicializa o modo de tela
extrn BIOS              ;Chamada da BIOS via MSX-DOS

;-- Laco Principal ---------------------
Menu:
    call ScreenIV
    ld h,1
    ld l,2
    ld ix,Posit
    call BIOS
    ld hl,Hello
    call Print
    ld ix,KILBUF
    call BIOS
    ret
dseg                    ;Dados
    Hello:      db 10,"Hello!\0"

end
