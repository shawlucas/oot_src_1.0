glabel func_80004330
/* 03ED0 80004330 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03ED4 80004334 AFBF001C */  sw      $ra, 0x001C($sp)
/* 03ED8 80004338 AFA40028 */  sw      $a0, 0x0028($sp)
/* 03EDC 8000433C AFA5002C */  sw      $a1, 0x002C($sp)
/* 03EE0 80004340 AFA60030 */  sw      $a2, 0x0030($sp)
/* 03EE4 80004344 AFB10018 */  sw      $s1, 0x0018($sp)
/* 03EE8 80004348 0C00144C */  jal     func_80005130              ## __osResetGlobalIntMask
/* 03EEC 8000434C AFB00014 */  sw      $s0, 0x0014($sp)
/* 03EF0 80004350 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 03EF4 80004354 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 03EF8 80004358 8DCF0008 */  lw      $t7, 0x0008($t6)           ## 00000008
/* 03EFC 8000435C 8DD80010 */  lw      $t8, 0x0010($t6)           ## 00000010
/* 03F00 80004360 01F8082A */  slt     $at, $t7, $t8
/* 03F04 80004364 14200018 */  bne     $at, $zero, .L800043C8
/* 03F08 80004368 00000000 */  nop
.L8000436C:
/* 03F0C 8000436C 8FB90030 */  lw      $t9, 0x0030($sp)
/* 03F10 80004370 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03F14 80004374 1721000A */  bne     $t9, $at, .L800043A0
/* 03F18 80004378 00000000 */  nop
/* 03F1C 8000437C 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 03F20 80004380 8D296340 */  lw      $t1, 0x6340($t1)           ## 80006340
/* 03F24 80004384 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 03F28 80004388 A5280010 */  sh      $t0, 0x0010($t1)           ## 80000010
/* 03F2C 8000438C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 03F30 80004390 0C000A93 */  jal     func_80002A4C
/* 03F34 80004394 24840004 */  addiu   $a0, $a0, 0x0004           ## $a0 = 00000004
/* 03F38 80004398 10000005 */  beq     $zero, $zero, .L800043B0
/* 03F3C 8000439C 00000000 */  nop
.L800043A0:
/* 03F40 800043A0 0C001468 */  jal     func_800051A0
/* 03F44 800043A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F48 800043A8 10000030 */  beq     $zero, $zero, .L8000446C
/* 03F4C 800043AC 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L800043B0:
/* 03F50 800043B0 8FAA0028 */  lw      $t2, 0x0028($sp)
/* 03F54 800043B4 8D4B0008 */  lw      $t3, 0x0008($t2)           ## 00000008
/* 03F58 800043B8 8D4C0010 */  lw      $t4, 0x0010($t2)           ## 00000010
/* 03F5C 800043BC 016C082A */  slt     $at, $t3, $t4
/* 03F60 800043C0 1020FFEA */  beq     $at, $zero, .L8000436C
/* 03F64 800043C4 00000000 */  nop
.L800043C8:
/* 03F68 800043C8 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 03F6C 800043CC 8DAE000C */  lw      $t6, 0x000C($t5)           ## 0000000C
/* 03F70 800043D0 8DAF0010 */  lw      $t7, 0x0010($t5)           ## 00000010
/* 03F74 800043D4 01CFC021 */  addu    $t8, $t6, $t7
/* 03F78 800043D8 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 03F7C 800043DC 032F001A */  div     $zero, $t9, $t7
/* 03F80 800043E0 00004010 */  mfhi    $t0
/* 03F84 800043E4 ADA8000C */  sw      $t0, 0x000C($t5)           ## 0000000C
/* 03F88 800043E8 8FAA0028 */  lw      $t2, 0x0028($sp)
/* 03F8C 800043EC 8FA9002C */  lw      $t1, 0x002C($sp)
/* 03F90 800043F0 15E00002 */  bne     $t7, $zero, .L800043FC
/* 03F94 800043F4 00000000 */  nop
/* 03F98 800043F8 0007000D */  break 7
.L800043FC:
/* 03F9C 800043FC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 03FA0 80004400 15E10004 */  bne     $t7, $at, .L80004414
/* 03FA4 80004404 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03FA8 80004408 17210002 */  bne     $t9, $at, .L80004414
/* 03FAC 8000440C 00000000 */  nop
/* 03FB0 80004410 0006000D */  break 6
.L80004414:
/* 03FB4 80004414 8D4C000C */  lw      $t4, 0x000C($t2)           ## 0000000C
/* 03FB8 80004418 8D4B0014 */  lw      $t3, 0x0014($t2)           ## 00000014
/* 03FBC 8000441C 000C7080 */  sll     $t6, $t4,  2
/* 03FC0 80004420 016EC021 */  addu    $t8, $t3, $t6
/* 03FC4 80004424 AF090000 */  sw      $t1, 0x0000($t8)           ## 00000000
/* 03FC8 80004428 8FB90028 */  lw      $t9, 0x0028($sp)
/* 03FCC 8000442C 8F2F0008 */  lw      $t7, 0x0008($t9)           ## 00000007
/* 03FD0 80004430 25E80001 */  addiu   $t0, $t7, 0x0001           ## $t0 = 00000001
/* 03FD4 80004434 AF280008 */  sw      $t0, 0x0008($t9)           ## 00000007
/* 03FD8 80004438 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 03FDC 8000443C 8DAA0000 */  lw      $t2, 0x0000($t5)           ## 00000000
/* 03FE0 80004440 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 00000000
/* 03FE4 80004444 11800006 */  beq     $t4, $zero, .L80004460
/* 03FE8 80004448 00000000 */  nop
/* 03FEC 8000444C 0C000AE5 */  jal     func_80002B94
/* 03FF0 80004450 01A02025 */  or      $a0, $t5, $zero            ## $a0 = 00000000
/* 03FF4 80004454 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 03FF8 80004458 0C0017B0 */  jal     func_80005EC0              ## osStartThread
/* 03FFC 8000445C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80004460:
/* 04000 80004460 0C001468 */  jal     func_800051A0
/* 04004 80004464 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04008 80004468 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8000446C:
/* 0400C 8000446C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 04010 80004470 8FB00014 */  lw      $s0, 0x0014($sp)
/* 04014 80004474 8FB10018 */  lw      $s1, 0x0018($sp)
/* 04018 80004478 03E00008 */  jr      $ra
/* 0401C 8000447C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


