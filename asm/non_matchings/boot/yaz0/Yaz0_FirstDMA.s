glabel Yaz0_FirstDMA
/* 00B00 80000F60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B04 80000F64 3C058001 */  lui     $a1, %hi(sYaz0DataBuffer)                ## $a1 = 80010000
/* 00B08 80000F68 3C078001 */  lui     $a3, %hi(sYaz0CurSize)                ## $a3 = 80010000
/* 00B0C 80000F6C 24E78898 */  addiu   $a3, $a3, %lo(sYaz0CurSize)           ## $a3 = 80008898
/* 00B10 80000F70 24A58490 */  addiu   $a1, $a1, %lo(sYaz0DataBuffer)           ## $a1 = 80008490
/* 00B14 80000F74 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00B18 80000F78 3C028001 */  lui     $v0, %hi(sYaz0CurDataEnd)                ## $v0 = 80010000
/* 00B1C 80000F7C 8C428890 */  lw      $v0, %lo(sYaz0CurDataEnd)($v0)          ## 80008890
/* 00B20 80000F80 3C018001 */  lui     $at, %hi(sYaz0MaxPtr)                ## $at = 80010000
/* 00B24 80000F84 244EFFE7 */  addiu   $t6, $v0, 0xFFE7           ## $t6 = 8000FFE7
/* 00B28 80000F88 AC2E889C */  sw      $t6, %lo(sYaz0MaxPtr)($at)          ## 8000889C
/* 00B2C 80000F8C 8CE40000 */  lw      $a0, 0x0000($a3)           ## 80008898
/* 00B30 80000F90 00451823 */  subu    $v1, $v0, $a1
/* 00B34 80000F94 00603025 */  or      $a2, $v1, $zero            ## $a2 = 00000000
/* 00B38 80000F98 0083082B */  sltu    $at, $a0, $v1
/* 00B3C 80000F9C 10200003 */  beq     $at, $zero, .L80000FAC
/* 00B40 80000FA0 00000000 */  nop
/* 00B44 80000FA4 10000001 */  beq     $zero, $zero, .L80000FAC
/* 00B48 80000FA8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
.L80000FAC:
/* 00B4C 80000FAC 3C048001 */  lui     $a0, %hi(sYaz0CurRomStart)                ## $a0 = 80010000
/* 00B50 80000FB0 8C848894 */  lw      $a0, %lo(sYaz0CurRomStart)($a0)          ## 80008894
/* 00B54 80000FB4 0C000217 */  jal     DmaMgr_DMARomToRam
/* 00B58 80000FB8 AFA6001C */  sw      $a2, 0x001C($sp)
/* 00B5C 80000FBC 3C038001 */  lui     $v1, %hi(sYaz0CurRomStart)                ## $v1 = 80010000
/* 00B60 80000FC0 3C078001 */  lui     $a3, %hi(sYaz0CurSize)               ## $a3 = 80010000
/* 00B64 80000FC4 8FA6001C */  lw      $a2, 0x001C($sp)
/* 00B68 80000FC8 24E78898 */  addiu   $a3, $a3, %lo(sYaz0CurSize)           ## $a3 = 80008898
/* 00B6C 80000FCC 24638894 */  addiu   $v1, $v1, %lo(sYaz0CurRomStart)           ## $v1 = 80008894
/* 00B70 80000FD0 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 80008894
/* 00B74 80000FD4 8CF90000 */  lw      $t9, 0x0000($a3)           ## 80008898
/* 00B78 80000FD8 3C028001 */  lui     $v0, %hi(sYaz0DataBuffer)                ## $v0 = 80010000
/* 00B7C 80000FDC 01E6C021 */  addu    $t8, $t7, $a2
/* 00B80 80000FE0 03264023 */  subu    $t0, $t9, $a2
/* 00B84 80000FE4 AC780000 */  sw      $t8, 0x0000($v1)           ## 80008894
/* 00B88 80000FE8 ACE80000 */  sw      $t0, 0x0000($a3)           ## 80008898
/* 00B8C 80000FEC 24428490 */  addiu   $v0, $v0, %lo(sYaz0DataBuffer)           ## $v0 = 80008490
/* 00B90 80000FF0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00B94 80000FF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B98 80000FF8 03E00008 */  jr      $ra
/* 00B9C 80000FFC 00000000 */  nop

