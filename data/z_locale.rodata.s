.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .rodata

glabel D_80006800
    .asciz "zelda@srd44"
    .balign 4

glabel D_8000680C
    .asciz "98-10-21 04:56:31"
    .word 0x00000000
