include msx.asm
cseg
extrn PRINT
extrn BIOS
PROGRAM:
    call SAVE_COLOR
    ld d,71h
    call CHANGE_COLOR
    ld ix,POSIT
    ld h,10
    ld l,20
    call BIOS
    ld hl,HELLO
    call PRINT
    ld ix,KILBUF
    call BIOS
    ld ix,CHGET
    call BIOS
    call LOAD_COLOR
    call CHANGE_COLOR
    ret

SAVE_COLOR:
    ld a,(FORCLR)
    ld (FOREGROUND),a
    ld a,(BAKCLR)
    ld (BACKGROUND),a
    ret

LOAD_COLOR:
    ld a,(FOREGROUND)
    ld (FORCLR),a
    sla a
    sla a
    sla a
    sla a
    ld d,a
    ld a,(BACKGROUND)
    ld (BAKCLR),a
    and 0F0h
    or d
    ret

CHANGE_COLOR:
    ld a,d
    and 0F0h
    sra a
    sra a
    sra a
    sra a
    ld (FORCLR),a
    ld a,d
    and 00Fh
    ld (BAKCLR),a
    ld ix,INITXT
    call BIOS
    ret


dseg
HELLO:      db "Hello!\0"
FOREGROUND: db 0
BACKGROUND: db 0
end
