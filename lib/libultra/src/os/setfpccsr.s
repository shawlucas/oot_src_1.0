.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSetFpcCsr
/* 05380 800057E0 4442F800 */  cfc1    $v0, $f31
/* 05384 800057E4 44C4F800 */  ctc1    $a0, $f31
/* 05388 800057E8 03E00008 */  jr      $ra
/* 0538C 800057EC 00000000 */  nop
