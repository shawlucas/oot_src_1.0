glabel func_80003B60
/* 03700 80003B60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03704 80003B64 AFA40018 */  sw      $a0, 0x0018($sp)
/* 03708 80003B68 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 0370C 80003B6C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03710 80003B70 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 03714 80003B74 01C1082B */  sltu    $at, $t6, $at
/* 03718 80003B78 14200007 */  bne     $at, $zero, .L80003B98
/* 0371C 80003B7C 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 03720 80003B80 01C1082B */  sltu    $at, $t6, $at
/* 03724 80003B84 10200004 */  beq     $at, $zero, .L80003B98
/* 03728 80003B88 3C011FFF */  lui     $at, 0x1FFF                ## $at = 1FFF0000
/* 0372C 80003B8C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 1FFFFFFF
/* 03730 80003B90 1000000E */  beq     $zero, $zero, .L80003BCC
/* 03734 80003B94 01C11024 */  and     $v0, $t6, $at
.L80003B98:
/* 03738 80003B98 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 0373C 80003B9C 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 03740 80003BA0 01E1082B */  sltu    $at, $t7, $at
/* 03744 80003BA4 14200007 */  bne     $at, $zero, .L80003BC4
/* 03748 80003BA8 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 0374C 80003BAC 01E1082B */  sltu    $at, $t7, $at
/* 03750 80003BB0 10200004 */  beq     $at, $zero, .L80003BC4
/* 03754 80003BB4 3C011FFF */  lui     $at, 0x1FFF                ## $at = 1FFF0000
/* 03758 80003BB8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 1FFFFFFF
/* 0375C 80003BBC 10000003 */  beq     $zero, $zero, .L80003BCC
/* 03760 80003BC0 01E11024 */  and     $v0, $t7, $at
.L80003BC4:
/* 03764 80003BC4 0C000F74 */  jal     func_80003DD0              ## __osProbeTLB
/* 03768 80003BC8 8FA40018 */  lw      $a0, 0x0018($sp)
.L80003BCC:
/* 0376C 80003BCC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03770 80003BD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03774 80003BD4 03E00008 */  jr      $ra
/* 03778 80003BD8 00000000 */  nop
/* 0377C 80003BDC 00000000 */  nop


