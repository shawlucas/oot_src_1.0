.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osGetFpcCsr
/* 05390 800057F0 4442F800 */  cfc1    $v0, $f31
/* 05394 800057F4 03E00008 */  jr      $ra
/* 05398 800057F8 00000000 */  nop
/* 0539C 800057FC 00000000 */  nop
