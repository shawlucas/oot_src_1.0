glabel viMgrMain
/* 058C0 80005D20 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 058C4 80005D24 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 058C8 80005D28 AFB70030 */  sw      $s7, 0x0030($sp)
/* 058CC 80005D2C 0080B825 */  or      $s7, $a0, $zero            ## $s7 = 00000000
/* 058D0 80005D30 AFB6002C */  sw      $s6, 0x002C($sp)
/* 058D4 80005D34 AFB50028 */  sw      $s5, 0x0028($sp)
/* 058D8 80005D38 AFB40024 */  sw      $s4, 0x0024($sp)
/* 058DC 80005D3C AFB30020 */  sw      $s3, 0x0020($sp)
/* 058E0 80005D40 AFB2001C */  sw      $s2, 0x001C($sp)
/* 058E4 80005D44 AFB10018 */  sw      $s1, 0x0018($sp)
/* 058E8 80005D48 AFB00014 */  sw      $s0, 0x0014($sp)
/* 058EC 80005D4C 0C0017AC */  jal     __osViGetCurrentContext
/* 058F0 80005D50 AFA00044 */  sw      $zero, 0x0044($sp)
/* 058F4 80005D54 94430002 */  lhu     $v1, 0x0002($v0)           ## 00000002
/* 058F8 80005D58 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 058FC 80005D5C 2416000E */  addiu   $s6, $zero, 0x000E         ## $s6 = 0000000E
/* 05900 80005D60 14600004 */  bne     $v1, $zero, .L80005D74
/* 05904 80005D64 A423B130 */  sh      $v1, -0x4ED0($at)          ## 8000B130
/* 05908 80005D68 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0590C 80005D6C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 05910 80005D70 A423B130 */  sh      $v1, -0x4ED0($at)          ## 8000B130
.L80005D74:
/* 05914 80005D74 3C138001 */  lui     $s3, 0x8001                ## $s3 = 80010000
/* 05918 80005D78 3C128001 */  lui     $s2, 0x8001                ## $s2 = 80010000
/* 0591C 80005D7C 3C118001 */  lui     $s1, 0x8001                ## $s1 = 80010000
/* 05920 80005D80 26319E80 */  addiu   $s1, $s1, 0x9E80           ## $s1 = 80009E80
/* 05924 80005D84 26529E88 */  addiu   $s2, $s2, 0x9E88           ## $s2 = 80009E88
/* 05928 80005D88 26739E8C */  addiu   $s3, $s3, 0x9E8C           ## $s3 = 80009E8C
/* 0592C 80005D8C 2415000D */  addiu   $s5, $zero, 0x000D         ## $s5 = 0000000D
/* 05930 80005D90 27B40044 */  addiu   $s4, $sp, 0x0044           ## $s4 = FFFFFFF4
.L80005D94:
/* 05934 80005D94 8EE4000C */  lw      $a0, 0x000C($s7)           ## 0000000C
.L80005D98:
/* 05938 80005D98 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 0593C 80005D9C 0C00080C */  jal     osRecvMesg              ## osRecvMesg
/* 05940 80005DA0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 05944 80005DA4 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 05948 80005DA8 95C30000 */  lhu     $v1, 0x0000($t6)           ## 00000000
/* 0594C 80005DAC 10750005 */  beq     $v1, $s5, .L80005DC4
/* 05950 80005DB0 00000000 */  nop
/* 05954 80005DB4 1076002A */  beq     $v1, $s6, .L80005E60
/* 05958 80005DB8 00000000 */  nop
/* 0595C 80005DBC 1000FFF6 */  beq     $zero, $zero, .L80005D98
/* 05960 80005DC0 8EE4000C */  lw      $a0, 0x000C($s7)           ## 0000000C
.L80005DC4:
/* 05964 80005DC4 0C0014C0 */  jal     __osViSwapContext
/* 05968 80005DC8 00000000 */  nop
/* 0596C 80005DCC 3C038001 */  lui     $v1, 0x8001                ## $v1 = 80010000
/* 05970 80005DD0 9463B130 */  lhu     $v1, -0x4ED0($v1)          ## 8000B130
/* 05974 80005DD4 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 05978 80005DD8 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 8000FFFF
/* 0597C 80005DDC 306FFFFF */  andi    $t7, $v1, 0xFFFF           ## $t7 = 0000FFFF
/* 05980 80005DE0 15E0000E */  bne     $t7, $zero, .L80005E1C
/* 05984 80005DE4 A42FB130 */  sh      $t7, -0x4ED0($at)          ## 8000B130
/* 05988 80005DE8 0C0017AC */  jal     __osViGetCurrentContext
/* 0598C 80005DEC 00000000 */  nop
/* 05990 80005DF0 8C580010 */  lw      $t8, 0x0010($v0)           ## 00000010
/* 05994 80005DF4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 05998 80005DF8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0599C 80005DFC 53000005 */  beql    $t8, $zero, .L80005E14
/* 059A0 80005E00 96030002 */  lhu     $v1, 0x0002($s0)           ## 00000002
/* 059A4 80005E04 8C440010 */  lw      $a0, 0x0010($v0)           ## 00000010
/* 059A8 80005E08 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 059AC 80005E0C 8C450014 */  lw      $a1, 0x0014($v0)           ## 00000014
/* 059B0 80005E10 96030002 */  lhu     $v1, 0x0002($s0)           ## 00000002
.L80005E14:
/* 059B4 80005E14 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 059B8 80005E18 A423B130 */  sh      $v1, -0x4ED0($at)          ## 8000B130
.L80005E1C:
/* 059BC 80005E1C 8E790000 */  lw      $t9, 0x0000($s3)           ## 80009E8C
/* 059C0 80005E20 8E500000 */  lw      $s0, 0x0000($s2)           ## 80009E88
/* 059C4 80005E24 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 059C8 80005E28 0C001354 */  jal     osGetCount              ## osGetCount
/* 059CC 80005E2C AE680000 */  sw      $t0, 0x0000($s3)           ## 80009E8C
/* 059D0 80005E30 8E2D0004 */  lw      $t5, 0x0004($s1)           ## 80009E84
/* 059D4 80005E34 00508023 */  subu    $s0, $v0, $s0
/* 059D8 80005E38 8E2C0000 */  lw      $t4, 0x0000($s1)           ## 80009E80
/* 059DC 80005E3C 020D7821 */  addu    $t7, $s0, $t5
/* 059E0 80005E40 240A0000 */  addiu   $t2, $zero, 0x0000         ## $t2 = 00000000
/* 059E4 80005E44 01ED082B */  sltu    $at, $t7, $t5
/* 059E8 80005E48 002A7021 */  addu    $t6, $at, $t2
/* 059EC 80005E4C 01CC7021 */  addu    $t6, $t6, $t4
/* 059F0 80005E50 AE420000 */  sw      $v0, 0x0000($s2)           ## 80009E88
/* 059F4 80005E54 AE2E0000 */  sw      $t6, 0x0000($s1)           ## 80009E80
/* 059F8 80005E58 1000FFCE */  beq     $zero, $zero, .L80005D94
/* 059FC 80005E5C AE2F0004 */  sw      $t7, 0x0004($s1)           ## 80009E84
.L80005E60:
/* 05A00 80005E60 0C001277 */  jal     __osTimerInterrupt
/* 05A04 80005E64 00000000 */  nop
/* 05A08 80005E68 1000FFCB */  beq     $zero, $zero, .L80005D98
/* 05A0C 80005E6C 8EE4000C */  lw      $a0, 0x000C($s7)           ## 0000000C
/* 05A10 80005E70 00000000 */  nop
/* 05A14 80005E74 00000000 */  nop
/* 05A18 80005E78 00000000 */  nop
/* 05A1C 80005E7C 00000000 */  nop
/* 05A20 80005E80 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 05A24 80005E84 8FB00014 */  lw      $s0, 0x0014($sp)
/* 05A28 80005E88 8FB10018 */  lw      $s1, 0x0018($sp)
/* 05A2C 80005E8C 8FB2001C */  lw      $s2, 0x001C($sp)
/* 05A30 80005E90 8FB30020 */  lw      $s3, 0x0020($sp)
/* 05A34 80005E94 8FB40024 */  lw      $s4, 0x0024($sp)
/* 05A38 80005E98 8FB50028 */  lw      $s5, 0x0028($sp)
/* 05A3C 80005E9C 8FB6002C */  lw      $s6, 0x002C($sp)
/* 05A40 80005EA0 8FB70030 */  lw      $s7, 0x0030($sp)
/* 05A44 80005EA4 03E00008 */  jr      $ra
/* 05A48 80005EA8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 05A4C 80005EAC 00000000 */  nop
