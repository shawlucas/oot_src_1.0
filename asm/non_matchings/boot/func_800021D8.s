glabel func_800021D8
/* 01D78 800021D8 AFA40000 */  sw      $a0, 0x0000($sp)
/* 01D7C 800021DC AFA50004 */  sw      $a1, 0x0004($sp)
/* 01D80 800021E0 AFA60008 */  sw      $a2, 0x0008($sp)
/* 01D84 800021E4 AFA7000C */  sw      $a3, 0x000C($sp)
/* 01D88 800021E8 DFAF0008 */  ld      $t7, 0x0008($sp)
/* 01D8C 800021EC DFAE0000 */  ld      $t6, 0x0000($sp)
/* 01D90 800021F0 01CF001F */  ddivu   $zero, $t6, $t7
/* 01D94 800021F4 15E00002 */  bne     $t7, $zero, .L80002200
/* 01D98 800021F8 00000000 */  nop
/* 01D9C 800021FC 0007000D */  break 7
.L80002200:
/* 01DA0 80002200 00001012 */  mflo    $v0
/* 01DA4 80002204 0002183C */  dsll32  $v1, $v0,  0
/* 01DA8 80002208 0003183F */  dsra32  $v1, $v1,  0
/* 01DAC 8000220C 03E00008 */  jr      $ra
/* 01DB0 80002210 0002103F */  dsra32  $v0, $v0,  0


