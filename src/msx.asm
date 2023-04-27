;-- Chamadas e variaves do sistema MSX

;-- Chamadas do MSX-DOS
CONOUT: equ 002h        ;Imprime caracter
DOS:    equ 005h        ;Chama a BDOS

;-- Chamadas do MSX-BIOS
CALSLT: equ 01Ch        ;Chamada interslots
CLS:    equ 0C3h        ;Limpa a tela
POSIT:  equ 0C6h        ;Posiciona o caracter na tela 
CHPUT:  equ 0A2h        ;Imprime caracter na tela
CHGET:  equ 0F3E9h      ;Aguarada o pressionamento de tecla
INITXT: equ 06Ch        ;Inicia o modo SCREEN 0
INIT32: equ 06Fh        ;Inicia o modo SCREEN 1
INIGRP: equ 072h        ;Inicia o modo SCREEN 2
SETGRP: equ 07Eh        ;Seta o VDP no modo SCREEN 2
KILBUF: equ 156h        ;Limpa o buffer do teclado

;-- Chamadas do MSX-BASIC

;-- Variaveis do MSX-BIOS
EXPTBL: equ 0FCC1h      ;Tabela de Slots
FORCLR: equ 0F3E9h      ;Cor de frente
BAKCLR: equ 0F3EAh      ;Cor de fundo
BDRCLR: equ 0F3EBh      ;Cor da borda
