.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osSendMesg
/* 019C0 80001E20 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 019C4 80001E24 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 019C8 80001E28 AFA40038 */  sw      $a0, 0x0038($sp)
/* 019CC 80001E2C AFA5003C */  sw      $a1, 0x003C($sp)
/* 019D0 80001E30 AFA60040 */  sw      $a2, 0x0040($sp)
/* 019D4 80001E34 AFB20020 */  sw      $s2, 0x0020($sp)
/* 019D8 80001E38 AFB1001C */  sw      $s1, 0x001C($sp)
/* 019DC 80001E3C 0C00144C */  jal     __osResetGlobalIntMask              ## __osResetGlobalIntMask
/* 019E0 80001E40 AFB00018 */  sw      $s0, 0x0018($sp)
/* 019E4 80001E44 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 019E8 80001E48 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 019EC 80001E4C 8DCF0008 */  lw      $t7, 0x0008($t6)           ## 00000008
/* 019F0 80001E50 8DD80010 */  lw      $t8, 0x0010($t6)           ## 00000010
/* 019F4 80001E54 01F8082A */  slt     $at, $t7, $t8
/* 019F8 80001E58 14200018 */  bne     $at, $zero, .L80001EBC
/* 019FC 80001E5C 00000000 */  nop
.L80001E60:
/* 01A00 80001E60 8FB90040 */  lw      $t9, 0x0040($sp)
/* 01A04 80001E64 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01A08 80001E68 1721000A */  bne     $t9, $at, .L80001E94
/* 01A0C 80001E6C 00000000 */  nop
/* 01A10 80001E70 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 01A14 80001E74 8D296340 */  lw      $t1, 0x6340($t1)           ## 80006340
/* 01A18 80001E78 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 01A1C 80001E7C A5280010 */  sh      $t0, 0x0010($t1)           ## 80000010
/* 01A20 80001E80 8FA40038 */  lw      $a0, 0x0038($sp)
/* 01A24 80001E84 0C000A93 */  jal     __osEnqueueAndYield
/* 01A28 80001E88 24840004 */  addiu   $a0, $a0, 0x0004           ## $a0 = 00000004
/* 01A2C 80001E8C 10000005 */  beq     $zero, $zero, .L80001EA4
/* 01A30 80001E90 00000000 */  nop
.L80001E94:
/* 01A34 80001E94 0C001468 */  jal     __osRestoreInt
/* 01A38 80001E98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A3C 80001E9C 1000002D */  beq     $zero, $zero, .L80001F54
/* 01A40 80001EA0 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80001EA4:
/* 01A44 80001EA4 8FAA0038 */  lw      $t2, 0x0038($sp)
/* 01A48 80001EA8 8D4B0008 */  lw      $t3, 0x0008($t2)           ## 00000008
/* 01A4C 80001EAC 8D4C0010 */  lw      $t4, 0x0010($t2)           ## 00000010
/* 01A50 80001EB0 016C082A */  slt     $at, $t3, $t4
/* 01A54 80001EB4 1020FFEA */  beq     $at, $zero, .L80001E60
/* 01A58 80001EB8 00000000 */  nop
.L80001EBC:
/* 01A5C 80001EBC 8FAD0038 */  lw      $t5, 0x0038($sp)
/* 01A60 80001EC0 8FA8003C */  lw      $t0, 0x003C($sp)
/* 01A64 80001EC4 8DAE000C */  lw      $t6, 0x000C($t5)           ## 0000000C
/* 01A68 80001EC8 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 00000008
/* 01A6C 80001ECC 8DB90010 */  lw      $t9, 0x0010($t5)           ## 00000010
/* 01A70 80001ED0 8DA90014 */  lw      $t1, 0x0014($t5)           ## 00000014
/* 01A74 80001ED4 01CFC021 */  addu    $t8, $t6, $t7
/* 01A78 80001ED8 0319001A */  div     $zero, $t8, $t9
/* 01A7C 80001EDC 00008810 */  mfhi    $s1
/* 01A80 80001EE0 00115080 */  sll     $t2, $s1,  2
/* 01A84 80001EE4 012A5821 */  addu    $t3, $t1, $t2
/* 01A88 80001EE8 AD680000 */  sw      $t0, 0x0000($t3)           ## 00000000
/* 01A8C 80001EEC 8FAC0038 */  lw      $t4, 0x0038($sp)
/* 01A90 80001EF0 17200002 */  bne     $t9, $zero, .L80001EFC
/* 01A94 80001EF4 00000000 */  nop
/* 01A98 80001EF8 0007000D */  break 7
.L80001EFC:
/* 01A9C 80001EFC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 01AA0 80001F00 17210004 */  bne     $t9, $at, .L80001F14
/* 01AA4 80001F04 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01AA8 80001F08 17010002 */  bne     $t8, $at, .L80001F14
/* 01AAC 80001F0C 00000000 */  nop
/* 01AB0 80001F10 0006000D */  break 6
.L80001F14:
/* 01AB4 80001F14 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 00000008
/* 01AB8 80001F18 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01ABC 80001F1C AD8F0008 */  sw      $t7, 0x0008($t4)           ## 00000008
/* 01AC0 80001F20 8FB80038 */  lw      $t8, 0x0038($sp)
/* 01AC4 80001F24 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 01AC8 80001F28 8F2D0000 */  lw      $t5, 0x0000($t9)           ## 00000000
/* 01ACC 80001F2C 11A00006 */  beq     $t5, $zero, .L80001F48
/* 01AD0 80001F30 00000000 */  nop
/* 01AD4 80001F34 0C000AE5 */  jal     func_80002B94
/* 01AD8 80001F38 03002025 */  or      $a0, $t8, $zero            ## $a0 = 00000000
/* 01ADC 80001F3C 00409025 */  or      $s2, $v0, $zero            ## $s2 = 00000000
/* 01AE0 80001F40 0C0017B0 */  jal     osStartThread              ## osStartThread
/* 01AE4 80001F44 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
.L80001F48:
/* 01AE8 80001F48 0C001468 */  jal     __osRestoreInt
/* 01AEC 80001F4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AF0 80001F50 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80001F54:
/* 01AF4 80001F54 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01AF8 80001F58 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01AFC 80001F5C 8FB1001C */  lw      $s1, 0x001C($sp)
/* 01B00 80001F60 8FB20020 */  lw      $s2, 0x0020($sp)
/* 01B04 80001F64 03E00008 */  jr      $ra
/* 01B08 80001F68 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01B0C 80001F6C 00000000 */  nop
