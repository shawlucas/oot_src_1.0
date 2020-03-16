.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osStartThread
/* 05A60 80005EC0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05A64 80005EC4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 05A68 80005EC8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 05A6C 80005ECC AFB10018 */  sw      $s1, 0x0018($sp)
/* 05A70 80005ED0 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 05A74 80005ED4 AFB00014 */  sw      $s0, 0x0014($sp)
/* 05A78 80005ED8 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 05A7C 80005EDC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05A80 80005EE0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05A84 80005EE4 95D10010 */  lhu     $s1, 0x0010($t6)           ## 00000010
/* 05A88 80005EE8 1221000C */  beq     $s1, $at, .L80005F1C
/* 05A8C 80005EEC 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 05A90 80005EF0 1621002A */  bne     $s1, $at, .L80005F9C
/* 05A94 80005EF4 00000000 */  nop
/* 05A98 80005EF8 8FB80028 */  lw      $t8, 0x0028($sp)
/* 05A9C 80005EFC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 05AA0 80005F00 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05AA4 80005F04 A70F0010 */  sh      $t7, 0x0010($t8)           ## 00000010
/* 05AA8 80005F08 8FA50028 */  lw      $a1, 0x0028($sp)
/* 05AAC 80005F0C 0C000AD3 */  jal     __osEnqueueThread
/* 05AB0 80005F10 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
/* 05AB4 80005F14 10000021 */  beq     $zero, $zero, .L80005F9C
/* 05AB8 80005F18 00000000 */  nop
.L80005F1C:
/* 05ABC 80005F1C 8FB90028 */  lw      $t9, 0x0028($sp)
/* 05AC0 80005F20 8F280008 */  lw      $t0, 0x0008($t9)           ## 00000008
/* 05AC4 80005F24 11000005 */  beq     $t0, $zero, .L80005F3C
/* 05AC8 80005F28 00000000 */  nop
/* 05ACC 80005F2C 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 05AD0 80005F30 25296338 */  addiu   $t1, $t1, 0x6338           ## $t1 = 80006338
/* 05AD4 80005F34 1509000A */  bne     $t0, $t1, .L80005F60
/* 05AD8 80005F38 00000000 */  nop
.L80005F3C:
/* 05ADC 80005F3C 8FAB0028 */  lw      $t3, 0x0028($sp)
/* 05AE0 80005F40 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 05AE4 80005F44 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05AE8 80005F48 A56A0010 */  sh      $t2, 0x0010($t3)           ## 00000010
/* 05AEC 80005F4C 8FA50028 */  lw      $a1, 0x0028($sp)
/* 05AF0 80005F50 0C000AD3 */  jal     __osEnqueueThread
/* 05AF4 80005F54 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
/* 05AF8 80005F58 10000010 */  beq     $zero, $zero, .L80005F9C
/* 05AFC 80005F5C 00000000 */  nop
.L80005F60:
/* 05B00 80005F60 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 05B04 80005F64 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 05B08 80005F68 A5AC0010 */  sh      $t4, 0x0010($t5)           ## 00000010
/* 05B0C 80005F6C 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 05B10 80005F70 8DC40008 */  lw      $a0, 0x0008($t6)           ## 00000008
/* 05B14 80005F74 0C000AD3 */  jal     __osEnqueueThread
/* 05B18 80005F78 01C02825 */  or      $a1, $t6, $zero            ## $a1 = 00000000
/* 05B1C 80005F7C 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 05B20 80005F80 0C000AE5 */  jal     __osPopThread
/* 05B24 80005F84 8DE40008 */  lw      $a0, 0x0008($t7)           ## 00000008
/* 05B28 80005F88 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 05B2C 80005F8C 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05B30 80005F90 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
/* 05B34 80005F94 0C000AD3 */  jal     __osEnqueueThread
/* 05B38 80005F98 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80005F9C:
/* 05B3C 80005F9C 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 05B40 80005FA0 8F186340 */  lw      $t8, 0x6340($t8)           ## 80006340
/* 05B44 80005FA4 17000005 */  bne     $t8, $zero, .L80005FBC
/* 05B48 80005FA8 00000000 */  nop
/* 05B4C 80005FAC 0C000AE9 */  jal     __osDispatchThread
/* 05B50 80005FB0 00000000 */  nop
/* 05B54 80005FB4 1000000F */  beq     $zero, $zero, .L80005FF4
/* 05B58 80005FB8 00000000 */  nop
.L80005FBC:
/* 05B5C 80005FBC 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 05B60 80005FC0 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 05B64 80005FC4 8D296338 */  lw      $t1, 0x6338($t1)           ## 80006338
/* 05B68 80005FC8 8F396340 */  lw      $t9, 0x6340($t9)           ## 80006340
/* 05B6C 80005FCC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80000004
/* 05B70 80005FD0 8F280004 */  lw      $t0, 0x0004($t9)           ## 80000004
/* 05B74 80005FD4 010A082A */  slt     $at, $t0, $t2
/* 05B78 80005FD8 10200006 */  beq     $at, $zero, .L80005FF4
/* 05B7C 80005FDC 00000000 */  nop
/* 05B80 80005FE0 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 05B84 80005FE4 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 05B88 80005FE8 A72B0010 */  sh      $t3, 0x0010($t9)           ## 80000010
/* 05B8C 80005FEC 0C000A93 */  jal     __osEnqueueAndYield
/* 05B90 80005FF0 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
.L80005FF4:
/* 05B94 80005FF4 0C001468 */  jal     __osRestoreInt
/* 05B98 80005FF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05B9C 80005FFC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05BA0 80006000 8FB00014 */  lw      $s0, 0x0014($sp)
/* 05BA4 80006004 8FB10018 */  lw      $s1, 0x0018($sp)
/* 05BA8 80006008 03E00008 */  jr      $ra
/* 05BAC 8000600C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
