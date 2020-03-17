# "Dynamically Linked File" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles loading and freeing dynamic overlay states.
#
# Starts at VRAM: 8001E9D0 / VROM: A94930
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel Overlay_LoadGameState
/* 0D930 8001E9D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0D934 8001E9D4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 0D938 8001E9D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0D93C 8001E9DC AFBF001C */  sw      $ra, 0x001C($sp)
/* 0D940 8001E9E0 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 00000000
/* 0D944 8001E9E4 55C00040 */  bnel    $t6, $zero, .L8001EAE8
/* 0D948 8001E9E8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0D94C 8001E9EC 8E06000C */  lw      $a2, 0x000C($s0)           ## 0000000C
/* 0D950 8001E9F0 54C00004 */  bnel    $a2, $zero, .L8001EA04
/* 0D954 8001E9F4 8E040004 */  lw      $a0, 0x0004($s0)           ## 00000004
/* 0D958 8001E9F8 1000003A */  beq     $zero, $zero, .L8001EAE4
/* 0D95C 8001E9FC AE000028 */  sw      $zero, 0x0028($s0)         ## 00000028
/* 0D960 8001EA00 8E040004 */  lw      $a0, 0x0004($s0)           ## 00000004
.L8001EA04:
/* 0D964 8001EA04 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 0D968 8001EA08 0C03334E */  jal     Overlay_AllocateAndLoad
/* 0D96C 8001EA0C 8E070010 */  lw      $a3, 0x0010($s0)           ## 00000010
/* 0D970 8001EA10 10400034 */  beq     $v0, $zero, .L8001EAE4
/* 0D974 8001EA14 AE020000 */  sw      $v0, 0x0000($s0)           ## 00000000
/* 0D978 8001EA18 8E020014 */  lw      $v0, 0x0014($s0)           ## 00000014
/* 0D97C 8001EA1C 50400008 */  beql    $v0, $zero, .L8001EA40
/* 0D980 8001EA20 AE000014 */  sw      $zero, 0x0014($s0)         ## 00000014
/* 0D984 8001EA24 8E0F000C */  lw      $t7, 0x000C($s0)           ## 0000000C
/* 0D988 8001EA28 8E180000 */  lw      $t8, 0x0000($s0)           ## 00000000
/* 0D98C 8001EA2C 01F8C823 */  subu    $t9, $t7, $t8
/* 0D990 8001EA30 00594023 */  subu    $t0, $v0, $t9
/* 0D994 8001EA34 10000002 */  beq     $zero, $zero, .L8001EA40
/* 0D998 8001EA38 AE080014 */  sw      $t0, 0x0014($s0)           ## 00000014
/* 0D99C 8001EA3C AE000014 */  sw      $zero, 0x0014($s0)         ## 00000014
.L8001EA40:
/* 0D9A0 8001EA40 8E020018 */  lw      $v0, 0x0018($s0)           ## 00000018
/* 0D9A4 8001EA44 50400008 */  beql    $v0, $zero, .L8001EA68
/* 0D9A8 8001EA48 AE000018 */  sw      $zero, 0x0018($s0)         ## 00000018
/* 0D9AC 8001EA4C 8E09000C */  lw      $t1, 0x000C($s0)           ## 0000000C
/* 0D9B0 8001EA50 8E0A0000 */  lw      $t2, 0x0000($s0)           ## 00000000
/* 0D9B4 8001EA54 012A5823 */  subu    $t3, $t1, $t2
/* 0D9B8 8001EA58 004B6023 */  subu    $t4, $v0, $t3
/* 0D9BC 8001EA5C 10000002 */  beq     $zero, $zero, .L8001EA68
/* 0D9C0 8001EA60 AE0C0018 */  sw      $t4, 0x0018($s0)           ## 00000018
/* 0D9C4 8001EA64 AE000018 */  sw      $zero, 0x0018($s0)         ## 00000018
.L8001EA68:
/* 0D9C8 8001EA68 8E02001C */  lw      $v0, 0x001C($s0)           ## 0000001C
/* 0D9CC 8001EA6C 50400008 */  beql    $v0, $zero, .L8001EA90
/* 0D9D0 8001EA70 AE00001C */  sw      $zero, 0x001C($s0)         ## 0000001C
/* 0D9D4 8001EA74 8E0D000C */  lw      $t5, 0x000C($s0)           ## 0000000C
/* 0D9D8 8001EA78 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 00000000
/* 0D9DC 8001EA7C 01AE7823 */  subu    $t7, $t5, $t6
/* 0D9E0 8001EA80 004FC023 */  subu    $t8, $v0, $t7
/* 0D9E4 8001EA84 10000002 */  beq     $zero, $zero, .L8001EA90
/* 0D9E8 8001EA88 AE18001C */  sw      $t8, 0x001C($s0)           ## 0000001C
/* 0D9EC 8001EA8C AE00001C */  sw      $zero, 0x001C($s0)         ## 0000001C
.L8001EA90:
/* 0D9F0 8001EA90 8E020020 */  lw      $v0, 0x0020($s0)           ## 00000020
/* 0D9F4 8001EA94 50400008 */  beql    $v0, $zero, .L8001EAB8
/* 0D9F8 8001EA98 AE000020 */  sw      $zero, 0x0020($s0)         ## 00000020
/* 0D9FC 8001EA9C 8E19000C */  lw      $t9, 0x000C($s0)           ## 0000000C
/* 0DA00 8001EAA0 8E080000 */  lw      $t0, 0x0000($s0)           ## 00000000
/* 0DA04 8001EAA4 03284823 */  subu    $t1, $t9, $t0
/* 0DA08 8001EAA8 00495023 */  subu    $t2, $v0, $t1
/* 0DA0C 8001EAAC 10000002 */  beq     $zero, $zero, .L8001EAB8
/* 0DA10 8001EAB0 AE0A0020 */  sw      $t2, 0x0020($s0)           ## 00000020
/* 0DA14 8001EAB4 AE000020 */  sw      $zero, 0x0020($s0)         ## 00000020
.L8001EAB8:
/* 0DA18 8001EAB8 8E020024 */  lw      $v0, 0x0024($s0)           ## 00000024
/* 0DA1C 8001EABC 50400008 */  beql    $v0, $zero, .L8001EAE0
/* 0DA20 8001EAC0 AE000024 */  sw      $zero, 0x0024($s0)         ## 00000024
/* 0DA24 8001EAC4 8E0B000C */  lw      $t3, 0x000C($s0)           ## 0000000C
/* 0DA28 8001EAC8 8E0C0000 */  lw      $t4, 0x0000($s0)           ## 00000000
/* 0DA2C 8001EACC 016C6823 */  subu    $t5, $t3, $t4
/* 0DA30 8001EAD0 004D7023 */  subu    $t6, $v0, $t5
/* 0DA34 8001EAD4 10000002 */  beq     $zero, $zero, .L8001EAE0
/* 0DA38 8001EAD8 AE0E0024 */  sw      $t6, 0x0024($s0)           ## 00000024
/* 0DA3C 8001EADC AE000024 */  sw      $zero, 0x0024($s0)         ## 00000024
.L8001EAE0:
/* 0DA40 8001EAE0 AE000028 */  sw      $zero, 0x0028($s0)         ## 00000028
.L8001EAE4:
/* 0DA44 8001EAE4 8FBF001C */  lw      $ra, 0x001C($sp)
.L8001EAE8:
/* 0DA48 8001EAE8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0DA4C 8001EAEC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0DA50 8001EAF0 03E00008 */  jr      $ra
/* 0DA54 8001EAF4 00000000 */  nop


