.rdata

glabel D_80006600
    .asciz "OCARINA %08x %08x"
    .balign 4

glabel D_80006614
    .asciz "LEGEND %08x %08x"
    .balign 4

glabel D_80006628
    .asciz "ROM_F"
    .balign 4

glabel D_80006630
    .asciz " [Creator:%s]"
    .balign 4

glabel D_80006640
    .asciz "[Date:%s]"
    .balign 4

glabel D_8000664C
    .asciz "I LOVE YOU %08x"
    .balign 4

.text
glabel func_8000134C
/* 00EEC 8000134C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EF0 80001350 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00EF4 80001354 3C0EA404 */  lui     $t6, 0xA404                ## $t6 = A4040000
/* 00EF8 80001358 8DCF0010 */  lw      $t7, 0x0010($t6)           ## A4040010
/* 00EFC 8000135C 24040030 */  addiu   $a0, $zero, 0x0030         ## $a0 = 00000030
/* 00F00 80001360 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 00F04 80001364 0C02B6E0 */  jal     func_800ADB80
/* 00F08 80001368 AFAF001C */  sw      $t7, 0x001C($sp)
/* 00F0C 8000136C 8FB8001C */  lw      $t8, 0x001C($sp)
/* 00F10 80001370 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00F14 80001374 24846614 */  addiu   $a0, $a0, 0x6614           ## $a0 = 80006614
/* 00F18 80001378 33194000 */  andi    $t9, $t8, 0x4000           ## $t9 = 00000000
/* 00F1C 8000137C 1320000A */  beq     $t9, $zero, .L800013A8
/* 00F20 80001380 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 00F24 80001384 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00F28 80001388 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 00F2C 8000138C 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 00F30 80001390 8CC688BC */  lw      $a2, -0x7744($a2)          ## 800088BC
/* 00F34 80001394 8CA588B8 */  lw      $a1, -0x7748($a1)          ## 800088B8
/* 00F38 80001398 0C02B6FE */  jal     osSyncPrintf
/* 00F3C 8000139C 24846600 */  addiu   $a0, $a0, 0x6600           ## $a0 = 80006600
/* 00F40 800013A0 10000006 */  beq     $zero, $zero, .L800013BC
/* 00F44 800013A4 24040028 */  addiu   $a0, $zero, 0x0028         ## $a0 = 00000028
.L800013A8:
/* 00F48 800013A8 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 00F4C 800013AC 8CC688BC */  lw      $a2, -0x7744($a2)          ## 800088BC
/* 00F50 800013B0 0C02B6FE */  jal     osSyncPrintf
/* 00F54 800013B4 8CA588B8 */  lw      $a1, -0x7748($a1)          ## FFFF88B8
/* 00F58 800013B8 24040028 */  addiu   $a0, $zero, 0x0028         ## $a0 = 00000028
.L800013BC:
/* 00F5C 800013BC 0C02B6E0 */  jal     func_800ADB80
/* 00F60 800013C0 240500B8 */  addiu   $a1, $zero, 0x00B8         ## $a1 = 000000B8
/* 00F64 800013C4 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00F68 800013C8 0C02B6FE */  jal     osSyncPrintf
/* 00F6C 800013CC 24846628 */  addiu   $a0, $a0, 0x6628           ## $a0 = 80006628
/* 00F70 800013D0 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00F74 800013D4 3C058000 */  lui     $a1, 0x8000                ## $a1 = 80000000
/* 00F78 800013D8 24A56800 */  addiu   $a1, $a1, 0x6800           ## $a1 = 80006800
/* 00F7C 800013DC 0C02B6FE */  jal     osSyncPrintf
/* 00F80 800013E0 24846630 */  addiu   $a0, $a0, 0x6630           ## $a0 = 80006630
/* 00F84 800013E4 24040038 */  addiu   $a0, $zero, 0x0038         ## $a0 = 00000038
/* 00F88 800013E8 0C02B6E0 */  jal     func_800ADB80
/* 00F8C 800013EC 240500C0 */  addiu   $a1, $zero, 0x00C0         ## $a1 = 000000C0
/* 00F90 800013F0 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00F94 800013F4 3C058000 */  lui     $a1, 0x8000                ## $a1 = 80000000
/* 00F98 800013F8 24A5680C */  addiu   $a1, $a1, 0x680C           ## $a1 = 8000680C
/* 00F9C 800013FC 0C02B6FE */  jal     osSyncPrintf
/* 00FA0 80001400 24846640 */  addiu   $a0, $a0, 0x6640           ## $a0 = 80006640
/* 00FA4 80001404 24040080 */  addiu   $a0, $zero, 0x0080         ## $a0 = 00000080
/* 00FA8 80001408 0C02B6E0 */  jal     func_800ADB80
/* 00FAC 8000140C 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
/* 00FB0 80001410 0C000559 */  jal     func_80001564
/* 00FB4 80001414 00000000 */  nop
/* 00FB8 80001418 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00FBC 8000141C 2484664C */  addiu   $a0, $a0, 0x664C           ## $a0 = 8000664C
/* 00FC0 80001420 0C02B6FE */  jal     osSyncPrintf
/* 00FC4 80001424 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00FC8 80001428 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00FCC 8000142C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FD0 80001430 03E00008 */  jr      $ra
/* 00FD4 80001434 00000000 */  nop


