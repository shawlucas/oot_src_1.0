.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osPiRawStartDma
/* 03630 80003A90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03634 80003A94 3C03A460 */  lui     $v1, 0xA460                ## $v1 = A4600000
/* 03638 80003A98 34630010 */  ori     $v1, $v1, 0x0010           ## $v1 = A4600010
/* 0363C 80003A9C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 03640 80003AA0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 03644 80003AA4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 03648 80003AA8 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
/* 0364C 80003AAC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03650 80003AB0 304E0003 */  andi    $t6, $v0, 0x0003           ## $t6 = 00000000
/* 03654 80003AB4 11C00005 */  beq     $t6, $zero, .L80003ACC
/* 03658 80003AB8 00000000 */  nop
/* 0365C 80003ABC 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
.L80003AC0:
/* 03660 80003AC0 304F0003 */  andi    $t7, $v0, 0x0003           ## $t7 = 00000000
/* 03664 80003AC4 55E0FFFE */  bnel    $t7, $zero, .L80003AC0
/* 03668 80003AC8 8C620000 */  lw      $v0, 0x0000($v1)           ## A4600010
.L80003ACC:
/* 0366C 80003ACC 0C000ED8 */  jal     osVirtualToPhysical              ## osVirtualToPhysical
/* 03670 80003AD0 AFA70024 */  sw      $a3, 0x0024($sp)
/* 03674 80003AD4 8FA30018 */  lw      $v1, 0x0018($sp)
/* 03678 80003AD8 8FA70024 */  lw      $a3, 0x0024($sp)
/* 0367C 80003ADC 3C18A460 */  lui     $t8, 0xA460                ## $t8 = A4600000
/* 03680 80003AE0 AF020000 */  sw      $v0, 0x0000($t8)           ## A4600000
/* 03684 80003AE4 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 03688 80003AE8 8F390308 */  lw      $t9, 0x0308($t9)           ## 80000308
/* 0368C 80003AEC 8FA8001C */  lw      $t0, 0x001C($sp)
/* 03690 80003AF0 3C011FFF */  lui     $at, 0x1FFF                ## $at = 1FFF0000
/* 03694 80003AF4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 1FFFFFFF
/* 03698 80003AF8 03284825 */  or      $t1, $t9, $t0              ## $t1 = 80000000
/* 0369C 80003AFC 01215024 */  and     $t2, $t1, $at
/* 036A0 80003B00 3C0BA460 */  lui     $t3, 0xA460                ## $t3 = A4600000
/* 036A4 80003B04 10600006 */  beq     $v1, $zero, .L80003B20
/* 036A8 80003B08 AD6A0004 */  sw      $t2, 0x0004($t3)           ## A4600004
/* 036AC 80003B0C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 036B0 80003B10 10610007 */  beq     $v1, $at, .L80003B30
/* 036B4 80003B14 24EEFFFF */  addiu   $t6, $a3, 0xFFFF           ## $t6 = FFFFFFFF
/* 036B8 80003B18 1000000B */  beq     $zero, $zero, .L80003B48
/* 036BC 80003B1C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80003B20:
/* 036C0 80003B20 24ECFFFF */  addiu   $t4, $a3, 0xFFFF           ## $t4 = FFFFFFFF
/* 036C4 80003B24 3C0DA460 */  lui     $t5, 0xA460                ## $t5 = A4600000
/* 036C8 80003B28 10000006 */  beq     $zero, $zero, .L80003B44
/* 036CC 80003B2C ADAC000C */  sw      $t4, 0x000C($t5)           ## A460000C
.L80003B30:
/* 036D0 80003B30 3C0FA460 */  lui     $t7, 0xA460                ## $t7 = A4600000
/* 036D4 80003B34 10000003 */  beq     $zero, $zero, .L80003B44
/* 036D8 80003B38 ADEE0008 */  sw      $t6, 0x0008($t7)           ## A4600008
/* 036DC 80003B3C 10000002 */  beq     $zero, $zero, .L80003B48
/* 036E0 80003B40 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80003B44:
/* 036E4 80003B44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80003B48:
/* 036E8 80003B48 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 036EC 80003B4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 036F0 80003B50 03E00008 */  jr      $ra
/* 036F4 80003B54 00000000 */  nop
/* 036F8 80003B58 00000000 */  nop
/* 036FC 80003B5C 00000000 */  nop
