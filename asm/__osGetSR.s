.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osGetSR
/* 02FD0 80003430 40026000 */  mfc0    $v0, $12
/* 02FD4 80003434 03E00008 */  jr      $ra
/* 02FD8 80003438 00000000 */  nop
/* 02FDC 8000343C 00000000 */  nop
