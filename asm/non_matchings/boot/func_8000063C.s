glabel func_8000063C
/* 001DC 8000063C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 001E0 80000640 AFBF001C */  sw      $ra, 0x001C($sp)
/* 001E4 80000644 AFA40020 */  sw      $a0, 0x0020($sp)
/* 001E8 80000648 0C0016E8 */  jal     func_80005BA0
/* 001EC 8000064C 240400FE */  addiu   $a0, $zero, 0x00FE         ## $a0 = 000000FE
/* 001F0 80000650 3C028000 */  lui     $v0, 0x8000                ## $v0 = 80000000
/* 001F4 80000654 8C420300 */  lw      $v0, 0x0300($v0)           ## 80000300
/* 001F8 80000658 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001FC 8000065C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00200 80000660 10400007 */  beq     $v0, $zero, .L80000680
/* 00204 80000664 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00208 80000668 10410005 */  beq     $v0, $at, .L80000680
/* 0020C 8000066C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00210 80000670 10410018 */  beq     $v0, $at, .L800006D4
/* 00214 80000674 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 00218 80000678 1000002A */  beq     $zero, $zero, .L80000724
/* 0021C 8000067C 00000000 */  nop
.L80000680:
/* 00220 80000680 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 00224 80000684 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00228 80000688 271863C0 */  addiu   $t8, $t8, 0x63C0           ## $t8 = 800063C0
/* 0022C 8000068C 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 00230 80000690 A02E6230 */  sb      $t6, 0x6230($at)           ## 80006230
/* 00234 80000694 25EF7CD0 */  addiu   $t7, $t7, 0x7CD0           ## $t7 = 80007CD0
/* 00238 80000698 27090048 */  addiu   $t1, $t8, 0x0048           ## $t1 = 80006408
.L8000069C:
/* 0023C 8000069C 8F080000 */  lw      $t0, 0x0000($t8)           ## 800063C0
/* 00240 800006A0 2718000C */  addiu   $t8, $t8, 0x000C           ## $t8 = 800063CC
/* 00244 800006A4 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 80007CDC
/* 00248 800006A8 ADE8FFF4 */  sw      $t0, -0x000C($t7)          ## 80007CD0
/* 0024C 800006AC 8F19FFF8 */  lw      $t9, -0x0008($t8)          ## 800063C4
/* 00250 800006B0 ADF9FFF8 */  sw      $t9, -0x0008($t7)          ## 80007CD4
/* 00254 800006B4 8F08FFFC */  lw      $t0, -0x0004($t8)          ## 800063C8
/* 00258 800006B8 1709FFF8 */  bne     $t8, $t1, .L8000069C
/* 0025C 800006BC ADE8FFFC */  sw      $t0, -0x0004($t7)          ## 80007CD8
/* 00260 800006C0 8F080000 */  lw      $t0, 0x0000($t8)           ## 800063CC
/* 00264 800006C4 8F190004 */  lw      $t9, 0x0004($t8)           ## 800063D0
/* 00268 800006C8 ADE80000 */  sw      $t0, 0x0000($t7)           ## 80007CDC
/* 0026C 800006CC 10000015 */  beq     $zero, $zero, .L80000724
/* 00270 800006D0 ADF90004 */  sw      $t9, 0x0004($t7)           ## 80007CE0
.L800006D4:
/* 00274 800006D4 3C0C8000 */  lui     $t4, 0x8000                ## $t4 = 80000000
/* 00278 800006D8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0027C 800006DC 258C6410 */  addiu   $t4, $t4, 0x6410           ## $t4 = 80006410
/* 00280 800006E0 3C0B8000 */  lui     $t3, 0x8000                ## $t3 = 80000000
/* 00284 800006E4 A02A6230 */  sb      $t2, 0x6230($at)           ## 80006230
/* 00288 800006E8 256B7CD0 */  addiu   $t3, $t3, 0x7CD0           ## $t3 = 80007CD0
/* 0028C 800006EC 25890048 */  addiu   $t1, $t4, 0x0048           ## $t1 = 80006458
.L800006F0:
/* 00290 800006F0 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80006410
/* 00294 800006F4 258C000C */  addiu   $t4, $t4, 0x000C           ## $t4 = 8000641C
/* 00298 800006F8 256B000C */  addiu   $t3, $t3, 0x000C           ## $t3 = 80007CDC
/* 0029C 800006FC AD6EFFF4 */  sw      $t6, -0x000C($t3)          ## 80007CD0
/* 002A0 80000700 8D8DFFF8 */  lw      $t5, -0x0008($t4)          ## 80006414
/* 002A4 80000704 AD6DFFF8 */  sw      $t5, -0x0008($t3)          ## 80007CD4
/* 002A8 80000708 8D8EFFFC */  lw      $t6, -0x0004($t4)          ## 80006418
/* 002AC 8000070C 1589FFF8 */  bne     $t4, $t1, .L800006F0
/* 002B0 80000710 AD6EFFFC */  sw      $t6, -0x0004($t3)          ## 80007CD8
/* 002B4 80000714 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 8000641C
/* 002B8 80000718 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80006420
/* 002BC 8000071C AD6E0000 */  sw      $t6, 0x0000($t3)           ## 80007CDC
/* 002C0 80000720 AD6D0004 */  sw      $t5, 0x0004($t3)           ## 80007CE0
.L80000724:
/* 002C4 80000724 0C000F58 */  jal     func_80003D60
/* 002C8 80000728 24847CD0 */  addiu   $a0, $a0, 0x7CD0           ## $a0 = 80007CD0
/* 002CC 8000072C 0C000EF8 */  jal     func_80003BE0
/* 002D0 80000730 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 002D4 80000734 3C058000 */  lui     $a1, 0x8000                ## $a1 = 80000000
/* 002D8 80000738 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 002DC 8000073C 24C67BF0 */  addiu   $a2, $a2, 0x7BF0           ## $a2 = 80007BF0
/* 002E0 80000740 24A57CB8 */  addiu   $a1, $a1, 0x7CB8           ## $a1 = 80007CB8
/* 002E4 80000744 24040096 */  addiu   $a0, $zero, 0x0096         ## $a0 = 00000096
/* 002E8 80000748 0C000D40 */  jal     func_80003500
/* 002EC 8000074C 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 002F0 80000750 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 002F4 80000754 25EF6560 */  addiu   $t7, $t7, 0x6560           ## $t7 = 80006560
/* 002F8 80000758 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 002FC 8000075C 3C058000 */  lui     $a1, 0x8000                ## $a1 = 80000000
/* 00300 80000760 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 00304 80000764 24180400 */  addiu   $t8, $zero, 0x0400         ## $t8 = 00000400
/* 00308 80000768 AFB80010 */  sw      $t8, 0x0010($sp)
/* 0030C 8000076C 24C67BD0 */  addiu   $a2, $a2, 0x7BD0           ## $a2 = 80007BD0
/* 00310 80000770 24A573D0 */  addiu   $a1, $a1, 0x73D0           ## $a1 = 800073D0
/* 00314 80000774 24847BD0 */  addiu   $a0, $a0, 0x7BD0           ## $a0 = 80007BD0
/* 00318 80000778 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0031C 8000077C 0C000624 */  jal     func_80001890
/* 00320 80000780 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00324 80000784 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 00328 80000788 27397BD0 */  addiu   $t9, $t9, 0x7BD0           ## $t9 = 80007BD0
/* 0032C 8000078C 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00330 80000790 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 00334 80000794 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00338 80000798 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0033C 8000079C 24C605A0 */  addiu   $a2, $a2, 0x05A0           ## $a2 = 800005A0
/* 00340 800007A0 24847220 */  addiu   $a0, $a0, 0x7220           ## $a0 = 80007220
/* 00344 800007A4 AFB90010 */  sw      $t9, 0x0010($sp)
/* 00348 800007A8 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 0034C 800007AC 0C000BC8 */  jal     func_80002F20              ## osCreateThread
/* 00350 800007B0 8FA70020 */  lw      $a3, 0x0020($sp)
/* 00354 800007B4 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00358 800007B8 0C0017B0 */  jal     func_80005EC0              ## osStartThread
/* 0035C 800007BC 24847220 */  addiu   $a0, $a0, 0x7220           ## $a0 = 80007220
/* 00360 800007C0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00364 800007C4 0C001120 */  jal     func_80004480              ## osSetThreadPri
/* 00368 800007C8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L800007CC:
/* 0036C 800007CC 1000FFFF */  beq     $zero, $zero, .L800007CC
/* 00370 800007D0 00000000 */  nop
/* 00374 800007D4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00378 800007D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0037C 800007DC 03E00008 */  jr      $ra
/* 00380 800007E0 00000000 */  nop
/* 00384 800007E4 00000000 */  nop
/* 00388 800007E8 00000000 */  nop
/* 0038C 800007EC 00000000 */  nop


