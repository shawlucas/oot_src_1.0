.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osDisableInt
/* 04CD0 80005130 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 04CD4 80005134 254A6360 */  addiu   $t2, $t2, 0x6360           ## $t2 = 80006360
/* 04CD8 80005138 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 80006360
/* 04CDC 8000513C 316BFF00 */  andi    $t3, $t3, 0xFF00           ## $t3 = 00000000
/* 04CE0 80005140 40086000 */  mfc0    $t0, $12
/* 04CE4 80005144 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 04CE8 80005148 01014824 */  and     $t1, $t0, $at
/* 04CEC 8000514C 40896000 */  mtc0    $t1, $12
/* 04CF0 80005150 31020001 */  andi    $v0, $t0, 0x0001           ## $v0 = 00000000
/* 04CF4 80005154 8D480000 */  lw      $t0, 0x0000($t2)           ## 80006360
/* 04CF8 80005158 3108FF00 */  andi    $t0, $t0, 0xFF00           ## $t0 = 00000000
/* 04CFC 8000515C 110B000E */  beq     $t0, $t3, .L80005198
/* 04D00 80005160 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 04D04 80005164 254A6340 */  addiu   $t2, $t2, 0x6340           ## $t2 = 80006340
/* 04D08 80005168 8D490118 */  lw      $t1, 0x0118($t2)           ## 80006458
/* 04D0C 8000516C 312AFF00 */  andi    $t2, $t1, 0xFF00           ## $t2 = 00000000
/* 04D10 80005170 01485024 */  and     $t2, $t2, $t0
/* 04D14 80005174 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 04D18 80005178 342100FF */  ori     $at, $at, 0x00FF           ## $at = FFFF00FF
/* 04D1C 8000517C 01214824 */  and     $t1, $t1, $at
/* 04D20 80005180 012A4825 */  or      $t1, $t1, $t2              ## $t1 = 00000000
/* 04D24 80005184 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 04D28 80005188 01214824 */  and     $t1, $t1, $at
/* 04D2C 8000518C 40896000 */  mtc0    $t1, $12
/* 04D30 80005190 00000000 */  nop
/* 04D34 80005194 00000000 */  nop
.L80005198:
/* 04D38 80005198 03E00008 */  jr      $ra
/* 04D3C 8000519C 00000000 */  nop

glabel __osRestoreInt
/* 04D40 800051A0 40086000 */  mfc0    $t0, $12
/* 04D44 800051A4 01044025 */  or      $t0, $t0, $a0              ## $t0 = 00000000
/* 04D48 800051A8 40886000 */  mtc0    $t0, $12
/* 04D4C 800051AC 00000000 */  nop
/* 04D50 800051B0 00000000 */  nop
/* 04D54 800051B4 03E00008 */  jr      $ra
/* 04D58 800051B8 00000000 */  nop
/* 04D5C 800051BC 00000000 */  nop
