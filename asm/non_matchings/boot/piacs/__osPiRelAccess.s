glabel __osPiRelAccess
/* 01994 80001DF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01998 80001DF8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0199C 80001DFC 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 019A0 80001E00 24848948 */  addiu   $a0, $a0, 0x8948           ## $a0 = 80008948
/* 019A4 80001E04 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 019A8 80001E08 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 019AC 80001E0C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 019B0 80001E10 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 019B4 80001E14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 019B8 80001E18 03E00008 */  jr      $ra
/* 019BC 80001E1C 00000000 */  nop
