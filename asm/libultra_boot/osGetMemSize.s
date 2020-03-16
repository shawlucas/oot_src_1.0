.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osGetMemSize
/* 03A30 80003E90 27BDFFF0 */  addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
/* 03A34 80003E94 3C0E0040 */  lui     $t6, 0x0040                ## $t6 = 00400000
/* 03A38 80003E98 AFAE0008 */  sw      $t6, 0x0008($sp)
.L80003E9C:
/* 03A3C 80003E9C 8FAF0008 */  lw      $t7, 0x0008($sp)
/* 03A40 80003EA0 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 03A44 80003EA4 3C19A000 */  lui     $t9, 0xA000                ## $t9 = A0000000
/* 03A48 80003EA8 01E1C021 */  addu    $t8, $t7, $at
/* 03A4C 80003EAC AFB8000C */  sw      $t8, 0x000C($sp)
/* 03A50 80003EB0 032FC821 */  addu    $t9, $t9, $t7
/* 03A54 80003EB4 8F390000 */  lw      $t9, 0x0000($t9)           ## A0000000
/* 03A58 80003EB8 3C08A010 */  lui     $t0, 0xA010                ## $t0 = A0100000
/* 03A5C 80003EBC 010F4021 */  addu    $t0, $t0, $t7
/* 03A60 80003EC0 AFB90004 */  sw      $t9, 0x0004($sp)
/* 03A64 80003EC4 8D08FFFC */  lw      $t0, -0x0004($t0)          ## A00FFFFC
/* 03A68 80003EC8 3C09A000 */  lui     $t1, 0xA000                ## $t1 = A0000000
/* 03A6C 80003ECC 012F4821 */  addu    $t1, $t1, $t7
/* 03A70 80003ED0 AFA80000 */  sw      $t0, 0x0000($sp)
/* 03A74 80003ED4 8D290000 */  lw      $t1, 0x0000($t1)           ## A0000000
/* 03A78 80003ED8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 03A7C 80003EDC 3C0C0010 */  lui     $t4, 0x0010                ## $t4 = 00100000
/* 03A80 80003EE0 01215026 */  xor     $t2, $t1, $at
/* 03A84 80003EE4 3C01A000 */  lui     $at, 0xA000                ## $at = A0000000
/* 03A88 80003EE8 002F0821 */  addu    $at, $at, $t7
/* 03A8C 80003EEC AC2A0000 */  sw      $t2, 0x0000($at)           ## A0000000
/* 03A90 80003EF0 8FAB000C */  lw      $t3, 0x000C($sp)
/* 03A94 80003EF4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 03A98 80003EF8 018B6021 */  addu    $t4, $t4, $t3
/* 03A9C 80003EFC 8D8CFFFC */  lw      $t4, -0x0004($t4)          ## 000FFFFC
/* 03AA0 80003F00 01816826 */  xor     $t5, $t4, $at
/* 03AA4 80003F04 3C010010 */  lui     $at, 0x0010                ## $at = 00100000
/* 03AA8 80003F08 002B0821 */  addu    $at, $at, $t3
/* 03AAC 80003F0C AC2DFFFC */  sw      $t5, -0x0004($at)          ## 000FFFFC
/* 03AB0 80003F10 8FAE000C */  lw      $t6, 0x000C($sp)
/* 03AB4 80003F14 8FB90004 */  lw      $t9, 0x0004($sp)
/* 03AB8 80003F18 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 03ABC 80003F1C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 00400000
/* 03AC0 80003F20 03214026 */  xor     $t0, $t9, $at
/* 03AC4 80003F24 17080009 */  bne     $t8, $t0, .L80003F4C
/* 03AC8 80003F28 00000000 */  nop
/* 03ACC 80003F2C 3C090010 */  lui     $t1, 0x0010                ## $t1 = 00100000
/* 03AD0 80003F30 8FAA0000 */  lw      $t2, 0x0000($sp)
/* 03AD4 80003F34 012E4821 */  addu    $t1, $t1, $t6
/* 03AD8 80003F38 8D29FFFC */  lw      $t1, -0x0004($t1)          ## 000FFFFC
/* 03ADC 80003F3C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 03AE0 80003F40 01417826 */  xor     $t7, $t2, $at
/* 03AE4 80003F44 112F0003 */  beq     $t1, $t7, .L80003F54
/* 03AE8 80003F48 00000000 */  nop
.L80003F4C:
/* 03AEC 80003F4C 10000013 */  beq     $zero, $zero, .L80003F9C
/* 03AF0 80003F50 8FA20008 */  lw      $v0, 0x0008($sp)
.L80003F54:
/* 03AF4 80003F54 8FAC0004 */  lw      $t4, 0x0004($sp)
/* 03AF8 80003F58 8FAD000C */  lw      $t5, 0x000C($sp)
/* 03AFC 80003F5C 3C010010 */  lui     $at, 0x0010                ## $at = 00100000
/* 03B00 80003F60 ADAC0000 */  sw      $t4, 0x0000($t5)           ## 00000000
/* 03B04 80003F64 8FB9000C */  lw      $t9, 0x000C($sp)
/* 03B08 80003F68 8FAB0000 */  lw      $t3, 0x0000($sp)
/* 03B0C 80003F6C 00390821 */  addu    $at, $at, $t9
/* 03B10 80003F70 AC2BFFFC */  sw      $t3, -0x0004($at)          ## 000FFFFC
/* 03B14 80003F74 8FB80008 */  lw      $t8, 0x0008($sp)
/* 03B18 80003F78 3C010010 */  lui     $at, 0x0010                ## $at = 00100000
/* 03B1C 80003F7C 03014021 */  addu    $t0, $t8, $at
/* 03B20 80003F80 AFA80008 */  sw      $t0, 0x0008($sp)
/* 03B24 80003F84 8FAE0008 */  lw      $t6, 0x0008($sp)
/* 03B28 80003F88 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 03B2C 80003F8C 01C1082B */  sltu    $at, $t6, $at
/* 03B30 80003F90 1420FFC2 */  bne     $at, $zero, .L80003E9C
/* 03B34 80003F94 00000000 */  nop
/* 03B38 80003F98 8FA20008 */  lw      $v0, 0x0008($sp)
.L80003F9C:
/* 03B3C 80003F9C 03E00008 */  jr      $ra
/* 03B40 80003FA0 27BD0010 */  addiu   $sp, $sp, 0x0010           ## $sp = 00000000
/* 03B44 80003FA4 00000000 */  nop
/* 03B48 80003FA8 00000000 */  nop
/* 03B4C 80003FAC 00000000 */  nop
