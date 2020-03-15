.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osStopThread
/* 01B10 80001F70 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01B14 80001F74 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01B18 80001F78 AFA40038 */  sw      $a0, 0x0038($sp)
/* 01B1C 80001F7C AFB20020 */  sw      $s2, 0x0020($sp)
/* 01B20 80001F80 AFB1001C */  sw      $s1, 0x001C($sp)
/* 01B24 80001F84 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 01B28 80001F88 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01B2C 80001F8C 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 01B30 80001F90 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01B34 80001F94 15C00003 */  bne     $t6, $zero, .L80001FA4
/* 01B38 80001F98 00000000 */  nop
/* 01B3C 80001F9C 10000003 */  beq     $zero, $zero, .L80001FAC
/* 01B40 80001FA0 24110004 */  addiu   $s1, $zero, 0x0004         ## $s1 = 00000004
.L80001FA4:
/* 01B44 80001FA4 8FAF0038 */  lw      $t7, 0x0038($sp)
/* 01B48 80001FA8 95F10010 */  lhu     $s1, 0x0010($t7)           ## 00000010
.L80001FAC:
/* 01B4C 80001FAC 02209025 */  or      $s2, $s1, $zero            ## $s2 = 00000004
/* 01B50 80001FB0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01B54 80001FB4 1241000F */  beq     $s2, $at, .L80001FF4
/* 01B58 80001FB8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01B5C 80001FBC 12410005 */  beq     $s2, $at, .L80001FD4
/* 01B60 80001FC0 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01B64 80001FC4 1241000B */  beq     $s2, $at, .L80001FF4
/* 01B68 80001FC8 00000000 */  nop
/* 01B6C 80001FCC 10000010 */  beq     $zero, $zero, .L80002010
/* 01B70 80001FD0 00000000 */  nop
.L80001FD4:
/* 01B74 80001FD4 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 01B78 80001FD8 8F396340 */  lw      $t9, 0x6340($t9)           ## 80006340
/* 01B7C 80001FDC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01B80 80001FE0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 01B84 80001FE4 0C000A93 */  jal     __osEnqueueAndYield
/* 01B88 80001FE8 A7380010 */  sh      $t8, 0x0010($t9)           ## 80000010
/* 01B8C 80001FEC 10000008 */  beq     $zero, $zero, .L80002010
/* 01B90 80001FF0 00000000 */  nop
.L80001FF4:
/* 01B94 80001FF4 8FA90038 */  lw      $t1, 0x0038($sp)
/* 01B98 80001FF8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01B9C 80001FFC A5280010 */  sh      $t0, 0x0010($t1)           ## 00000010
/* 01BA0 80002000 8FAA0038 */  lw      $t2, 0x0038($sp)
/* 01BA4 80002004 8D440008 */  lw      $a0, 0x0008($t2)           ## 00000008
/* 01BA8 80002008 0C000B4C */  jal     __osDequeueThread              ## __osDequeueThread
/* 01BAC 8000200C 01402825 */  or      $a1, $t2, $zero            ## $a1 = 00000000
.L80002010:
/* 01BB0 80002010 0C001468 */  jal     __osRestoreInt
/* 01BB4 80002014 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BB8 80002018 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01BBC 8000201C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01BC0 80002020 8FB1001C */  lw      $s1, 0x001C($sp)
/* 01BC4 80002024 8FB20020 */  lw      $s2, 0x0020($sp)
/* 01BC8 80002028 03E00008 */  jr      $ra
/* 01BCC 8000202C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
