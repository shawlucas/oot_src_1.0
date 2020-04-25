.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osEPiWriteIo
/* 053A0 80005800 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 053A4 80005804 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 053A8 80005808 AFA40020 */  sw      $a0, 0x0020($sp)
/* 053AC 8000580C AFA50024 */  sw      $a1, 0x0024($sp)
/* 053B0 80005810 0C00076C */  jal     __osPiGetAccess
/* 053B4 80005814 AFA60028 */  sw      $a2, 0x0028($sp)
/* 053B8 80005818 8FA40020 */  lw      $a0, 0x0020($sp)
/* 053BC 8000581C 8FA50024 */  lw      $a1, 0x0024($sp)
/* 053C0 80005820 0C001644 */  jal     osEPiRawWriteIo
/* 053C4 80005824 8FA60028 */  lw      $a2, 0x0028($sp)
/* 053C8 80005828 0C00077D */  jal     __osPiRelAccess
/* 053CC 8000582C AFA2001C */  sw      $v0, 0x001C($sp)
/* 053D0 80005830 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 053D4 80005834 8FA2001C */  lw      $v0, 0x001C($sp)
/* 053D8 80005838 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 053DC 8000583C 03E00008 */  jr      $ra
/* 053E0 80005840 00000000 */  nop
/* 053E4 80005844 00000000 */  nop
/* 053E8 80005848 00000000 */  nop
/* 053EC 8000584C 00000000 */  nop
