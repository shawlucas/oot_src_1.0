glabel func_80004480
/* 04020 80004480 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04024 80004484 AFBF001C */  sw      $ra, 0x001C($sp)
/* 04028 80004488 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0402C 8000448C AFA5002C */  sw      $a1, 0x002C($sp)
/* 04030 80004490 0C00144C */  jal     func_80005130              ## __osResetGlobalIntMask
/* 04034 80004494 AFB00018 */  sw      $s0, 0x0018($sp)
/* 04038 80004498 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 0403C 8000449C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 04040 800044A0 15C00004 */  bne     $t6, $zero, .L800044B4
/* 04044 800044A4 00000000 */  nop
/* 04048 800044A8 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 0404C 800044AC 8DEF6340 */  lw      $t7, 0x6340($t7)           ## 80006340
/* 04050 800044B0 AFAF0028 */  sw      $t7, 0x0028($sp)
.L800044B4:
/* 04054 800044B4 8FB80028 */  lw      $t8, 0x0028($sp)
/* 04058 800044B8 8FA8002C */  lw      $t0, 0x002C($sp)
/* 0405C 800044BC 8F190004 */  lw      $t9, 0x0004($t8)           ## 00000004
/* 04060 800044C0 13280020 */  beq     $t9, $t0, .L80004544
/* 04064 800044C4 00000000 */  nop
/* 04068 800044C8 AF080004 */  sw      $t0, 0x0004($t8)           ## 00000004
/* 0406C 800044CC 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 04070 800044D0 8D4A6340 */  lw      $t2, 0x6340($t2)           ## 80006340
/* 04074 800044D4 8FA90028 */  lw      $t1, 0x0028($sp)
/* 04078 800044D8 112A000C */  beq     $t1, $t2, .L8000450C
/* 0407C 800044DC 00000000 */  nop
/* 04080 800044E0 952B0010 */  lhu     $t3, 0x0010($t1)           ## 00000010
/* 04084 800044E4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 04088 800044E8 11610008 */  beq     $t3, $at, .L8000450C
/* 0408C 800044EC 00000000 */  nop
/* 04090 800044F0 8D240008 */  lw      $a0, 0x0008($t1)           ## 00000008
/* 04094 800044F4 0C000B4C */  jal     func_80002D30              ## __osDequeueThread
/* 04098 800044F8 01202825 */  or      $a1, $t1, $zero            ## $a1 = 00000000
/* 0409C 800044FC 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 040A0 80004500 8D840008 */  lw      $a0, 0x0008($t4)           ## 00000008
/* 040A4 80004504 0C000AD3 */  jal     func_80002B4C
/* 040A8 80004508 01802825 */  or      $a1, $t4, $zero            ## $a1 = 00000000
.L8000450C:
/* 040AC 8000450C 3C0D8000 */  lui     $t5, 0x8000                ## $t5 = 80000000
/* 040B0 80004510 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 040B4 80004514 8DEF6338 */  lw      $t7, 0x6338($t7)           ## 80006338
/* 040B8 80004518 8DAD6340 */  lw      $t5, 0x6340($t5)           ## 80006340
/* 040BC 8000451C 8DF90004 */  lw      $t9, 0x0004($t7)           ## 80000004
/* 040C0 80004520 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80000004
/* 040C4 80004524 01D9082A */  slt     $at, $t6, $t9
/* 040C8 80004528 10200006 */  beq     $at, $zero, .L80004544
/* 040CC 8000452C 00000000 */  nop
/* 040D0 80004530 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 040D4 80004534 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 040D8 80004538 A5A80010 */  sh      $t0, 0x0010($t5)           ## 80000010
/* 040DC 8000453C 0C000A93 */  jal     func_80002A4C
/* 040E0 80004540 24846338 */  addiu   $a0, $a0, 0x6338           ## $a0 = 80006338
.L80004544:
/* 040E4 80004544 0C001468 */  jal     func_800051A0


