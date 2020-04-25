.rdata

glabel D_800066D0
    .asciz "*** HungUp in thread %d, [%s:%d] ***\n"
    .balign 4

.text
glabel LogUtils_HungUpThread
/* 016D8 80001B38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016DC 80001B3C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 016E0 80001B40 AFA40018 */  sw      $a0, 0x0018($sp)
/* 016E4 80001B44 AFA5001C */  sw      $a1, 0x001C($sp)
/* 016E8 80001B48 0C000F28 */  jal     osGetThreadId              ## osGetThreadId
/* 016EC 80001B4C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 016F0 80001B50 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 016F4 80001B54 248466D0 */  addiu   $a0, $a0, 0x66D0           ## $a0 = 800066D0
/* 016F8 80001B58 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 016FC 80001B5C 8FA60018 */  lw      $a2, 0x0018($sp)
/* 01700 80001B60 0C00056F */  jal     func_800015BC
/* 01704 80001B64 8FA7001C */  lw      $a3, 0x001C($sp)
/* 01708 80001B68 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0170C 80001B6C 0C02BDCD */  jal     Fault_AddHungupAndCrash
/* 01710 80001B70 8FA5001C */  lw      $a1, 0x001C($sp)
/* 01714 80001B74 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01718 80001B78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0171C 80001B7C 03E00008 */  jr      $ra
/* 01720 80001B80 00000000 */  nop

