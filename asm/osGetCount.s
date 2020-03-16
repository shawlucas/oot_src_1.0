.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osGetCount
/* 048F0 80004D50 40024800 */  mfc0    $v0, $9
/* 048F4 80004D54 03E00008 */  jr      $ra
/* 048F8 80004D58 00000000 */  nop
/* 048FC 80004D5C 00000000 */  nop
