.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data # needs to be split into labels and data/rodata

.incbin "baserom/boot", 0x5C50, 0x4A0

.section .rodata

.incbin "baserom/boot", 0x6110, 0x64

glabel D_800065D4
    .asciz "../z_std_dma.c"
    .balign 4

glabel D_800065E4
    .asciz "dmamgr"
    .balign 8

# z_locale.c
glabel D_800065F0
    .asciz "../z_locale.c"
    .balign 4

glabel D_80006600
    .asciz "OCARINA %08x %08x"
    .balign 4

glabel D_80006614
    .asciz "LEGEND %08x %08x"
    .balign 8

glabel D_80006628
    .asciz "ROM_F"
    .balign 4

glabel D_80006630
    .asciz " [Creator:%s]"
    .balign 4

glabel D_80006640
    .asciz "[Date:%s]"
    .balign 4

glabel D_8000664C
    .asciz "I LOVE YOU %08x"
    .balign 8

glabel D_80006660
    .asciz "head=%08x tail=%08x last=%08x used=%08x free=%08x [%s]\n"
    .balign 4

glabel D_80006698
    .asciz "(null)"
    .balign 4

glabel D_800066A0
    .asciz "%s %d: range error %s(%f) < %s(%f) < %s(%f)\n"
    .balign 8

glabel D_800066D0
    .asciz "*** HungUp in thread %d, [%s:%d] ***\n"
    .balign 4

glabel D_800066F8
    .asciz "*** Reset ***\n"
    .balign 4

glabel D_80006708
    .asciz "Reset"
    .balign 4


