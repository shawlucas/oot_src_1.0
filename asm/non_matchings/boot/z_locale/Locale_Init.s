.rdata

glabel D_800065F0
    .asciz "../z_locale.c"
    .balign 4

.text
glabel Locale_Init
/* 00E40 800012A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E44 800012A4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00E48 800012A8 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00E4C 800012AC 8C846260 */  lw      $a0, 0x6260($a0)           ## 80006260
/* 00E50 800012B0 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 00E54 800012B4 0C00158C */  jal     osEPiReadIo
/* 00E58 800012B8 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFFC
/* 00E5C 800012BC 93A30026 */  lbu     $v1, 0x0026($sp)
/* 00E60 800012C0 24010045 */  addiu   $at, $zero, 0x0045         ## $at = 00000045
/* 00E64 800012C4 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00E68 800012C8 10610007 */  beq     $v1, $at, .L800012E8
/* 00E6C 800012CC 2401004A */  addiu   $at, $zero, 0x004A         ## $at = 0000004A
/* 00E70 800012D0 14610008 */  bne     $v1, $at, .L800012F4
/* 00E74 800012D4 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00E78 800012D8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00E7C 800012DC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00E80 800012E0 10000007 */  beq     $zero, $zero, .L80001300
/* 00E84 800012E4 AC2E6280 */  sw      $t6, 0x6280($at)           ## 80006280
.L800012E8:
/* 00E88 800012E8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00E8C 800012EC 10000004 */  beq     $zero, $zero, .L80001300
/* 00E90 800012F0 AC2F6280 */  sw      $t7, 0x6280($at)           ## 80006280
.L800012F4:
/* 00E94 800012F4 248465F0 */  addiu   $a0, $a0, 0x65F0           ## $a0 = 800065F0
/* 00E98 800012F8 0C0006CE */  jal     LogUtils_HungupThread
/* 00E9C 800012FC 24050056 */  addiu   $a1, $zero, 0x0056         ## $a1 = 00000056
.L80001300:
/* 00EA0 80001300 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00EA4 80001304 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00EA8 80001308 03E00008 */  jr      $ra
/* 00EAC 8000130C 00000000 */  nop

