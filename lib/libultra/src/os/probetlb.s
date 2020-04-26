.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osProbeTLB
/* 03970 80003DD0 40085000 */  mfc0    $t0, $10
/* 03974 80003DD4 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 03978 80003DD8 2401E000 */  addiu   $at, $zero, 0xE000         ## $at = FFFFE000
/* 0397C 80003DDC 00815024 */  and     $t2, $a0, $at
/* 03980 80003DE0 012A4825 */  or      $t1, $t1, $t2              ## $t1 = 00000000
/* 03984 80003DE4 40895000 */  mtc0    $t1, $10
/* 03988 80003DE8 00000000 */  nop
/* 0398C 80003DEC 00000000 */  nop
/* 03990 80003DF0 00000000 */  nop
/* 03994 80003DF4 42000008 */  tlbp
/* 03998 80003DF8 00000000 */  nop
/* 0399C 80003DFC 00000000 */  nop
/* 039A0 80003E00 400B0000 */  mfc0    $t3, $0
/* 039A4 80003E04 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 039A8 80003E08 01615824 */  and     $t3, $t3, $at
/* 039AC 80003E0C 1560001A */  bne     $t3, $zero, .L80003E78
/* 039B0 80003E10 00000000 */  nop
/* 039B4 80003E14 42000001 */  tlbr
/* 039B8 80003E18 00000000 */  nop
/* 039BC 80003E1C 00000000 */  nop
/* 039C0 80003E20 00000000 */  nop
/* 039C4 80003E24 400B2800 */  mfc0    $t3, $5
/* 039C8 80003E28 216B2000 */  addi    $t3, $t3, 0x2000           ## $t3 = 00002000
/* 039CC 80003E2C 000B5842 */  srl     $t3, $t3,  1
/* 039D0 80003E30 01646024 */  and     $t4, $t3, $a0
/* 039D4 80003E34 15800004 */  bne     $t4, $zero, .L80003E48
/* 039D8 80003E38 216BFFFF */  addi    $t3, $t3, 0xFFFF           ## $t3 = 00001FFF
/* 039DC 80003E3C 40021000 */  mfc0    $v0, $2
/* 039E0 80003E40 10000002 */  beq     $zero, $zero, .L80003E4C
/* 039E4 80003E44 00000000 */  nop
.L80003E48:
/* 039E8 80003E48 40021800 */  mfc0    $v0, $3
.L80003E4C:
/* 039EC 80003E4C 304D0002 */  andi    $t5, $v0, 0x0002           ## $t5 = 00000000
/* 039F0 80003E50 11A00009 */  beq     $t5, $zero, .L80003E78
/* 039F4 80003E54 00000000 */  nop
/* 039F8 80003E58 3C013FFF */  lui     $at, 0x3FFF                ## $at = 3FFF0000
/* 039FC 80003E5C 3421FFC0 */  ori     $at, $at, 0xFFC0           ## $at = 3FFFFFC0
/* 03A00 80003E60 00411024 */  and     $v0, $v0, $at
/* 03A04 80003E64 00021180 */  sll     $v0, $v0,  6
/* 03A08 80003E68 008B6824 */  and     $t5, $a0, $t3
/* 03A0C 80003E6C 004D1020 */  add     $v0, $v0, $t5
/* 03A10 80003E70 10000002 */  beq     $zero, $zero, .L80003E7C
/* 03A14 80003E74 00000000 */  nop
.L80003E78:
/* 03A18 80003E78 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80003E7C:
/* 03A1C 80003E7C 40885000 */  mtc0    $t0, $10
/* 03A20 80003E80 03E00008 */  jr      $ra
/* 03A24 80003E84 00000000 */  nop
/* 03A28 80003E88 00000000 */  nop
/* 03A2C 80003E8C 00000000 */  nop
