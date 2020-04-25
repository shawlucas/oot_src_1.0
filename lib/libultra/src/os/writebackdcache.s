.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osWritebackDCache
/* 02FE0 80003440 18A00011 */  blez    $a1, .L80003488
/* 02FE4 80003444 00000000 */  nop
/* 02FE8 80003448 240B2000 */  addiu   $t3, $zero, 0x2000         ## $t3 = 00002000
/* 02FEC 8000344C 00AB082B */  sltu    $at, $a1, $t3
/* 02FF0 80003450 1020000F */  beq     $at, $zero, .L80003490
/* 02FF4 80003454 00000000 */  nop
/* 02FF8 80003458 00804025 */  or      $t0, $a0, $zero            ## $t0 = 00000000
/* 02FFC 8000345C 00854821 */  addu    $t1, $a0, $a1
/* 03000 80003460 0109082B */  sltu    $at, $t0, $t1
/* 03004 80003464 10200008 */  beq     $at, $zero, .L80003488
/* 03008 80003468 00000000 */  nop
/* 0300C 8000346C 310A000F */  andi    $t2, $t0, 0x000F           ## $t2 = 00000000
/* 03010 80003470 2529FFF0 */  addiu   $t1, $t1, 0xFFF0           ## $t1 = FFFFFFF0
/* 03014 80003474 010A4023 */  subu    $t0, $t0, $t2
.L80003478:
/* 03018 80003478 BD190000 */  cache   0x19, 0x0000($t0)
/* 0301C 8000347C 0109082B */  sltu    $at, $t0, $t1
/* 03020 80003480 1420FFFD */  bne     $at, $zero, .L80003478
/* 03024 80003484 25080010 */  addiu   $t0, $t0, 0x0010           ## $t0 = 00000010
.L80003488:
/* 03028 80003488 03E00008 */  jr      $ra
/* 0302C 8000348C 00000000 */  nop
.L80003490:
/* 03030 80003490 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 03034 80003494 010B4821 */  addu    $t1, $t0, $t3
/* 03038 80003498 2529FFF0 */  addiu   $t1, $t1, 0xFFF0           ## $t1 = FFFFFFE0
.L8000349C:
/* 0303C 8000349C BD010000 */  cache   0x01, 0x0000($t0)
/* 03040 800034A0 0109082B */  sltu    $at, $t0, $t1
/* 03044 800034A4 1420FFFD */  bne     $at, $zero, .L8000349C
/* 03048 800034A8 25080010 */  addiu   $t0, $t0, 0x0010           ## $t0 = 80000010
/* 0304C 800034AC 03E00008 */  jr      $ra
/* 03050 800034B0 00000000 */  nop
/* 03054 800034B4 00000000 */  nop
/* 03058 800034B8 00000000 */  nop
/* 0305C 800034BC 00000000 */  nop
