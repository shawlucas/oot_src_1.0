glabel DmaMgr_CompareName
/* 00390 800007F0 90820000 */  lbu     $v0, 0x0000($a0)           ## 00000000
/* 00394 800007F4 50400012 */  beql    $v0, $zero, .L80000840
/* 00398 800007F8 90AE0000 */  lbu     $t6, 0x0000($a1)           ## 00000000
/* 0039C 800007FC 90A30000 */  lbu     $v1, 0x0000($a1)           ## 00000000
.L80000800:
/* 003A0 80000800 0062082A */  slt     $at, $v1, $v0
/* 003A4 80000804 50200004 */  beql    $at, $zero, .L80000818
/* 003A8 80000808 0043082A */  slt     $at, $v0, $v1
/* 003AC 8000080C 03E00008 */  jr      $ra
/* 003B0 80000810 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80000814:
/* 003B4 80000814 0043082A */  slt     $at, $v0, $v1
.L80000818:
/* 003B8 80000818 50200004 */  beql    $at, $zero, .L8000082C
/* 003BC 8000081C 90820001 */  lbu     $v0, 0x0001($a0)           ## 00000001
/* 003C0 80000820 03E00008 */  jr      $ra
/* 003C4 80000824 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80000828:
/* 003C8 80000828 90820001 */  lbu     $v0, 0x0001($a0)           ## 00000001
.L8000082C:
/* 003CC 8000082C 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
/* 003D0 80000830 24A50001 */  addiu   $a1, $a1, 0x0001           ## $a1 = 00000001
/* 003D4 80000834 5440FFF2 */  bnel    $v0, $zero, .L80000800
/* 003D8 80000838 90A30000 */  lbu     $v1, 0x0000($a1)           ## 00000001
/* 003DC 8000083C 90AE0000 */  lbu     $t6, 0x0000($a1)           ## 00000001
.L80000840:
/* 003E0 80000840 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 003E4 80000844 19C00003 */  blez    $t6, .L80000854
/* 003E8 80000848 00000000 */  nop
/* 003EC 8000084C 03E00008 */  jr      $ra
/* 003F0 80000850 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80000854:
/* 003F4 80000854 03E00008 */  jr      $ra
/* 003F8 80000858 00000000 */  nop
