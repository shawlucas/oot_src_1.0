.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osViSetMode
/* 03900 80003D60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03904 80003D64 AFBF001C */  sw      $ra, 0x001C($sp)
/* 03908 80003D68 AFA40028 */  sw      $a0, 0x0028($sp)
/* 0390C 80003D6C 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 03910 80003D70 AFB00018 */  sw      $s0, 0x0018($sp)
/* 03914 80003D74 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 03918 80003D78 8DEF64C4 */  lw      $t7, 0x64C4($t7)           ## 800064C4
/* 0391C 80003D7C 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 03920 80003D80 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 03924 80003D84 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 03928 80003D88 ADEE0008 */  sw      $t6, 0x0008($t7)           ## 80000008
/* 0392C 80003D8C 8F3964C4 */  lw      $t9, 0x64C4($t9)           ## 800064C4
/* 03930 80003D90 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 03934 80003D94 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 03938 80003D98 A7380000 */  sh      $t8, 0x0000($t9)           ## 80000000
/* 0393C 80003D9C 8D0864C4 */  lw      $t0, 0x64C4($t0)           ## 800064C4
/* 03940 80003DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03944 80003DA4 8D090008 */  lw      $t1, 0x0008($t0)           ## 80000008
/* 03948 80003DA8 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 00000004
/* 0394C 80003DAC 0C001468 */  jal     __osRestoreInt
/* 03950 80003DB0 AD0A000C */  sw      $t2, 0x000C($t0)           ## 8000000C
/* 03954 80003DB4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 03958 80003DB8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0395C 80003DBC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03960 80003DC0 03E00008 */  jr      $ra
/* 03964 80003DC4 00000000 */  nop
/* 03968 80003DC8 00000000 */  nop
/* 0396C 80003DCC 00000000 */  nop
