glabel func_8000227C
/* 01E1C 8000227C AFA40000 */  sw      $a0, 0x0000($sp)
/* 01E20 80002280 AFA50004 */  sw      $a1, 0x0004($sp)
/* 01E24 80002284 AFA60008 */  sw      $a2, 0x0008($sp)
/* 01E28 80002288 AFA7000C */  sw      $a3, 0x000C($sp)
/* 01E2C 8000228C DFAF0008 */  ld      $t7, 0x0008($sp)
/* 01E30 80002290 DFAE0000 */  ld      $t6, 0x0000($sp)
/* 01E34 80002294 01CF001E */  ddiv    $zero, $t6, $t7
/* 01E38 80002298 00000000 */  nop
/* 01E3C 8000229C 15E00002 */  bne     $t7, $zero, .L800022A8
/* 01E40 800022A0 00000000 */  nop
/* 01E44 800022A4 0007000D */  break 7
.L800022A8:
/* 01E48 800022A8 6401FFFF */  daddiu  $at, $zero, 0xFFFF
/* 01E4C 800022AC 15E10005 */  bne     $t7, $at, .L800022C4
/* 01E50 800022B0 64010001 */  daddiu  $at, $zero, 0x0001
/* 01E54 800022B4 00010FFC */  dsll32  $at, $at, 31
/* 01E58 800022B8 15C10002 */  bne     $t6, $at, .L800022C4
/* 01E5C 800022BC 00000000 */  nop
/* 01E60 800022C0 0006000D */  break 6
.L800022C4:
/* 01E64 800022C4 00001012 */  mflo    $v0
/* 01E68 800022C8 0002183C */  dsll32  $v1, $v0,  0
/* 01E6C 800022CC 0003183F */  dsra32  $v1, $v1,  0
/* 01E70 800022D0 03E00008 */  jr      $ra
/* 01E74 800022D4 0002103F */  dsra32  $v0, $v0,  0

