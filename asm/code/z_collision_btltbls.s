.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel CollisionBtlTbl_Get
/* 38D70 80049E10 04800003 */  bltz    $a0, .L80049E20
/* 38D74 80049E14 28810017 */  slti    $at, $a0, 0x0017
/* 38D78 80049E18 14200003 */  bne     $at, $zero, .L80049E28
/* 38D7C 80049E1C 00047140 */  sll     $t6, $a0,  5
.L80049E20:
/* 38D80 80049E20 03E00008 */  jr      $ra
/* 38D84 80049E24 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80049E28:
/* 38D88 80049E28 3C0F800F */  lui     $t7, 0x800F                ## $t7 = 800F0000
/* 38D8C 80049E2C 25EFF6C0 */  addiu   $t7, $t7, 0xF6C0           ## $t7 = 800EF6C0
/* 38D90 80049E30 01CF1021 */  addu    $v0, $t6, $t7
/* 38D94 80049E34 03E00008 */  jr      $ra
/* 38D98 80049E38 00000000 */  nop


glabel func_80049E3C
/* 38D9C 80049E3C 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 38DA0 80049E40 24040020 */  addiu   $a0, $zero, 0x0020         ## $a0 = 00000020
/* 38DA4 80049E44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80049E48:
/* 38DA8 80049E48 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000004
/* 38DAC 80049E4C A0600001 */  sb      $zero, 0x0001($v1)         ## 00000001
/* 38DB0 80049E50 A0600002 */  sb      $zero, 0x0002($v1)         ## 00000002
/* 38DB4 80049E54 A0600003 */  sb      $zero, 0x0003($v1)         ## 00000003
/* 38DB8 80049E58 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 00000004
/* 38DBC 80049E5C 1444FFFA */  bne     $v0, $a0, .L80049E48
/* 38DC0 80049E60 A060FFFC */  sb      $zero, -0x0004($v1)        ## 00000000
/* 38DC4 80049E64 03E00008 */  jr      $ra
/* 38DC8 80049E68 00000000 */  nop
/* 38DCC 80049E6C 00000000 */  nop