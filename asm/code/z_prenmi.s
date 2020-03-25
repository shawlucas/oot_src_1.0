.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8007CC30
/* 6BB90 8007CC30 AC800098 */  sw      $zero, 0x0098($a0)         ## 00000098
/* 6BB94 8007CC34 AC80000C */  sw      $zero, 0x000C($a0)         ## 0000000C
/* 6BB98 8007CC38 AC800010 */  sw      $zero, 0x0010($a0)         ## 00000010
/* 6BB9C 8007CC3C 03E00008 */  jr      $ra
/* 6BBA0 8007CC40 00000000 */  nop


glabel PreNMI_Update
/* 6BBA4 8007CC44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6BBA8 8007CC48 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6BBAC 8007CC4C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 6BBB0 8007CC50 8CA200A4 */  lw      $v0, 0x00A4($a1)           ## 000000A4
/* 6BBB4 8007CC54 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 6BBB8 8007CC58 1440000A */  bne     $v0, $zero, .L8007CC84
/* 6BBBC 8007CC5C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 6BBC0 8007CC60 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 6BBC4 8007CC64 0C03573C */  jal     func_800D5CF0
/* 6BBC8 8007CC68 AFA50018 */  sw      $a1, 0x0018($sp)
/* 6BBCC 8007CC6C 0C000EF8 */  jal     osViBlack
/* 6BBD0 8007CC70 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 6BBD4 8007CC74 0C01F30C */  jal     func_8007CC30
/* 6BBD8 8007CC78 8FA40018 */  lw      $a0, 0x0018($sp)
/* 6BBDC 8007CC7C 10000003 */  beq     $zero, $zero, .L8007CC8C
/* 6BBE0 8007CC80 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8007CC84:
/* 6BBE4 8007CC84 ACAE00A4 */  sw      $t6, 0x00A4($a1)           ## 000000A4
/* 6BBE8 8007CC88 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8007CC8C:
/* 6BBEC 8007CC8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6BBF0 8007CC90 03E00008 */  jr      $ra
/* 6BBF4 8007CC94 00000000 */  nop


