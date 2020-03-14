glabel func_80000A54
/* 005F4 80000A54 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 005F8 80000A58 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 005FC 80000A5C AFA40058 */  sw      $a0, 0x0058($sp)
/* 00600 80000A60 AFA5005C */  sw      $a1, 0x005C($sp)
/* 00604 80000A64 AFA60060 */  sw      $a2, 0x0060($sp)
/* 00608 80000A68 0C000580 */  jal     func_80001600
/* 0060C 80000A6C 00000000 */  nop
/* 00610 80000A70 AFA20050 */  sw      $v0, 0x0050($sp)
/* 00614 80000A74 8FA40058 */  lw      $a0, 0x0058($sp)
/* 00618 80000A78 0C001068 */  jal     func_800041A0              ## osInvalICache
/* 0061C 80000A7C 8FA50060 */  lw      $a1, 0x0060($sp)
/* 00620 80000A80 8FA40058 */  lw      $a0, 0x0058($sp)
/* 00624 80000A84 0C001094 */  jal     func_80004250              ## osInvalDCache
/* 00628 80000A88 8FA50060 */  lw      $a1, 0x0060($sp)
/* 0062C 80000A8C 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE0
/* 00630 80000A90 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFDC
/* 00634 80000A94 0C001088 */  jal     func_80004220              ## osCreateMesgQueue
/* 00638 80000A98 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0063C 80000A9C 8FAF005C */  lw      $t7, 0x005C($sp)
/* 00640 80000AA0 8FB80058 */  lw      $t8, 0x0058($sp)
/* 00644 80000AA4 8FB90060 */  lw      $t9, 0x0060($sp)
/* 00648 80000AA8 8FA40050 */  lw      $a0, 0x0050($sp)
/* 0064C 80000AAC 27AE0038 */  addiu   $t6, $sp, 0x0038           ## $t6 = FFFFFFE0
/* 00650 80000AB0 AFAE0020 */  sw      $t6, 0x0020($sp)
/* 00654 80000AB4 A3A0001E */  sb      $zero, 0x001E($sp)
/* 00658 80000AB8 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 0065C 80000ABC AFAF0028 */  sw      $t7, 0x0028($sp)
/* 00660 80000AC0 AFB80024 */  sw      $t8, 0x0024($sp)
/* 00664 80000AC4 AFB9002C */  sw      $t9, 0x002C($sp)
/* 00668 80000AC8 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFC4
/* 0066C 80000ACC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00670 80000AD0 0C001030 */  jal     func_800040C0
/* 00674 80000AD4 AC880014 */  sw      $t0, 0x0014($a0)           ## 00000014
/* 00678 80000AD8 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE0
/* 0067C 80000ADC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00680 80000AE0 0C00080C */  jal     func_80002030              ## osRecvMesg
/* 00684 80000AE4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00688 80000AE8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0068C 80000AEC 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00690 80000AF0 03E00008 */  jr      $ra
/* 00694 80000AF4 00000000 */  nop


