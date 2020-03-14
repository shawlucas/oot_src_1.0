glabel func_80000DF0
/* 00990 80000DF0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00994 80000DF4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00998 80000DF8 AFA40068 */  sw      $a0, 0x0068($sp)
/* 0099C 80000DFC AFA5006C */  sw      $a1, 0x006C($sp)
/* 009A0 80000E00 AFA60070 */  sw      $a2, 0x0070($sp)
/* 009A4 80000E04 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFC8
/* 009A8 80000E08 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFC4
/* 009AC 80000E0C 0C001088 */  jal     func_80004220              ## osCreateMesgQueue
/* 009B0 80000E10 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 009B4 80000E14 27AE0030 */  addiu   $t6, $sp, 0x0030           ## $t6 = FFFFFFC8
/* 009B8 80000E18 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 009BC 80000E1C 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 009C0 80000E20 8FA50068 */  lw      $a1, 0x0068($sp)
/* 009C4 80000E24 8FA6006C */  lw      $a2, 0x006C($sp)
/* 009C8 80000E28 8FA70070 */  lw      $a3, 0x0070($sp)
/* 009CC 80000E2C AFA00010 */  sw      $zero, 0x0010($sp)
/* 009D0 80000E30 0C00034A */  jal     func_80000D28
/* 009D4 80000E34 AFA00018 */  sw      $zero, 0x0018($sp)
/* 009D8 80000E38 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 009DC 80000E3C 14410003 */  bne     $v0, $at, .L80000E4C
/* 009E0 80000E40 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFC8
/* 009E4 80000E44 10000006 */  beq     $zero, $zero, .L80000E60
/* 009E8 80000E48 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80000E4C:
/* 009EC 80000E4C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009F0 80000E50 0C00080C */  jal     func_80002030              ## osRecvMesg
/* 009F4 80000E54 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 009F8 80000E58 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 009FC 80000E5C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80000E60:
/* 00A00 80000E60 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00A04 80000E64 03E00008 */  jr      $ra
/* 00A08 80000E68 00000000 */  nop


