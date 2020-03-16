.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osResetGlobalIntMask
/* 04C70 800050D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04C74 800050D4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 04C78 800050D8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 04C7C 800050DC 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 04C80 800050E0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 04C84 800050E4 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 04C88 800050E8 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 04C8C 800050EC 8DCE6360 */  lw      $t6, 0x6360($t6)           ## 80006360
/* 04C90 800050F0 2401FBFE */  addiu   $at, $zero, 0xFBFE         ## $at = FFFFFBFE
/* 04C94 800050F4 01E1C024 */  and     $t8, $t7, $at
/* 04C98 800050F8 0300C827 */  nor     $t9, $t8, $zero
/* 04C9C 800050FC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 04CA0 80005100 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 04CA4 80005104 01D94024 */  and     $t0, $t6, $t9
/* 04CA8 80005108 AC286360 */  sw      $t0, 0x6360($at)           ## 80006360
/* 04CAC 8000510C 0C001468 */  jal     __osRestoreInt
/* 04CB0 80005110 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04CB4 80005114 8FBF001C */  lw      $ra, 0x001C($sp)
/* 04CB8 80005118 8FB00018 */  lw      $s0, 0x0018($sp)
/* 04CBC 8000511C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04CC0 80005120 03E00008 */  jr      $ra
/* 04CC4 80005124 00000000 */  nop
/* 04CC8 80005128 00000000 */  nop
/* 04CCC 8000512C 00000000 */  nop
