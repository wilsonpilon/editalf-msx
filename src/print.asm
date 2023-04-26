include msx.asm
cseg
public PRINT
extrn BIOS
PRINT:
    ld a,(hl)
    or a
    ret z
    push hl
    ld ix,CHPUT
    call BIOS
    pop hl
    inc hl
    jp PRINT

dseg
end
