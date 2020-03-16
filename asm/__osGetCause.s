.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osGetCause
/* 054A0 80005900 40026800 */  mfc0    $v0, $13
/* 054A4 80005904 03E00008 */  jr      $ra
/* 054A8 80005908 00000000 */  nop
/* 054AC 8000590C 00000000 */  nop
