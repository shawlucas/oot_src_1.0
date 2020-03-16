.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel __osSiDeviceBusy
/* 03EA0 80004300 3C0EA480 */  lui     $t6, 0xA480                ## $t6 = A4800000
/* 03EA4 80004304 8DC40018 */  lw      $a0, 0x0018($t6)           ## A4800018
/* 03EA8 80004308 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 03EAC 8000430C 308F0003 */  andi    $t7, $a0, 0x0003           ## $t7 = 00000000
/* 03EB0 80004310 11E00003 */  beq     $t7, $zero, .L80004320
/* 03EB4 80004314 00000000 */  nop
/* 03EB8 80004318 10000002 */  beq     $zero, $zero, .L80004324
/* 03EBC 8000431C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80004320:
/* 03EC0 80004320 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80004324:
/* 03EC4 80004324 03E00008 */  jr      $ra
/* 03EC8 80004328 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000
/* 03ECC 8000432C 00000000 */  nop
