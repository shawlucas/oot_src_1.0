glabel osCreateViManager
/* 05740 80005BA0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 05744 80005BA4 AFB00020 */  sw      $s0, 0x0020($sp)
/* 05748 80005BA8 3C108000 */  lui     $s0, 0x8000                ## $s0 = 80000000
/* 0574C 80005BAC 26106530 */  addiu   $s0, $s0, 0x6530           ## $s0 = 80006530
/* 05750 80005BB0 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 80006530
/* 05754 80005BB4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 05758 80005BB8 AFA40030 */  sw      $a0, 0x0030($sp)
/* 0575C 80005BBC 55C00054 */  bnel    $t6, $zero, .L80005D10
/* 05760 80005BC0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 05764 80005BC4 0C001254 */  jal     __osTimerServicesInit
/* 05768 80005BC8 00000000 */  nop
/* 0576C 80005BCC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05770 80005BD0 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 05774 80005BD4 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 05778 80005BD8 AC20654C */  sw      $zero, 0x654C($at)         ## 8000654C
/* 0577C 80005BDC 24A5B0E8 */  addiu   $a1, $a1, 0xB0E8           ## $a1 = 8000B0E8
/* 05780 80005BE0 2484B0D0 */  addiu   $a0, $a0, 0xB0D0           ## $a0 = 8000B0D0
/* 05784 80005BE4 0C001088 */  jal     osCreateMesgQueue              ## osCreateMesgQueue
/* 05788 80005BE8 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0578C 80005BEC 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 05790 80005BF0 3C078001 */  lui     $a3, 0x8001                ## $a3 = 80010000
/* 05794 80005BF4 24E7B118 */  addiu   $a3, $a3, 0xB118           ## $a3 = 8000B118
/* 05798 80005BF8 24C6B100 */  addiu   $a2, $a2, 0xB100           ## $a2 = 8000B100
/* 0579C 80005BFC 240F000D */  addiu   $t7, $zero, 0x000D         ## $t7 = 0000000D
/* 057A0 80005C00 2418000E */  addiu   $t8, $zero, 0x000E         ## $t8 = 0000000E
/* 057A4 80005C04 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 057A8 80005C08 A4CF0000 */  sh      $t7, 0x0000($a2)           ## 8000B100
/* 057AC 80005C0C A0C00002 */  sb      $zero, 0x0002($a2)         ## 8000B102
/* 057B0 80005C10 ACC00004 */  sw      $zero, 0x0004($a2)         ## 8000B104
/* 057B4 80005C14 A4F80000 */  sh      $t8, 0x0000($a3)           ## 8000B118
/* 057B8 80005C18 A0E00002 */  sb      $zero, 0x0002($a3)         ## 8000B11A
/* 057BC 80005C1C ACE00004 */  sw      $zero, 0x0004($a3)         ## 8000B11C
/* 057C0 80005C20 24A5B0D0 */  addiu   $a1, $a1, 0xB0D0           ## $a1 = 8000B0D0
/* 057C4 80005C24 0C000FEC */  jal     osSetEventMesg
/* 057C8 80005C28 24040007 */  addiu   $a0, $zero, 0x0007         ## $a0 = 00000007
/* 057CC 80005C2C 3C078001 */  lui     $a3, 0x8001                ## $a3 = 80010000
/* 057D0 80005C30 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 057D4 80005C34 24E6B118 */  addiu   $a2, $a3, 0xB118           ## $a2 = 8000B118
/* 057D8 80005C38 24A5B0D0 */  addiu   $a1, $a1, 0xB0D0           ## $a1 = 8000B0D0
/* 057DC 80005C3C 0C000FEC */  jal     osSetEventMesg
/* 057E0 80005C40 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 057E4 80005C44 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 057E8 80005C48 AFB90028 */  sw      $t9, 0x0028($sp)
/* 057EC 80005C4C 0C001158 */  jal     osGetThreadPri
/* 057F0 80005C50 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 057F4 80005C54 8FA80030 */  lw      $t0, 0x0030($sp)
/* 057F8 80005C58 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 057FC 80005C5C 0048082A */  slt     $at, $v0, $t0
/* 05800 80005C60 10200003 */  beq     $at, $zero, .L80005C70
/* 05804 80005C64 01002825 */  or      $a1, $t0, $zero            ## $a1 = 00000000
/* 05808 80005C68 0C001120 */  jal     osSetThreadPri              ## osSetThreadPri
/* 0580C 80005C6C AFA20028 */  sw      $v0, 0x0028($sp)
.L80005C70:
/* 05810 80005C70 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 05814 80005C74 00000000 */  nop
/* 05818 80005C78 8FAB0030 */  lw      $t3, 0x0030($sp)
/* 0581C 80005C7C 3C038001 */  lui     $v1, 0x8001                ## $v1 = 80010000
/* 05820 80005C80 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 05824 80005C84 3C0A8001 */  lui     $t2, 0x8001                ## $t2 = 80010000
/* 05828 80005C88 24849F20 */  addiu   $a0, $a0, 0x9F20           ## $a0 = 80009F20
/* 0582C 80005C8C 2463B0D0 */  addiu   $v1, $v1, 0xB0D0           ## $v1 = 8000B0D0
/* 05830 80005C90 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 05834 80005C94 254AB0D0 */  addiu   $t2, $t2, 0xB0D0           ## $t2 = 8000B0D0
/* 05838 80005C98 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 0583C 80005C9C AFA2002C */  sw      $v0, 0x002C($sp)
/* 05840 80005CA0 AE090000 */  sw      $t1, 0x0000($s0)           ## 80006530
/* 05844 80005CA4 AE040004 */  sw      $a0, 0x0004($s0)           ## 80006534
/* 05848 80005CA8 AE030008 */  sw      $v1, 0x0008($s0)           ## 80006538
/* 0584C 80005CAC AE03000C */  sw      $v1, 0x000C($s0)           ## 8000653C
/* 05850 80005CB0 AE000010 */  sw      $zero, 0x0010($s0)         ## 80006540
/* 05854 80005CB4 AE000014 */  sw      $zero, 0x0014($s0)         ## 80006544
/* 05858 80005CB8 AE000018 */  sw      $zero, 0x0018($s0)         ## 80006548
/* 0585C 80005CBC 24C65D20 */  addiu   $a2, $a2, 0x5D20           ## $a2 = 80005D20
/* 05860 80005CC0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 05864 80005CC4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 05868 80005CC8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 80006530
/* 0586C 80005CCC 0C000BC8 */  jal     osCreateThread              ## osCreateThread
/* 05870 80005CD0 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 05874 80005CD4 0C001470 */  jal     __osViInit
/* 05878 80005CD8 00000000 */  nop
/* 0587C 80005CDC 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 05880 80005CE0 0C0017B0 */  jal     osStartThread              ## osStartThread
/* 05884 80005CE4 24849F20 */  addiu   $a0, $a0, 0x9F20           ## $a0 = 80009F20
/* 05888 80005CE8 0C001468 */  jal     __osRestoreInt
/* 0588C 80005CEC 8FA4002C */  lw      $a0, 0x002C($sp)
/* 05890 80005CF0 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 05894 80005CF4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 05898 80005CF8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0589C 80005CFC 51810004 */  beql    $t4, $at, .L80005D10
/* 058A0 80005D00 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 058A4 80005D04 0C001120 */  jal     osSetThreadPri              ## osSetThreadPri
/* 058A8 80005D08 01802825 */  or      $a1, $t4, $zero            ## $a1 = 00000000
/* 058AC 80005D0C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80005D10:
/* 058B0 80005D10 8FB00020 */  lw      $s0, 0x0020($sp)
/* 058B4 80005D14 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 058B8 80005D18 03E00008 */  jr      $ra
/* 058BC 80005D1C 00000000 */  nop