glabel PreNMI_Draw
/* 6BBF8 8007CC98 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6BBFC 8007CC9C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6BC00 8007CCA0 AFA40020 */  sw      $a0, 0x0020($sp)
/* 6BC04 8007CCA4 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 6BC08 8007CCA8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 6BC0C 8007CCAC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 6BC10 8007CCB0 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 6BC14 8007CCB4 8C8202C0 */  lw      $v0, 0x02C0($a0)           ## 000002C0
/* 6BC18 8007CCB8 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 6BC1C 8007CCBC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 6BC20 8007CCC0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 6BC24 8007CCC4 AC8F02C0 */  sw      $t7, 0x02C0($a0)           ## 000002C0
/* 6BC28 8007CCC8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 6BC2C 8007CCCC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 6BC30 8007CCD0 0C01FB97 */  jal     func_8007EE5C
/* 6BC34 8007CCD4 AFA4001C */  sw      $a0, 0x001C($sp)
/* 6BC38 8007CCD8 0C01F90B */  jal     func_8007E42C
/* 6BC3C 8007CCDC 8FA4001C */  lw      $a0, 0x001C($sp)
/* 6BC40 8007CCE0 8FA4001C */  lw      $a0, 0x001C($sp)
/* 6BC44 8007CCE4 8FA60020 */  lw      $a2, 0x0020($sp)
/* 6BC48 8007CCE8 8C8202C0 */  lw      $v0, 0x02C0($a0)           ## 000002C0
/* 6BC4C 8007CCEC 3C08F700 */  lui     $t0, 0xF700                ## $t0 = F7000000
/* 6BC50 8007CCF0 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 6BC54 8007CCF4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 6BC58 8007CCF8 AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6BC5C 8007CCFC AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 6BC60 8007CD00 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 6BC64 8007CD04 8C8202C0 */  lw      $v0, 0x02C0($a0)           ## 000002C0
/* 6BC68 8007CD08 3C01F64F */  lui     $at, 0xF64F                ## $at = F64F0000
/* 6BC6C 8007CD0C 3421C000 */  ori     $at, $at, 0xC000           ## $at = F64FC000
/* 6BC70 8007CD10 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 6BC74 8007CD14 AC8A02C0 */  sw      $t2, 0x02C0($a0)           ## 000002C0
/* 6BC78 8007CD18 8CCB00A4 */  lw      $t3, 0x00A4($a2)           ## 000000A4
/* 6BC7C 8007CD1C 256C0064 */  addiu   $t4, $t3, 0x0064           ## $t4 = 00000064
/* 6BC80 8007CD20 318D03FF */  andi    $t5, $t4, 0x03FF           ## $t5 = 00000064
/* 6BC84 8007CD24 000D7080 */  sll     $t6, $t5,  2
/* 6BC88 8007CD28 01C17825 */  or      $t7, $t6, $at              ## $t7 = F64FC000
/* 6BC8C 8007CD2C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 6BC90 8007CD30 8CD800A4 */  lw      $t8, 0x00A4($a2)           ## 000000A4
/* 6BC94 8007CD34 27190064 */  addiu   $t9, $t8, 0x0064           ## $t9 = 00000064
/* 6BC98 8007CD38 332803FF */  andi    $t0, $t9, 0x03FF           ## $t0 = 00000064
/* 6BC9C 8007CD3C 00084880 */  sll     $t1, $t0,  2
/* 6BCA0 8007CD40 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 6BCA4 8007CD44 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6BCA8 8007CD48 03E00008 */  jr      $ra
/* 6BCAC 8007CD4C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel PreNMI_Main
/* 6BCB0 8007CD50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6BCB4 8007CD54 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6BCB8 8007CD58 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6BCBC 8007CD5C 0C01F311 */  jal     PreNMI_Update
/* 6BCC0 8007CD60 8FA40018 */  lw      $a0, 0x0018($sp)
/* 6BCC4 8007CD64 0C01F326 */  jal     PreNMI_Draw
/* 6BCC8 8007CD68 8FA40018 */  lw      $a0, 0x0018($sp)
/* 6BCCC 8007CD6C 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 6BCD0 8007CD70 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 6BCD4 8007CD74 ADEE00A0 */  sw      $t6, 0x00A0($t7)           ## 000000A0
/* 6BCD8 8007CD78 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6BCDC 8007CD7C 03E00008 */  jr      $ra
/* 6BCE0 8007CD80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel PreNMI_Destroy
/* 6BCE4 8007CD84 AFA40000 */  sw      $a0, 0x0000($sp)
/* 6BCE8 8007CD88 03E00008 */  jr      $ra
/* 6BCEC 8007CD8C 00000000 */  nop


glabel PreNMI_Init
/* 6BCF0 8007CD90 3C0E8008 */  lui     $t6, 0x8008                ## $t6 = 80080000
/* 6BCF4 8007CD94 3C0F8008 */  lui     $t7, 0x8008                ## $t7 = 80080000
/* 6BCF8 8007CD98 25CECD50 */  addiu   $t6, $t6, 0xCD50           ## $t6 = 8007CD50
/* 6BCFC 8007CD9C 25EFCD84 */  addiu   $t7, $t7, 0xCD84           ## $t7 = 8007CD84
/* 6BD00 8007CDA0 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 6BD04 8007CDA4 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 6BD08 8007CDA8 AC8E0004 */  sw      $t6, 0x0004($a0)           ## 00000004
/* 6BD0C 8007CDAC AC8F0008 */  sw      $t7, 0x0008($a0)           ## 00000008
/* 6BD10 8007CDB0 AC9800A4 */  sw      $t8, 0x00A4($a0)           ## 000000A4
/* 6BD14 8007CDB4 AC9900A8 */  sw      $t9, 0x00A8($a0)           ## 000000A8
/* 6BD18 8007CDB8 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 6BD1C 8007CDBC 8D29BA00 */  lw      $t1, -0x4600($t1)          ## 8011BA00
/* 6BD20 8007CDC0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 6BD24 8007CDC4 A5280110 */  sh      $t0, 0x0110($t1)           ## 80120110
/* 6BD28 8007CDC8 03E00008 */  jr      $ra
/* 6BD2C 8007CDCC 00000000 */  nop