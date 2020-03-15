.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSetSR
/* 02FC0 80003420 40846000 */  mtc0    $a0, $12
/* 02FC4 80003424 00000000 */  nop
/* 02FC8 80003428 03E00008 */  jr      $ra
/* 02FCC 8000342C 00000000 */  nop
