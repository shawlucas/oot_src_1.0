.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSetCompare
/* 04950 80004DB0 40845800 */  mtc0    $a0, $11
/* 04954 80004DB4 03E00008 */  jr      $ra
/* 04958 80004DB8 00000000 */  nop
/* 0495C 80004DBC 00000000 */  nop
