.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osInvalICache
/* 03D40 800041A0 18A00011 */  blez    $a1, .L800041E8
/* 03D44 800041A4 00000000 */  nop
/* 03D48 800041A8 240B4000 */  addiu   $t3, $zero, 0x4000         ## $t3 = 00004000
/* 03D4C 800041AC 00AB082B */  sltu    $at, $a1, $t3
/* 03D50 800041B0 1020000F */  beq     $at, $zero, .L800041F0
/* 03D54 800041B4 00000000 */  nop
/* 03D58 800041B8 00804025 */  or      $t0, $a0, $zero            ## $t0 = 00000000
/* 03D5C 800041BC 00854821 */  addu    $t1, $a0, $a1
/* 03D60 800041C0 0109082B */  sltu    $at, $t0, $t1
/* 03D64 800041C4 10200008 */  beq     $at, $zero, .L800041E8
/* 03D68 800041C8 00000000 */  nop
/* 03D6C 800041CC 310A001F */  andi    $t2, $t0, 0x001F           ## $t2 = 00000000
/* 03D70 800041D0 2529FFE0 */  addiu   $t1, $t1, 0xFFE0           ## $t1 = FFFFFFE0
/* 03D74 800041D4 010A4023 */  subu    $t0, $t0, $t2
.L800041D8:
/* 03D78 800041D8 BD100000 */  cache   0x10, 0x0000($t0)
/* 03D7C 800041DC 0109082B */  sltu    $at, $t0, $t1
/* 03D80 800041E0 1420FFFD */  bne     $at, $zero, .L800041D8
/* 03D84 800041E4 25080020 */  addiu   $t0, $t0, 0x0020           ## $t0 = 00000020
.L800041E8:
/* 03D88 800041E8 03E00008 */  jr      $ra
/* 03D8C 800041EC 00000000 */  nop
.L800041F0:
/* 03D90 800041F0 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 03D94 800041F4 010B4821 */  addu    $t1, $t0, $t3
/* 03D98 800041F8 2529FFE0 */  addiu   $t1, $t1, 0xFFE0           ## $t1 = FFFFFFC0
.L800041FC:
/* 03D9C 800041FC BD000000 */  cache   0x00, 0x0000($t0)
/* 03DA0 80004200 0109082B */  sltu    $at, $t0, $t1
/* 03DA4 80004204 1420FFFD */  bne     $at, $zero, .L800041FC
/* 03DA8 80004208 25080020 */  addiu   $t0, $t0, 0x0020           ## $t0 = 80000020
/* 03DAC 8000420C 03E00008 */  jr      $ra
/* 03DB0 80004210 00000000 */  nop
/* 03DB4 80004214 00000000 */  nop
/* 03DB8 80004218 00000000 */  nop
/* 03DBC 8000421C 00000000 */  nop
