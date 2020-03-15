.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osRecvMesg
/* 01BD0 80002030 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01BD4 80002034 AFBF001C */  sw      $ra, 0x001C($sp)
/* 01BD8 80002038 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01BDC 8000203C AFA5002C */  sw      $a1, 0x002C($sp)
/* 01BE0 80002040 AFA60030 */  sw      $a2, 0x0030($sp)
/* 01BE4 80002044 AFB10018 */  sw      $s1, 0x0018($sp)
/* 01BE8 80002048 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 01BEC 8000204C AFB00014 */  sw      $s0, 0x0014($sp)
/* 01BF0 80002050 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 01BF4 80002054 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01BF8 80002058 8DCF0008 */  lw      $t7, 0x0008($t6)           ## 00000008
/* 01BFC 8000205C 15E00012 */  bne     $t7, $zero, .L800020A8
/* 01C00 80002060 00000000 */  nop
.L80002064:
/* 01C04 80002064 8FB80030 */  lw      $t8, 0x0030($sp)
/* 01C08 80002068 17000005 */  bne     $t8, $zero, .L80002080
/* 01C0C 8000206C 00000000 */  nop
/* 01C10 80002070 0C001468 */  jal     __osRestoreInt
/* 01C14 80002074 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C18 80002078 10000036 */  beq     $zero, $zero, .L80002154
/* 01C1C 8000207C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80002080:
/* 01C20 80002080 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 01C24 80002084 8D086340 */  lw      $t0, 0x6340($t0)           ## 80006340
/* 01C28 80002088 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 01C2C 8000208C A5190010 */  sh      $t9, 0x0010($t0)           ## 80000010
/* 01C30 80002090 0C000A93 */  jal     __osEnqueueAndYield
/* 01C34 80002094 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01C38 80002098 8FA90028 */  lw      $t1, 0x0028($sp)
/* 01C3C 8000209C 8D2A0008 */  lw      $t2, 0x0008($t1)           ## 00000008
/* 01C40 800020A0 1140FFF0 */  beq     $t2, $zero, .L80002064
/* 01C44 800020A4 00000000 */  nop
.L800020A8:
/* 01C48 800020A8 8FAB002C */  lw      $t3, 0x002C($sp)
/* 01C4C 800020AC 11600008 */  beq     $t3, $zero, .L800020D0
/* 01C50 800020B0 00000000 */  nop
/* 01C54 800020B4 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 01C58 800020B8 8D8E000C */  lw      $t6, 0x000C($t4)           ## 0000000C
/* 01C5C 800020BC 8D8D0014 */  lw      $t5, 0x0014($t4)           ## 00000014
/* 01C60 800020C0 000E7880 */  sll     $t7, $t6,  2
/* 01C64 800020C4 01AFC021 */  addu    $t8, $t5, $t7
/* 01C68 800020C8 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 01C6C 800020CC AD790000 */  sw      $t9, 0x0000($t3)           ## 00000000
.L800020D0:
/* 01C70 800020D0 8FA80028 */  lw      $t0, 0x0028($sp)
/* 01C74 800020D4 8D09000C */  lw      $t1, 0x000C($t0)           ## 0000000C
/* 01C78 800020D8 8D0C0010 */  lw      $t4, 0x0010($t0)           ## 00000010
/* 01C7C 800020DC 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01C80 800020E0 014C001A */  div     $zero, $t2, $t4
/* 01C84 800020E4 00007010 */  mfhi    $t6
/* 01C88 800020E8 AD0E000C */  sw      $t6, 0x000C($t0)           ## 0000000C
/* 01C8C 800020EC 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 01C90 800020F0 15800002 */  bne     $t4, $zero, .L800020FC
/* 01C94 800020F4 00000000 */  nop
/* 01C98 800020F8 0007000D */  break 7
.L800020FC:
/* 01C9C 800020FC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 01CA0 80002100 15810004 */  bne     $t4, $at, .L80002114
/* 01CA4 80002104 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01CA8 80002108 15410002 */  bne     $t2, $at, .L80002114
/* 01CAC 8000210C 00000000 */  nop
/* 01CB0 80002110 0006000D */  break 6
.L80002114:
/* 01CB4 80002114 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 00000008
/* 01CB8 80002118 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 01CBC 8000211C ADB80008 */  sw      $t8, 0x0008($t5)           ## 00000008
/* 01CC0 80002120 8FB90028 */  lw      $t9, 0x0028($sp)
/* 01CC4 80002124 8F2B0004 */  lw      $t3, 0x0004($t9)           ## 00000004
/* 01CC8 80002128 8D690000 */  lw      $t1, 0x0000($t3)           ## 00000000
/* 01CCC 8000212C 11200006 */  beq     $t1, $zero, .L80002148
/* 01CD0 80002130 00000000 */  nop
/* 01CD4 80002134 0C000AE5 */  jal     __osPopThread
/* 01CD8 80002138 27240004 */  addiu   $a0, $t9, 0x0004           ## $a0 = 00000004
/* 01CDC 8000213C 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 01CE0 80002140 0C0017B0 */  jal     osStartThread              ## osStartThread
/* 01CE4 80002144 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80002148:
/* 01CE8 80002148 0C001468 */  jal     __osRestoreInt
/* 01CEC 8000214C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF0 80002150 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80002154:
/* 01CF4 80002154 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01CF8 80002158 8FB00014 */  lw      $s0, 0x0014($sp)
/* 01CFC 8000215C 8FB10018 */  lw      $s1, 0x0018($sp)
/* 01D00 80002160 03E00008 */  jr      $ra
/* 01D04 80002164 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01D08 80002168 00000000 */  nop
/* 01D0C 8000216C 00000000 */  nop
