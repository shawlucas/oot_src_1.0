.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSetHWIntrRoutine
/* 05BB0 80006010 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05BB4 80006014 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05BB8 80006018 AFA40028 */  sw      $a0, 0x0028($sp)
/* 05BBC 8000601C AFA5002C */  sw      $a1, 0x002C($sp)
/* 05BC0 80006020 AFA60030 */  sw      $a2, 0x0030($sp)
/* 05BC4 80006024 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 05BC8 80006028 AFB00018 */  sw      $s0, 0x0018($sp)
/* 05BCC 8000602C 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 05BD0 80006030 8FAE002C */  lw      $t6, 0x002C($sp)
/* 05BD4 80006034 8FA80028 */  lw      $t0, 0x0028($sp)
/* 05BD8 80006038 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05BDC 8000603C 000FC0C0 */  sll     $t8, $t7,  3
/* 05BE0 80006040 00380821 */  addu    $at, $at, $t8
/* 05BE4 80006044 AC2E6300 */  sw      $t6, 0x6300($at)           ## 80006300
/* 05BE8 80006048 8FB90030 */  lw      $t9, 0x0030($sp)
/* 05BEC 8000604C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05BF0 80006050 000848C0 */  sll     $t1, $t0,  3
/* 05BF4 80006054 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05BF8 80006058 00290821 */  addu    $at, $at, $t1
/* 05BFC 8000605C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C00 80006060 0C001468 */  jal     __osRestoreInt
/* 05C04 80006064 AC396304 */  sw      $t9, 0x6304($at)           ## 80006304
/* 05C08 80006068 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05C0C 8000606C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 05C10 80006070 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05C14 80006074 03E00008 */  jr      $ra
/* 05C18 80006078 00000000 */  nop
/* 05C1C 8000607C 00000000 */  nop
