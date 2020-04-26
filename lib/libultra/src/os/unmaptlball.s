.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osUnmapTLBAll
/* 03C10 80004070 40085000 */  mfc0    $t0, $10
/* 03C14 80004074 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 03C18 80004078 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 03C1C 8000407C 408A5000 */  mtc0    $t2, $10
/* 03C20 80004080 40801000 */  mtc0    $zero, $2
/* 03C24 80004084 40801800 */  mtc0    $zero, $3
.L80004088:
/* 03C28 80004088 40890000 */  mtc0    $t1, $0
/* 03C2C 8000408C 00000000 */  nop
/* 03C30 80004090 42000002 */  tlbwi
/* 03C34 80004094 00000000 */  nop
/* 03C38 80004098 00000000 */  nop
/* 03C3C 8000409C 2129FFFF */  addi    $t1, $t1, 0xFFFF           ## $t1 = 0000001D
/* 03C40 800040A0 0521FFF9 */  bgez    $t1, .L80004088
/* 03C44 800040A4 00000000 */  nop
/* 03C48 800040A8 40885000 */  mtc0    $t0, $10
/* 03C4C 800040AC 03E00008 */  jr      $ra
/* 03C50 800040B0 00000000 */  nop
/* 03C54 800040B4 00000000 */  nop
/* 03C58 800040B8 00000000 */  nop
/* 03C5C 800040BC 00000000 */  nop
