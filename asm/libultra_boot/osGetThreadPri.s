.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osGetThreadPri
/* 04100 80004560 14800003 */  bne     $a0, $zero, .L80004570
/* 04104 80004564 00000000 */  nop
/* 04108 80004568 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 0410C 8000456C 8C846340 */  lw      $a0, 0x6340($a0)           ## 80006340
.L80004570:
/* 04110 80004570 03E00008 */  jr      $ra
/* 04114 80004574 8C820004 */  lw      $v0, 0x0004($a0)           ## 80000004
/* 04118 80004578 00000000 */  nop
/* 0411C 8000457C 00000000 */  nop
