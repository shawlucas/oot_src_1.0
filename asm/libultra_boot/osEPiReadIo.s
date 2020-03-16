.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osEPiReadIo
/* 051D0 80005630 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 051D4 80005634 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 051D8 80005638 AFA40020 */  sw      $a0, 0x0020($sp)
/* 051DC 8000563C AFA50024 */  sw      $a1, 0x0024($sp)
/* 051E0 80005640 0C00076C */  jal     __osPiGetAccess
/* 051E4 80005644 AFA60028 */  sw      $a2, 0x0028($sp)
/* 051E8 80005648 8FA40020 */  lw      $a0, 0x0020($sp)
/* 051EC 8000564C 8FA50024 */  lw      $a1, 0x0024($sp)
/* 051F0 80005650 0C001160 */  jal     __osEPiRawReadIo
/* 051F4 80005654 8FA60028 */  lw      $a2, 0x0028($sp)
/* 051F8 80005658 0C00077D */  jal     __osPiRelAccess
/* 051FC 8000565C AFA2001C */  sw      $v0, 0x001C($sp)
/* 05200 80005660 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 05204 80005664 8FA2001C */  lw      $v0, 0x001C($sp)
/* 05208 80005668 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0520C 8000566C 03E00008 */  jr      $ra
/* 05210 80005670 00000000 */  nop
/* 05214 80005674 00000000 */  nop
/* 05218 80005678 00000000 */  nop
/* 0521C 8000567C 00000000 */  nop
