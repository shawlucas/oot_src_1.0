.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel SaveContext_Init
/* 40A00 80051AA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 40A04 80051AA4 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 40A08 80051AA8 2484A5D0 */  addiu   $a0, $a0, 0xA5D0           ## $a0 = 8011A5D0
/* 40A0C 80051AAC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 40A10 80051AB0 0C000BA0 */  jal     bzero              ## bzero
/* 40A14 80051AB4 24051428 */  addiu   $a1, $zero, 0x1428         ## $a1 = 00001428
/* 40A18 80051AB8 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 40A1C 80051ABC AC20B9F8 */  sw      $zero, -0x4608($at)        ## 8011B9F8
/* 40A20 80051AC0 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 40A24 80051AC4 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 40A28 80051AC8 2484A5D0 */  addiu   $a0, $a0, 0xA5D0           ## $a0 = 8011A5D0
/* 40A2C 80051ACC AC20B9FC */  sw      $zero, -0x4604($at)        ## 8011B9FC
/* 40A30 80051AD0 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 40A34 80051AD4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 40A38 80051AD8 340EFFEF */  ori     $t6, $zero, 0xFFEF         ## $t6 = 0000FFEF
/* 40A3C 80051ADC 340FFFFF */  ori     $t7, $zero, 0xFFFF         ## $t7 = 0000FFFF
/* 40A40 80051AE0 24180032 */  addiu   $t8, $zero, 0x0032         ## $t8 = 00000032
/* 40A44 80051AE4 A08213E0 */  sb      $v0, 0x13E0($a0)           ## 8011B9B0
/* 40A48 80051AE8 A08213E1 */  sb      $v0, 0x13E1($a0)           ## 8011B9B1
/* 40A4C 80051AEC A480140E */  sh      $zero, 0x140E($a0)         ## 8011B9DE
/* 40A50 80051AF0 A48E1412 */  sh      $t6, 0x1412($a0)           ## 8011B9E2
/* 40A54 80051AF4 A0801414 */  sb      $zero, 0x1414($a0)         ## 8011B9E4
/* 40A58 80051AF8 A0801415 */  sb      $zero, 0x1415($a0)         ## 8011B9E5
/* 40A5C 80051AFC A48F1416 */  sh      $t7, 0x1416($a0)           ## 8011B9E6
/* 40A60 80051B00 A480141A */  sh      $zero, 0x141A($a0)         ## 8011B9EA
/* 40A64 80051B04 A085141C */  sb      $a1, 0x141C($a0)           ## 8011B9EC
/* 40A68 80051B08 A082141D */  sb      $v0, 0x141D($a0)           ## 8011B9ED
/* 40A6C 80051B0C A49813EE */  sh      $t8, 0x13EE($a0)           ## 8011B9BE
/* 40A70 80051B10 3C038000 */  lui     $v1, 0x8000                ## $v1 = 80000000
/* 40A74 80051B14 8C636280 */  lw      $v1, 0x6280($v1)           ## 80006280
/* 40A78 80051B18 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 40A7C 80051B1C 54610003 */  bnel    $v1, $at, .L80051B2C
/* 40A80 80051B20 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 40A84 80051B24 A0801409 */  sb      $zero, 0x1409($a0)         ## 8011B9D9
/* 40A88 80051B28 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80051B2C:
/* 40A8C 80051B2C 54610003 */  bnel    $v1, $at, .L80051B3C
/* 40A90 80051B30 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 40A94 80051B34 A0851409 */  sb      $a1, 0x1409($a0)           ## 8011B9D9
/* 40A98 80051B38 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80051B3C:
/* 40A9C 80051B3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 40AA0 80051B40 03E00008 */  jr      $ra
/* 40AA4 80051B44 00000000 */  nop
/* 40AA8 80051B48 00000000 */  nop
/* 40AAC 80051B4C 00000000 */  nop