glabel Overlay_FreeGameState
/* 0DA58 8001EAF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0DA5C 8001EAFC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0DA60 8001EB00 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0DA64 8001EB04 8CA60000 */  lw      $a2, 0x0000($a1)           ## 00000000
/* 0DA68 8001EB08 50C00041 */  beql    $a2, $zero, .L8001EC10
/* 0DA6C 8001EB0C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0DA70 8001EB10 8CAE0028 */  lw      $t6, 0x0028($a1)           ## 00000028
/* 0DA74 8001EB14 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0DA78 8001EB18 11C00003 */  beq     $t6, $zero, .L8001EB28
/* 0DA7C 8001EB1C 00000000 */  nop
/* 0DA80 8001EB20 10000001 */  beq     $zero, $zero, .L8001EB28
/* 0DA84 8001EB24 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L8001EB28:
/* 0DA88 8001EB28 54400039 */  bnel    $v0, $zero, .L8001EC10
/* 0DA8C 8001EB2C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0DA90 8001EB30 8CA20014 */  lw      $v0, 0x0014($a1)           ## 00000014
/* 0DA94 8001EB34 50400007 */  beql    $v0, $zero, .L8001EB54
/* 0DA98 8001EB38 ACA00014 */  sw      $zero, 0x0014($a1)         ## 00000014
/* 0DA9C 8001EB3C 8CAF000C */  lw      $t7, 0x000C($a1)           ## 0000000C
/* 0DAA0 8001EB40 01E6C023 */  subu    $t8, $t7, $a2
/* 0DAA4 8001EB44 0058C821 */  addu    $t9, $v0, $t8
/* 0DAA8 8001EB48 10000002 */  beq     $zero, $zero, .L8001EB54
/* 0DAAC 8001EB4C ACB90014 */  sw      $t9, 0x0014($a1)           ## 00000014
/* 0DAB0 8001EB50 ACA00014 */  sw      $zero, 0x0014($a1)         ## 00000014
.L8001EB54:
/* 0DAB4 8001EB54 8CA20018 */  lw      $v0, 0x0018($a1)           ## 00000018
/* 0DAB8 8001EB58 50400008 */  beql    $v0, $zero, .L8001EB7C
/* 0DABC 8001EB5C ACA00018 */  sw      $zero, 0x0018($a1)         ## 00000018
/* 0DAC0 8001EB60 8CA8000C */  lw      $t0, 0x000C($a1)           ## 0000000C
/* 0DAC4 8001EB64 8CA90000 */  lw      $t1, 0x0000($a1)           ## 00000000
/* 0DAC8 8001EB68 01095023 */  subu    $t2, $t0, $t1
/* 0DACC 8001EB6C 004A5821 */  addu    $t3, $v0, $t2
/* 0DAD0 8001EB70 10000002 */  beq     $zero, $zero, .L8001EB7C
/* 0DAD4 8001EB74 ACAB0018 */  sw      $t3, 0x0018($a1)           ## 00000018
/* 0DAD8 8001EB78 ACA00018 */  sw      $zero, 0x0018($a1)         ## 00000018
.L8001EB7C:
/* 0DADC 8001EB7C 8CA2001C */  lw      $v0, 0x001C($a1)           ## 0000001C
/* 0DAE0 8001EB80 50400008 */  beql    $v0, $zero, .L8001EBA4
/* 0DAE4 8001EB84 ACA0001C */  sw      $zero, 0x001C($a1)         ## 0000001C
/* 0DAE8 8001EB88 8CAC000C */  lw      $t4, 0x000C($a1)           ## 0000000C
/* 0DAEC 8001EB8C 8CAD0000 */  lw      $t5, 0x0000($a1)           ## 00000000
/* 0DAF0 8001EB90 018D7023 */  subu    $t6, $t4, $t5
/* 0DAF4 8001EB94 004E7821 */  addu    $t7, $v0, $t6
/* 0DAF8 8001EB98 10000002 */  beq     $zero, $zero, .L8001EBA4
/* 0DAFC 8001EB9C ACAF001C */  sw      $t7, 0x001C($a1)           ## 0000001C
/* 0DB00 8001EBA0 ACA0001C */  sw      $zero, 0x001C($a1)         ## 0000001C
.L8001EBA4:
/* 0DB04 8001EBA4 8CA20020 */  lw      $v0, 0x0020($a1)           ## 00000020
/* 0DB08 8001EBA8 50400008 */  beql    $v0, $zero, .L8001EBCC
/* 0DB0C 8001EBAC ACA00020 */  sw      $zero, 0x0020($a1)         ## 00000020
/* 0DB10 8001EBB0 8CB8000C */  lw      $t8, 0x000C($a1)           ## 0000000C
/* 0DB14 8001EBB4 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 0DB18 8001EBB8 03194023 */  subu    $t0, $t8, $t9
/* 0DB1C 8001EBBC 00484821 */  addu    $t1, $v0, $t0
/* 0DB20 8001EBC0 10000002 */  beq     $zero, $zero, .L8001EBCC
/* 0DB24 8001EBC4 ACA90020 */  sw      $t1, 0x0020($a1)           ## 00000020
/* 0DB28 8001EBC8 ACA00020 */  sw      $zero, 0x0020($a1)         ## 00000020
.L8001EBCC:
/* 0DB2C 8001EBCC 8CA20024 */  lw      $v0, 0x0024($a1)           ## 00000024
/* 0DB30 8001EBD0 50400008 */  beql    $v0, $zero, .L8001EBF4
/* 0DB34 8001EBD4 ACA00024 */  sw      $zero, 0x0024($a1)         ## 00000024
/* 0DB38 8001EBD8 8CA60000 */  lw      $a2, 0x0000($a1)           ## 00000000
/* 0DB3C 8001EBDC 8CAA000C */  lw      $t2, 0x000C($a1)           ## 0000000C
/* 0DB40 8001EBE0 01465823 */  subu    $t3, $t2, $a2
/* 0DB44 8001EBE4 004B6021 */  addu    $t4, $v0, $t3
/* 0DB48 8001EBE8 10000003 */  beq     $zero, $zero, .L8001EBF8
/* 0DB4C 8001EBEC ACAC0024 */  sw      $t4, 0x0024($a1)           ## 00000024
/* 0DB50 8001EBF0 ACA00024 */  sw      $zero, 0x0024($a1)         ## 00000024
.L8001EBF4:
/* 0DB54 8001EBF4 8CA60000 */  lw      $a2, 0x0000($a1)           ## 00000000
.L8001EBF8:
/* 0DB58 8001EBF8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0DB5C 8001EBFC 0C0336C0 */  jal     SystemArena_FreeDebug
/* 0DB60 8001EC00 AFA50018 */  sw      $a1, 0x0018($sp)
/* 0DB64 8001EC04 8FA50018 */  lw      $a1, 0x0018($sp)
/* 0DB68 8001EC08 ACA00000 */  sw      $zero, 0x0000($a1)         ## 00000000
/* 0DB6C 8001EC0C 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8001EC10:
/* 0DB70 8001EC10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0DB74 8001EC14 03E00008 */  jr      $ra
/* 0DB78 8001EC18 00000000 */  nop
/* 0DB7C 8001EC1C 00000000 */  nop
