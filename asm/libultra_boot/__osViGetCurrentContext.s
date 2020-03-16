.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osViGetCurrentContext
/* 05A50 80005EB0 3C028000 */  lui     $v0, 0x8000                ## $v0 = 80000000
/* 05A54 80005EB4 03E00008 */  jr      $ra
/* 05A58 80005EB8 8C4264C0 */  lw      $v0, 0x64C0($v0)           ## 800064C0
/* 05A5C 80005EBC 00000000 */  nop
