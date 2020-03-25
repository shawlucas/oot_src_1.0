# "Game Memory Allocation" part of the code file
#
# Handles allocating and freeing memory for the game state.
#
# Starts at VRAM: 80066C10 / VROM: ADCB70
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_80066C10
/* 55B70 80066C10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55B74 80066C14 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55B78 80066C18 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 55B7C 80066C1C 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55B80 80066C20 0C033818 */  jal     func_800CE060              ## osMalloc?
/* 55B84 80066C24 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55B88 80066C28 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55B8C 80066C2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55B90 80066C30 03E00008 */  jr      $ra
/* 55B94 80066C34 00000000 */  nop


glabel func_80066C38
/* 55B98 80066C38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55B9C 80066C3C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55BA0 80066C40 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 55BA4 80066C44 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55BA8 80066C48 0C03385F */  jal     func_800CE17C
/* 55BAC 80066C4C 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55BB0 80066C50 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55BB4 80066C54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55BB8 80066C58 03E00008 */  jr      $ra
/* 55BBC 80066C5C 00000000 */  nop


glabel func_80066C60
/* 55BC0 80066C60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55BC4 80066C64 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 55BC8 80066C68 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 55BCC 80066C6C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55BD0 80066C70 AFA40018 */  sw      $a0, 0x0018($sp)
/* 55BD4 80066C74 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55BD8 80066C78 0C033945 */  jal     func_800CE514
/* 55BDC 80066C7C 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55BE0 80066C80 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55BE4 80066C84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55BE8 80066C88 03E00008 */  jr      $ra
/* 55BEC 80066C8C 00000000 */  nop


glabel func_80066C90
/* 55BF0 80066C90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55BF4 80066C94 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55BF8 80066C98 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 55BFC 80066C9C 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55C00 80066CA0 0C0338AD */  jal     func_800CE2B4              ## osFree?
/* 55C04 80066CA4 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55C08 80066CA8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55C0C 80066CAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55C10 80066CB0 03E00008 */  jr      $ra
/* 55C14 80066CB4 00000000 */  nop


glabel func_80066CB8
/* 55C18 80066CB8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 55C1C 80066CBC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55C20 80066CC0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 55C24 80066CC4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 55C28 80066CC8 00C70019 */  multu   $a2, $a3
/* 55C2C 80066CCC 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55C30 80066CD0 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55C34 80066CD4 00002812 */  mflo    $a1
/* 55C38 80066CD8 AFA5001C */  sw      $a1, 0x001C($sp)
/* 55C3C 80066CDC 0C033818 */  jal     func_800CE060              ## osMalloc?
/* 55C40 80066CE0 00000000 */  nop
/* 55C44 80066CE4 8FA5001C */  lw      $a1, 0x001C($sp)
/* 55C48 80066CE8 10400004 */  beq     $v0, $zero, .L80066CFC
/* 55C4C 80066CEC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 55C50 80066CF0 0C000BA0 */  jal     bzero              ## bzero
/* 55C54 80066CF4 AFA20024 */  sw      $v0, 0x0024($sp)
/* 55C58 80066CF8 8FA40024 */  lw      $a0, 0x0024($sp)
.L80066CFC:
/* 55C5C 80066CFC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 55C60 80066D00 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55C64 80066D04 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 55C68 80066D08 03E00008 */  jr      $ra
/* 55C6C 80066D0C 00000000 */  nop


glabel func_80066D10
/* 55C70 80066D10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55C74 80066D14 AFA5001C */  sw      $a1, 0x001C($sp)
/* 55C78 80066D18 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000000
/* 55C7C 80066D1C 8FA6001C */  lw      $a2, 0x001C($sp)
/* 55C80 80066D20 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 55C84 80066D24 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55C88 80066D28 AFA40018 */  sw      $a0, 0x0018($sp)
/* 55C8C 80066D2C 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55C90 80066D30 0C0339A2 */  jal     func_800CE688
/* 55C94 80066D34 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55C98 80066D38 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55C9C 80066D3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55CA0 80066D40 03E00008 */  jr      $ra
/* 55CA4 80066D44 00000000 */  nop


glabel func_80066D48
/* 55CA8 80066D48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55CAC 80066D4C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55CB0 80066D50 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55CB4 80066D54 0C0339BF */  jal     func_800CE6FC
/* 55CB8 80066D58 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55CBC 80066D5C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55CC0 80066D60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55CC4 80066D64 03E00008 */  jr      $ra
/* 55CC8 80066D68 00000000 */  nop


glabel func_80066D6C
/* 55CCC 80066D6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55CD0 80066D70 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 55CD4 80066D74 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 55CD8 80066D78 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55CDC 80066D7C AFA40018 */  sw      $a0, 0x0018($sp)
/* 55CE0 80066D80 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55CE4 80066D84 0C033764 */  jal     func_800CDD90
/* 55CE8 80066D88 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55CEC 80066D8C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55CF0 80066D90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55CF4 80066D94 03E00008 */  jr      $ra
/* 55CF8 80066D98 00000000 */  nop


glabel func_80066D9C
/* 55CFC 80066D9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55D00 80066DA0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55D04 80066DA4 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55D08 80066DA8 0C033776 */  jal     func_800CDDD8
/* 55D0C 80066DAC 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55D10 80066DB0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55D14 80066DB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55D18 80066DB8 03E00008 */  jr      $ra
/* 55D1C 80066DBC 00000000 */  nop


glabel func_80066DC0
/* 55D20 80066DC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 55D24 80066DC4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 55D28 80066DC8 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 55D2C 80066DCC 0C03377E */  jal     func_800CDDF8
/* 55D30 80066DD0 2484BEF0 */  addiu   $a0, $a0, 0xBEF0           ## $a0 = 8011BEF0
/* 55D34 80066DD4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 55D38 80066DD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 55D3C 80066DDC 03E00008 */  jr      $ra
/* 55D40 80066DE0 00000000 */  nop
/* 55D44 80066DE4 00000000 */  nop
/* 55D48 80066DE8 00000000 */  nop
/* 55D4C 80066DEC 00000000 */  nop
