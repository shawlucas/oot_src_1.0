.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osInvalDCache
/* 03DF0 80004250 18A0001F */  blez    $a1, .L800042D0
/* 03DF4 80004254 00000000 */  nop
/* 03DF8 80004258 240B2000 */  addiu   $t3, $zero, 0x2000         ## $t3 = 00002000
/* 03DFC 8000425C 00AB082B */  sltu    $at, $a1, $t3
/* 03E00 80004260 1020001D */  beq     $at, $zero, .L800042D8
/* 03E04 80004264 00000000 */  nop
/* 03E08 80004268 00804025 */  or      $t0, $a0, $zero            ## $t0 = 00000000
/* 03E0C 8000426C 00854821 */  addu    $t1, $a0, $a1
/* 03E10 80004270 0109082B */  sltu    $at, $t0, $t1
/* 03E14 80004274 10200016 */  beq     $at, $zero, .L800042D0
/* 03E18 80004278 00000000 */  nop
/* 03E1C 8000427C 310A000F */  andi    $t2, $t0, 0x000F           ## $t2 = 00000000
/* 03E20 80004280 11400007 */  beq     $t2, $zero, .L800042A0
/* 03E24 80004284 2529FFF0 */  addiu   $t1, $t1, 0xFFF0           ## $t1 = FFFFFFF0
/* 03E28 80004288 010A4023 */  subu    $t0, $t0, $t2
/* 03E2C 8000428C BD150000 */  cache   0x15, 0x0000($t0)
/* 03E30 80004290 0109082B */  sltu    $at, $t0, $t1
/* 03E34 80004294 1020000E */  beq     $at, $zero, .L800042D0
/* 03E38 80004298 00000000 */  nop
/* 03E3C 8000429C 25080010 */  addiu   $t0, $t0, 0x0010           ## $t0 = 00000010
.L800042A0:
/* 03E40 800042A0 312A000F */  andi    $t2, $t1, 0x000F           ## $t2 = 00000000
/* 03E44 800042A4 11400006 */  beq     $t2, $zero, .L800042C0
/* 03E48 800042A8 00000000 */  nop
/* 03E4C 800042AC 012A4823 */  subu    $t1, $t1, $t2
/* 03E50 800042B0 BD350010 */  cache   0x15, 0x0010($t1)
/* 03E54 800042B4 0128082B */  sltu    $at, $t1, $t0
/* 03E58 800042B8 14200005 */  bne     $at, $zero, .L800042D0
/* 03E5C 800042BC 00000000 */  nop
.L800042C0:
/* 03E60 800042C0 BD110000 */  cache   0x11, 0x0000($t0)
/* 03E64 800042C4 0109082B */  sltu    $at, $t0, $t1
/* 03E68 800042C8 1420FFFD */  bne     $at, $zero, .L800042C0
/* 03E6C 800042CC 25080010 */  addiu   $t0, $t0, 0x0010           ## $t0 = 00000020
.L800042D0:
/* 03E70 800042D0 03E00008 */  jr      $ra
/* 03E74 800042D4 00000000 */  nop
.L800042D8:
/* 03E78 800042D8 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 03E7C 800042DC 010B4821 */  addu    $t1, $t0, $t3
/* 03E80 800042E0 2529FFF0 */  addiu   $t1, $t1, 0xFFF0           ## $t1 = FFFFFFE0
.L800042E4:
/* 03E84 800042E4 BD010000 */  cache   0x01, 0x0000($t0)
/* 03E88 800042E8 0109082B */  sltu    $at, $t0, $t1
/* 03E8C 800042EC 1420FFFD */  bne     $at, $zero, .L800042E4
/* 03E90 800042F0 25080010 */  addiu   $t0, $t0, 0x0010           ## $t0 = 80000010
/* 03E94 800042F4 03E00008 */  jr      $ra
/* 03E98 800042F8 00000000 */  nop
/* 03E9C 800042FC 00000000 */  nop
