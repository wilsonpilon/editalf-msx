;-- Chamadas e variaves do sistema MSX

;-- Chamadas do MSX-DOS
CONOUT: equ 002h
DOS:    equ 005h

;-- Chamadas do MSX-BIOS
CALSLT: equ 01Ch
CLS:    equ 0C3h
POSIT:  equ 0C6h
CHPUT:  equ 0A2h
CHGET:  equ 09Fh
INITXT: equ 06Ch
KILBUF: equ 156h

;-- Chamadas do MSX-BASIC

;-- Variaveis do MSX-BIOS
EXPTBL: equ 0FCC1h
FORCLR: equ 0F3E9h
BAKCLR: equ 0F3EAh
BDRCLR: equ 0F3EBh
