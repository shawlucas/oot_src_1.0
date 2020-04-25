.rdata

glabel D_800066A0
    .asciz "%s %d: range error %s(%f) < %s(%f) < %s(%f)\n"
    .balign 4

.text
glabel LogUtils_CheckFloatRange
/* 01640 80001AA0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01644 80001AA4 C7AE0054 */  lwc1    $f14, 0x0054($sp)
/* 01648 80001AA8 44876000 */  mtc1    $a3, $f12                  ## $f12 = 0.00
/* 0164C 80001AAC AFA40040 */  sw      $a0, 0x0040($sp)
/* 01650 80001AB0 AFBF003C */  sw      $ra, 0x003C($sp)
/* 01654 80001AB4 460E603C */  c.lt.s  $f12, $f14
/* 01658 80001AB8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0165C 80001ABC AFA60048 */  sw      $a2, 0x0048($sp)
/* 01660 80001AC0 C7A4005C */  lwc1    $f4, 0x005C($sp)
/* 01664 80001AC4 45010005 */  bc1t    .L80001ADC
/* 01668 80001AC8 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 0166C 80001ACC 460C203C */  c.lt.s  $f4, $f12
/* 01670 80001AD0 00000000 */  nop
/* 01674 80001AD4 45020014 */  bc1fl   .L80001B28
/* 01678 80001AD8 8FBF003C */  lw      $ra, 0x003C($sp)
.L80001ADC:
/* 0167C 80001ADC C7AA005C */  lwc1    $f10, 0x005C($sp)
/* 01680 80001AE0 8FAE0048 */  lw      $t6, 0x0048($sp)
/* 01684 80001AE4 8FAF0058 */  lw      $t7, 0x0058($sp)
/* 01688 80001AE8 460071A1 */  cvt.d.s $f6, $f14
/* 0168C 80001AEC 46006221 */  cvt.d.s $f8, $f12
/* 01690 80001AF0 46005421 */  cvt.d.s $f16, $f10
/* 01694 80001AF4 F7A80020 */  sdc1    $f8, 0x0020($sp)
/* 01698 80001AF8 F7B00030 */  sdc1    $f16, 0x0030($sp)
/* 0169C 80001AFC F7A60010 */  sdc1    $f6, 0x0010($sp)
/* 016A0 80001B00 248466A0 */  addiu   $a0, $a0, 0x66A0           ## $a0 = 800066A0
/* 016A4 80001B04 8FA50040 */  lw      $a1, 0x0040($sp)
/* 016A8 80001B08 8FA60044 */  lw      $a2, 0x0044($sp)
/* 016AC 80001B0C 8FA70050 */  lw      $a3, 0x0050($sp)
/* 016B0 80001B10 E7AC004C */  swc1    $f12, 0x004C($sp)
/* 016B4 80001B14 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 016B8 80001B18 0C00056F */  jal     func_800015BC
/* 016BC 80001B1C AFAF0028 */  sw      $t7, 0x0028($sp)
/* 016C0 80001B20 C7AC004C */  lwc1    $f12, 0x004C($sp)
/* 016C4 80001B24 8FBF003C */  lw      $ra, 0x003C($sp)
.L80001B28:
/* 016C8 80001B28 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 016CC 80001B2C 46006006 */  mov.s   $f0, $f12
/* 016D0 80001B30 03E00008 */  jr      $ra
/* 016D4 80001B34 00000000 */  nop

