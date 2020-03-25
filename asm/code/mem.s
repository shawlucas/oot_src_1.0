# "Memory Util" part of the code file
#
# Generic functions to manipulate memory blocks.
#
# Starts at VRAM: 80057030 / VROM: ACCF90
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel MemCopy
/* 45F90 80057030 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 45F94 80057034 18C00007 */  blez    $a2, .L80057054
/* 45F98 80057038 00A01825 */  or      $v1, $a1, $zero            ## $v1 = 00000000
.L8005703C:
/* 45F9C 8005703C 906E0000 */  lbu     $t6, 0x0000($v1)           ## 00000000
/* 45FA0 80057040 24C6FFFF */  addiu   $a2, $a2, 0xFFFF           ## $a2 = FFFFFFFF
/* 45FA4 80057044 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 45FA8 80057048 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 45FAC 8005704C 1CC0FFFB */  bgtz    $a2, .L8005703C
/* 45FB0 80057050 A04EFFFF */  sb      $t6, -0x0001($v0)          ## 00000000
.L80057054:
/* 45FB4 80057054 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 45FB8 80057058 03E00008 */  jr      $ra
/* 45FBC 8005705C 00000000 */  nop


glabel MemSet
/* 45FC0 80057060 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 45FC4 80057064 18C00011 */  blez    $a2, .L800570AC
/* 45FC8 80057068 00C01825 */  or      $v1, $a2, $zero            ## $v1 = 00000000
/* 45FCC 8005706C 30C80003 */  andi    $t0, $a2, 0x0003           ## $t0 = 00000000
/* 45FD0 80057070 00084023 */  subu    $t0, $zero, $t0
/* 45FD4 80057074 11000006 */  beq     $t0, $zero, .L80057090
/* 45FD8 80057078 01063821 */  addu    $a3, $t0, $a2
.L8005707C:
/* 45FDC 8005707C 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 45FE0 80057080 A0450000 */  sb      $a1, 0x0000($v0)           ## 00000000
/* 45FE4 80057084 14E3FFFD */  bne     $a3, $v1, .L8005707C
/* 45FE8 80057088 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 45FEC 8005708C 10600007 */  beq     $v1, $zero, .L800570AC
.L80057090:
/* 45FF0 80057090 2463FFFC */  addiu   $v1, $v1, 0xFFFC           ## $v1 = FFFFFFFB
/* 45FF4 80057094 A0450001 */  sb      $a1, 0x0001($v0)           ## 00000002
/* 45FF8 80057098 A0450002 */  sb      $a1, 0x0002($v0)           ## 00000003
/* 45FFC 8005709C A0450003 */  sb      $a1, 0x0003($v0)           ## 00000004
/* 46000 800570A0 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000005
/* 46004 800570A4 1460FFFA */  bne     $v1, $zero, .L80057090
/* 46008 800570A8 A045FFFC */  sb      $a1, -0x0004($v0)          ## 00000001
.L800570AC:
/* 4600C 800570AC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 46010 800570B0 03E00008 */  jr      $ra
/* 46014 800570B4 00000000 */  nop
/* 46018 800570B8 00000000 */  nop
/* 4601C 800570BC 00000000 */  nop
