.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osPiGetCmdQueue
/* 051A0 80005600 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 051A4 80005604 8DCE6370 */  lw      $t6, 0x6370($t6)           ## 80006370
/* 051A8 80005608 15C00003 */  bne     $t6, $zero, .L80005618
/* 051AC 8000560C 00000000 */  nop
/* 051B0 80005610 03E00008 */  jr      $ra
/* 051B4 80005614 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80005618:
/* 051B8 80005618 3C028000 */  lui     $v0, 0x8000                ## $v0 = 80000000
/* 051BC 8000561C 8C426378 */  lw      $v0, 0x6378($v0)           ## 80006378
/* 051C0 80005620 03E00008 */  jr      $ra
/* 051C4 80005624 00000000 */  nop
/* 051C8 80005628 00000000 */  nop
/* 051CC 8000562C 00000000 */  nop
