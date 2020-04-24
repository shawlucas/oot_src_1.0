.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data # needs to be split into labels and data/rodata

.incbin "baserom/boot", 0x5C50, 0x4A0

.section .rodata



.incbin "baserom/boot", 0x6110, 0x2C0
