.rdata

glabel D_800066F8
    .asciz "*** Reset ***\n"
    .balign 4

glabel D_80006708
    .asciz "Reset"
    .balign 4

.text
glabel func_80001B84
/* 01724 80001B84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01728 80001B88 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0172C 80001B8C 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 01730 80001B90 0C00056F */  jal     func_800015BC
/* 01734 80001B94 248466F8 */  addiu   $a0, $a0, 0x66F8           ## $a0 = 800066F8
/* 01738 80001B98 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 0173C 80001B9C 24846708 */  addiu   $a0, $a0, 0x6708           ## $a0 = 80006708
/* 01740 80001BA0 0C02BDCD */  jal     Fault_AddHungupAndCrash
/* 01744 80001BA4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01748 80001BA8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0174C 80001BAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01750 80001BB0 03E00008 */  jr      $ra
/* 01754 80001BB4 00000000 */  nop
/* 01758 80001BB8 00000000 */  nop
/* 0175C 80001BBC 00000000 */  nop
