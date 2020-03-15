.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osCreateThread
/* 02AC0 80002F20 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02AC4 80002F24 AFA40028 */  sw      $a0, 0x0028($sp)
/* 02AC8 80002F28 AFA5002C */  sw      $a1, 0x002C($sp)
/* 02ACC 80002F2C 8FAE002C */  lw      $t6, 0x002C($sp)
/* 02AD0 80002F30 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 02AD4 80002F34 AFBF001C */  sw      $ra, 0x001C($sp)
/* 02AD8 80002F38 AFA60030 */  sw      $a2, 0x0030($sp)
/* 02ADC 80002F3C AFA70034 */  sw      $a3, 0x0034($sp)
/* 02AE0 80002F40 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02AE4 80002F44 ADEE0014 */  sw      $t6, 0x0014($t7)           ## 00000014
/* 02AE8 80002F48 8FB90028 */  lw      $t9, 0x0028($sp)
/* 02AEC 80002F4C 8FB8003C */  lw      $t8, 0x003C($sp)
/* 02AF0 80002F50 AF380004 */  sw      $t8, 0x0004($t9)           ## 00000004
/* 02AF4 80002F54 8FA80028 */  lw      $t0, 0x0028($sp)
/* 02AF8 80002F58 AD000000 */  sw      $zero, 0x0000($t0)         ## 00000000
/* 02AFC 80002F5C 8FA90028 */  lw      $t1, 0x0028($sp)
/* 02B00 80002F60 AD200008 */  sw      $zero, 0x0008($t1)         ## 00000008
/* 02B04 80002F64 8FAB0028 */  lw      $t3, 0x0028($sp)
/* 02B08 80002F68 8FAA0030 */  lw      $t2, 0x0030($sp)
/* 02B0C 80002F6C AD6A011C */  sw      $t2, 0x011C($t3)           ## 0000011C
/* 02B10 80002F70 8FAC0034 */  lw      $t4, 0x0034($sp)
/* 02B14 80002F74 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 02B18 80002F78 01807825 */  or      $t7, $t4, $zero            ## $t7 = 00000000
/* 02B1C 80002F7C 000C77C3 */  sra     $t6, $t4, 31
/* 02B20 80002F80 ADAE0038 */  sw      $t6, 0x0038($t5)           ## 00000038
/* 02B24 80002F84 ADAF003C */  sw      $t7, 0x003C($t5)           ## 0000003C
/* 02B28 80002F88 8FB80038 */  lw      $t8, 0x0038($sp)
/* 02B2C 80002F8C 8FB90028 */  lw      $t9, 0x0028($sp)
/* 02B30 80002F90 3C0C8000 */  lui     $t4, 0x8000                ## $t4 = 80000000
/* 02B34 80002F94 03004825 */  or      $t1, $t8, $zero            ## $t1 = 00000000
/* 02B38 80002F98 2D210010 */  sltiu   $at, $t1, 0x0010
/* 02B3C 80002F9C 001847C3 */  sra     $t0, $t8, 31
/* 02B40 80002FA0 01015023 */  subu    $t2, $t0, $at
/* 02B44 80002FA4 252BFFF0 */  addiu   $t3, $t1, 0xFFF0           ## $t3 = FFFFFFF0
/* 02B48 80002FA8 AF2B00F4 */  sw      $t3, 0x00F4($t9)           ## 000000F4
/* 02B4C 80002FAC AF2A00F0 */  sw      $t2, 0x00F0($t9)           ## 000000F0
/* 02B50 80002FB0 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 02B54 80002FB4 258C2D20 */  addiu   $t4, $t4, 0x2D20           ## $t4 = 80002D20
/* 02B58 80002FB8 01807825 */  or      $t7, $t4, $zero            ## $t7 = 80002D20
/* 02B5C 80002FBC 000C77C3 */  sra     $t6, $t4, 31
/* 02B60 80002FC0 ADAE0100 */  sw      $t6, 0x0100($t5)           ## 00000100
/* 02B64 80002FC4 ADAF0104 */  sw      $t7, 0x0104($t5)           ## 00000104
/* 02B68 80002FC8 8FA90028 */  lw      $t1, 0x0028($sp)
/* 02B6C 80002FCC 3C18003F */  lui     $t8, 0x003F                ## $t8 = 003F0000
/* 02B70 80002FD0 3718FF01 */  ori     $t8, $t8, 0xFF01           ## $t8 = 003FFF01
/* 02B74 80002FD4 AFB80020 */  sw      $t8, 0x0020($sp)
/* 02B78 80002FD8 3408FF03 */  ori     $t0, $zero, 0xFF03         ## $t0 = 0000FF03
/* 02B7C 80002FDC AD280118 */  sw      $t0, 0x0118($t1)           ## 00000118
/* 02B80 80002FE0 8FAA0020 */  lw      $t2, 0x0020($sp)
/* 02B84 80002FE4 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 02B88 80002FE8 3C01003F */  lui     $at, 0x003F                ## $at = 003F0000
/* 02B8C 80002FEC 01415824 */  and     $t3, $t2, $at
/* 02B90 80002FF0 000BCC02 */  srl     $t9, $t3, 16
/* 02B94 80002FF4 AD990128 */  sw      $t9, 0x0128($t4)           ## 80002E48
/* 02B98 80002FF8 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 02B9C 80002FFC 3C0E0100 */  lui     $t6, 0x0100                ## $t6 = 01000000
/* 02BA0 80003000 35CE0800 */  ori     $t6, $t6, 0x0800           ## $t6 = 01000800
/* 02BA4 80003004 ADEE012C */  sw      $t6, 0x012C($t7)           ## 80002E4C
/* 02BA8 80003008 8FAD0028 */  lw      $t5, 0x0028($sp)
/* 02BAC 8000300C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 02BB0 80003010 ADA00018 */  sw      $zero, 0x0018($t5)         ## 00000018
/* 02BB4 80003014 8FA80028 */  lw      $t0, 0x0028($sp)
/* 02BB8 80003018 A5180010 */  sh      $t8, 0x0010($t0)           ## 0000FF13
/* 02BBC 8000301C 8FA90028 */  lw      $t1, 0x0028($sp)
/* 02BC0 80003020 0C00144C */  jal     __osDisableInt
/* 02BC4 80003024 A5200012 */  sh      $zero, 0x0012($t1)         ## 00000012
/* 02BC8 80003028 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 02BCC 8000302C 8D4A633C */  lw      $t2, 0x633C($t2)           ## 8000633C
/* 02BD0 80003030 8FAB0028 */  lw      $t3, 0x0028($sp)
/* 02BD4 80003034 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02BD8 80003038 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02BDC 8000303C AD6A000C */  sw      $t2, 0x000C($t3)           ## 0000000C
/* 02BE0 80003040 8FB90028 */  lw      $t9, 0x0028($sp)
/* 02BE4 80003044 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BE8 80003048 0C001468 */  jal     __osRestoreInt
/* 02BEC 8000304C AC39633C */  sw      $t9, 0x633C($at)           ## 8000633C
/* 02BF0 80003050 8FBF001C */  lw      $ra, 0x001C($sp)
/* 02BF4 80003054 8FB00018 */  lw      $s0, 0x0018($sp)
/* 02BF8 80003058 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02BFC 8000305C 03E00008 */  jr      $ra
/* 02C00 80003060 00000000 */  nop
/* 02C04 80003064 00000000 */  nop
/* 02C08 80003068 00000000 */  nop
/* 02C0C 8000306C 00000000 */  nop
