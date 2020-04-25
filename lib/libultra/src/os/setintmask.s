.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osSetIntMask
/* 03860 80003CC0 400C6000 */  mfc0    $t4, $12
/* 03864 80003CC4 3182FF01 */  andi    $v0, $t4, 0xFF01           ## $v0 = 00000000
/* 03868 80003CC8 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 0386C 80003CCC 25086360 */  addiu   $t0, $t0, 0x6360           ## $t0 = 80006360
/* 03870 80003CD0 8D0B0000 */  lw      $t3, 0x0000($t0)           ## 80006360
/* 03874 80003CD4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 03878 80003CD8 01614026 */  xor     $t0, $t3, $at
/* 0387C 80003CDC 3108FF00 */  andi    $t0, $t0, 0xFF00           ## $t0 = 00006300
/* 03880 80003CE0 00481025 */  or      $v0, $v0, $t0              ## $v0 = 00006300
/* 03884 80003CE4 3C0AA430 */  lui     $t2, 0xA430                ## $t2 = A4300000
/* 03888 80003CE8 8D4A000C */  lw      $t2, 0x000C($t2)           ## A430000C
/* 0388C 80003CEC 11400005 */  beq     $t2, $zero, .L80003D04
/* 03890 80003CF0 000B4C02 */  srl     $t1, $t3, 16
/* 03894 80003CF4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 03898 80003CF8 01214826 */  xor     $t1, $t1, $at
/* 0389C 80003CFC 3129003F */  andi    $t1, $t1, 0x003F           ## $t1 = 00000000
/* 038A0 80003D00 01495025 */  or      $t2, $t2, $t1              ## $t2 = A4300000
.L80003D04:
/* 038A4 80003D04 000A5400 */  sll     $t2, $t2, 16
/* 038A8 80003D08 004A1025 */  or      $v0, $v0, $t2              ## $v0 = A4306300
/* 038AC 80003D0C 3C01003F */  lui     $at, 0x003F                ## $at = 003F0000
/* 038B0 80003D10 00814024 */  and     $t0, $a0, $at
/* 038B4 80003D14 010B4024 */  and     $t0, $t0, $t3
/* 038B8 80003D18 000843C2 */  srl     $t0, $t0, 15
/* 038BC 80003D1C 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 038C0 80003D20 01485021 */  addu    $t2, $t2, $t0
/* 038C4 80003D24 954A6780 */  lhu     $t2, 0x6780($t2)           ## 80006780
/* 038C8 80003D28 3C01A430 */  lui     $at, 0xA430                ## $at = A4300000
/* 038CC 80003D2C AC2A000C */  sw      $t2, 0x000C($at)           ## A430000C
/* 038D0 80003D30 3088FF01 */  andi    $t0, $a0, 0xFF01           ## $t0 = 00000000
/* 038D4 80003D34 3169FF00 */  andi    $t1, $t3, 0xFF00           ## $t1 = 00000000
/* 038D8 80003D38 01094024 */  and     $t0, $t0, $t1
/* 038DC 80003D3C 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 038E0 80003D40 342100FF */  ori     $at, $at, 0x00FF           ## $at = FFFF00FF
/* 038E4 80003D44 01816024 */  and     $t4, $t4, $at
/* 038E8 80003D48 01886025 */  or      $t4, $t4, $t0              ## $t4 = 00000000
/* 038EC 80003D4C 408C6000 */  mtc0    $t4, $12
/* 038F0 80003D50 00000000 */  nop
/* 038F4 80003D54 00000000 */  nop
/* 038F8 80003D58 03E00008 */  jr      $ra
/* 038FC 80003D5C 00000000 */  nop
