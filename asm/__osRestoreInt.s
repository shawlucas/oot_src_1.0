.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osRestoreInt
/* 04D40 800051A0 40086000 */  mfc0    $t0, $12
/* 04D44 800051A4 01044025 */  or      $t0, $t0, $a0              ## $t0 = 00000000
/* 04D48 800051A8 40886000 */  mtc0    $t0, $12
/* 04D4C 800051AC 00000000 */  nop
/* 04D50 800051B0 00000000 */  nop
/* 04D54 800051B4 03E00008 */  jr      $ra
/* 04D58 800051B8 00000000 */  nop
/* 04D5C 800051BC 00000000 */  nop
