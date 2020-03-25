.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8005B860
/* 4A7C0 8005B860 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 4A7C4 8005B864 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 4A7C8 8005B868 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 4A7CC 8005B86C 00811821 */  addu    $v1, $a0, $at
/* 4A7D0 8005B870 946E0934 */  lhu     $t6, 0x0934($v1)           ## 00000934
/* 4A7D4 8005B874 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 4A7D8 8005B878 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 4A7DC 8005B87C 15C0008F */  bne     $t6, $zero, .L8005BABC
/* 4A7E0 8005B880 00813021 */  addu    $a2, $a0, $at
/* 4A7E4 8005B884 94CF01D6 */  lhu     $t7, 0x01D6($a2)           ## 000001D6
/* 4A7E8 8005B888 55E0008D */  bnel    $t7, $zero, .L8005BAC0
/* 4A7EC 8005B88C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A7F0 8005B890 94780A20 */  lhu     $t8, 0x0A20($v1)           ## 00000A20
/* 4A7F4 8005B894 5700008A */  bnel    $t8, $zero, .L8005BAC0
/* 4A7F8 8005B898 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A7FC 8005B89C 80791E15 */  lb      $t9, 0x1E15($v1)           ## 00001E15
/* 4A800 8005B8A0 57200087 */  bnel    $t9, $zero, .L8005BAC0
/* 4A804 8005B8A4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A808 8005B8A8 9068241B */  lbu     $t0, 0x241B($v1)           ## 0000241B
/* 4A80C 8005B8AC 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 4A810 8005B8B0 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 4A814 8005B8B4 55000082 */  bnel    $t0, $zero, .L8005BAC0
/* 4A818 8005B8B8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A81C 8005B8BC 8CE90008 */  lw      $t1, 0x0008($a3)           ## 8011A5D8
/* 4A820 8005B8C0 3402FFF0 */  ori     $v0, $zero, 0xFFF0         ## $v0 = 0000FFF0
/* 4A824 8005B8C4 0122082A */  slt     $at, $t1, $v0
/* 4A828 8005B8C8 5020007D */  beql    $at, $zero, .L8005BAC0
/* 4A82C 8005B8CC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A830 8005B8D0 94EA1412 */  lhu     $t2, 0x1412($a3)           ## 8011B9E2
/* 4A834 8005B8D4 0142082A */  slt     $at, $t2, $v0
/* 4A838 8005B8D8 50200079 */  beql    $at, $zero, .L8005BAC0
/* 4A83C 8005B8DC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A840 8005B8E0 AFA3001C */  sw      $v1, 0x001C($sp)
/* 4A844 8005B8E4 AFA40030 */  sw      $a0, 0x0030($sp)
/* 4A848 8005B8E8 0C0272C2 */  jal     func_8009CB08
/* 4A84C 8005B8EC AFA60020 */  sw      $a2, 0x0020($sp)
/* 4A850 8005B8F0 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 4A854 8005B8F4 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 4A858 8005B8F8 8FA3001C */  lw      $v1, 0x001C($sp)
/* 4A85C 8005B8FC 8FA40030 */  lw      $a0, 0x0030($sp)
/* 4A860 8005B900 1440006E */  bne     $v0, $zero, .L8005BABC
/* 4A864 8005B904 8FA60020 */  lw      $a2, 0x0020($sp)
/* 4A868 8005B908 806B1E5C */  lb      $t3, 0x1E5C($v1)           ## 00001E5C
/* 4A86C 8005B90C 29610002 */  slti    $at, $t3, 0x0002
/* 4A870 8005B910 5020006B */  beql    $at, $zero, .L8005BAC0
/* 4A874 8005B914 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A878 8005B918 84E213F0 */  lh      $v0, 0x13F0($a3)           ## 8011B9C0
/* 4A87C 8005B91C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 4A880 8005B920 10410066 */  beq     $v0, $at, .L8005BABC
/* 4A884 8005B924 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 4A888 8005B928 50410065 */  beql    $v0, $at, .L8005BAC0
/* 4A88C 8005B92C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4A890 8005B930 848C00A4 */  lh      $t4, 0x00A4($a0)           ## 000000A4
/* 4A894 8005B934 2401004B */  addiu   $at, $zero, 0x004B         ## $at = 0000004B
/* 4A898 8005B938 24050038 */  addiu   $a1, $zero, 0x0038         ## $a1 = 00000038
/* 4A89C 8005B93C 5581000A */  bnel    $t4, $at, .L8005B968
/* 4A8A0 8005B940 24820014 */  addiu   $v0, $a0, 0x0014           ## $v0 = 00000014
/* 4A8A4 8005B944 AFA40030 */  sw      $a0, 0x0030($sp)
/* 4A8A8 8005B948 0C008127 */  jal     Flags_GetSwitch
/* 4A8AC 8005B94C AFA60020 */  sw      $a2, 0x0020($sp)
/* 4A8B0 8005B950 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 4A8B4 8005B954 24E7A5D0 */  addiu   $a3, $a3, 0xA5D0           ## $a3 = 8011A5D0
/* 4A8B8 8005B958 8FA40030 */  lw      $a0, 0x0030($sp)
/* 4A8BC 8005B95C 14400057 */  bne     $v0, $zero, .L8005BABC
/* 4A8C0 8005B960 8FA60020 */  lw      $a2, 0x0020($sp)
/* 4A8C4 8005B964 24820014 */  addiu   $v0, $a0, 0x0014           ## $v0 = 00000014
.L8005B968:
/* 4A8C8 8005B968 944D0000 */  lhu     $t5, 0x0000($v0)           ## 00000014
/* 4A8CC 8005B96C 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 4A8D0 8005B970 31AE0020 */  andi    $t6, $t5, 0x0020           ## $t6 = 00000000
/* 4A8D4 8005B974 55C10007 */  bnel    $t6, $at, .L8005B994
/* 4A8D8 8005B978 9459000C */  lhu     $t9, 0x000C($v0)           ## 00000020
/* 4A8DC 8005B97C 944F000C */  lhu     $t7, 0x000C($v0)           ## 00000020
/* 4A8E0 8005B980 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 4A8E4 8005B984 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 4A8E8 8005B988 5301003B */  beql    $t8, $at, .L8005BA78
/* 4A8EC 8005B98C 94CE01D4 */  lhu     $t6, 0x01D4($a2)           ## 000001D4
/* 4A8F0 8005B990 9459000C */  lhu     $t9, 0x000C($v0)           ## 00000020
.L8005B994:
/* 4A8F4 8005B994 24011000 */  addiu   $at, $zero, 0x1000         ## $at = 00001000
/* 4A8F8 8005B998 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 4A8FC 8005B99C 33281000 */  andi    $t0, $t9, 0x1000           ## $t0 = 00000000
/* 4A900 8005B9A0 15010034 */  bne     $t0, $at, .L8005BA74
/* 4A904 8005B9A4 2484BA00 */  addiu   $a0, $a0, 0xBA00           ## $a0 = 8011BA00
/* 4A908 8005B9A8 94E913EA */  lhu     $t1, 0x13EA($a3)           ## 8011B9BA
/* 4A90C 8005B9AC 8C8B0000 */  lw      $t3, 0x0000($a0)           ## 8011BA00
/* 4A910 8005B9B0 240AFF51 */  addiu   $t2, $zero, 0xFF51         ## $t2 = FFFFFF51
/* 4A914 8005B9B4 A4E913EE */  sh      $t1, 0x13EE($a3)           ## 8011B9BE
/* 4A918 8005B9B8 A56A0DB4 */  sh      $t2, 0x0DB4($t3)           ## 00000DB4
/* 4A91C 8005B9BC 8C8D0000 */  lw      $t5, 0x0000($a0)           ## 8011BA00
/* 4A920 8005B9C0 240C009B */  addiu   $t4, $zero, 0x009B         ## $t4 = 0000009B
/* 4A924 8005B9C4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 4A928 8005B9C8 A5AC0DB6 */  sh      $t4, 0x0DB6($t5)           ## 00000DB6
/* 4A92C 8005B9CC A4C001EA */  sh      $zero, 0x01EA($a2)         ## 000001EA
/* 4A930 8005B9D0 A4C501E4 */  sh      $a1, 0x01E4($a2)           ## 000001E4
/* 4A934 8005B9D4 8C8E0000 */  lw      $t6, 0x0000($a0)           ## 8011BA00
/* 4A938 8005B9D8 85CF07F4 */  lh      $t7, 0x07F4($t6)           ## 000007F4
/* 4A93C 8005B9DC 55E00012 */  bnel    $t7, $zero, .L8005BA28
/* 4A940 8005B9E0 94C201E8 */  lhu     $v0, 0x01E8($a2)           ## 000001E8
/* 4A944 8005B9E4 94C201E8 */  lhu     $v0, 0x01E8($a2)           ## 000001E8
/* 4A948 8005B9E8 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 4A94C 8005B9EC 3C19800F */  lui     $t9, 0x800F                ## $t9 = 800F0000
/* 4A950 8005B9F0 00021880 */  sll     $v1, $v0,  2
/* 4A954 8005B9F4 00230821 */  addu    $at, $at, $v1
/* 4A958 8005B9F8 C42415B8 */  lwc1    $f4, 0x15B8($at)           ## 800F15B8
/* 4A95C 8005B9FC 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 4A960 8005BA00 00230821 */  addu    $at, $at, $v1
/* 4A964 8005BA04 E4C401D8 */  swc1    $f4, 0x01D8($a2)           ## 000001D8
/* 4A968 8005BA08 C42615C8 */  lwc1    $f6, 0x15C8($at)           ## 800F15C8
/* 4A96C 8005BA0C 0002C040 */  sll     $t8, $v0,  1
/* 4A970 8005BA10 0338C821 */  addu    $t9, $t9, $t8
/* 4A974 8005BA14 E4C601E0 */  swc1    $f6, 0x01E0($a2)           ## 000001E0
/* 4A978 8005BA18 873915B0 */  lh      $t9, 0x15B0($t9)           ## 800F15B0
/* 4A97C 8005BA1C 10000010 */  beq     $zero, $zero, .L8005BA60
/* 4A980 8005BA20 A4D901E8 */  sh      $t9, 0x01E8($a2)           ## 000001E8
/* 4A984 8005BA24 94C201E8 */  lhu     $v0, 0x01E8($a2)           ## 000001E8
.L8005BA28:
/* 4A988 8005BA28 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 4A98C 8005BA2C 3C09800F */  lui     $t1, 0x800F                ## $t1 = 800F0000
/* 4A990 8005BA30 00021880 */  sll     $v1, $v0,  2
/* 4A994 8005BA34 00230821 */  addu    $at, $at, $v1
/* 4A998 8005BA38 C42815E0 */  lwc1    $f8, 0x15E0($at)           ## 800F15E0
/* 4A99C 8005BA3C 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 4A9A0 8005BA40 00230821 */  addu    $at, $at, $v1
/* 4A9A4 8005BA44 E4C801D8 */  swc1    $f8, 0x01D8($a2)           ## 000001D8
/* 4A9A8 8005BA48 C42A15F0 */  lwc1    $f10, 0x15F0($at)          ## 800F15F0
/* 4A9AC 8005BA4C 00024040 */  sll     $t0, $v0,  1
/* 4A9B0 8005BA50 01284821 */  addu    $t1, $t1, $t0
/* 4A9B4 8005BA54 E4CA01E0 */  swc1    $f10, 0x01E0($a2)          ## 000001E0
/* 4A9B8 8005BA58 852915D8 */  lh      $t1, 0x15D8($t1)           ## 800F15D8
/* 4A9BC 8005BA5C A4C901E8 */  sh      $t1, 0x01E8($a2)           ## 000001E8
.L8005BA60:
/* 4A9C0 8005BA60 94CA01E8 */  lhu     $t2, 0x01E8($a2)           ## 000001E8
/* 4A9C4 8005BA64 A4C501D4 */  sh      $a1, 0x01D4($a2)           ## 000001D4
/* 4A9C8 8005BA68 000A6040 */  sll     $t4, $t2,  1
/* 4A9CC 8005BA6C 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 0000009C
/* 4A9D0 8005BA70 A4CD01E6 */  sh      $t5, 0x01E6($a2)           ## 000001E6
.L8005BA74:
/* 4A9D4 8005BA74 94CE01D4 */  lhu     $t6, 0x01D4($a2)           ## 000001D4
.L8005BA78:
/* 4A9D8 8005BA78 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 4A9DC 8005BA7C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 4A9E0 8005BA80 15C1000E */  bne     $t6, $at, .L8005BABC
/* 4A9E4 8005BA84 2484BA00 */  addiu   $a0, $a0, 0xBA00           ## $a0 = 8011BA00
/* 4A9E8 8005BA88 8C980000 */  lw      $t8, 0x0000($a0)           ## 8011BA00
/* 4A9EC 8005BA8C 240FE7A0 */  addiu   $t7, $zero, 0xE7A0         ## $t7 = FFFFE7A0
/* 4A9F0 8005BA90 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 4A9F4 8005BA94 A70F0D98 */  sh      $t7, 0x0D98($t8)           ## 00000D98
/* 4A9F8 8005BA98 8C880000 */  lw      $t0, 0x0000($a0)           ## 8011BA00
/* 4A9FC 8005BA9C 0C02658C */  jal     func_80099630
/* 4AA00 8005BAA0 A5190110 */  sh      $t9, 0x0110($t0)           ## 00000110
/* 4AA04 8005BAA4 10400003 */  beq     $v0, $zero, .L8005BAB4
/* 4AA08 8005BAA8 00000000 */  nop
/* 4AA0C 8005BAAC 0C026588 */  jal     func_80099620
/* 4AA10 8005BAB0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
.L8005BAB4:
/* 4AA14 8005BAB4 0C031C80 */  jal     func_800C7200
/* 4AA18 8005BAB8 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
.L8005BABC:
/* 4AA1C 8005BABC 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8005BAC0:
/* 4AA20 8005BAC0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 4AA24 8005BAC4 03E00008 */  jr      $ra
/* 4AA28 8005BAC8 00000000 */  nop


glabel func_8005BACC
/* 4AA2C 8005BACC 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 4AA30 8005BAD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 4AA34 8005BAD4 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 4AA38 8005BAD8 44810000 */  mtc1    $at, $f0                   ## $f0 = 160.00
/* 4AA3C 8005BADC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 4AA40 8005BAE0 24E7BA00 */  addiu   $a3, $a3, 0xBA00           ## $a3 = 8011BA00
/* 4AA44 8005BAE4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 4AA48 8005BAE8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 4AA4C 8005BAEC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 4AA50 8005BAF0 240903E7 */  addiu   $t1, $zero, 0x03E7         ## $t1 = 000003E7
/* 4AA54 8005BAF4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 4AA58 8005BAF8 00C11021 */  addu    $v0, $a2, $at
/* 4AA5C 8005BAFC 3C014280 */  lui     $at, 0x4280                ## $at = 42800000
/* 4AA60 8005BB00 44812000 */  mtc1    $at, $f4                   ## $f4 = 64.00
/* 4AA64 8005BB04 3C01446A */  lui     $at, 0x446A                ## $at = 446A0000
/* 4AA68 8005BB08 44813000 */  mtc1    $at, $f6                   ## $f6 = 936.00
/* 4AA6C 8005BB0C 3C01C39D */  lui     $at, 0xC39D                ## $at = C39D0000
/* 4AA70 8005BB10 44814000 */  mtc1    $at, $f8                   ## $f8 = -314.00
/* 4AA74 8005BB14 A4400934 */  sh      $zero, 0x0934($v0)         ## 00000934
/* 4AA78 8005BB18 A4400936 */  sh      $zero, 0x0936($v0)         ## 00000936
/* 4AA7C 8005BB1C E442093C */  swc1    $f2, 0x093C($v0)           ## 0000093C
/* 4AA80 8005BB20 E4420938 */  swc1    $f2, 0x0938($v0)           ## 00000938
/* 4AA84 8005BB24 E4400960 */  swc1    $f0, 0x0960($v0)           ## 00000960
/* 4AA88 8005BB28 E440095C */  swc1    $f0, 0x095C($v0)           ## 0000095C
/* 4AA8C 8005BB2C E4400958 */  swc1    $f0, 0x0958($v0)           ## 00000958
/* 4AA90 8005BB30 E4400954 */  swc1    $f0, 0x0954($v0)           ## 00000954
/* 4AA94 8005BB34 A4400968 */  sh      $zero, 0x0968($v0)         ## 00000968
/* 4AA98 8005BB38 A4400948 */  sh      $zero, 0x0948($v0)         ## 00000948
/* 4AA9C 8005BB3C A4400946 */  sh      $zero, 0x0946($v0)         ## 00000946
/* 4AAA0 8005BB40 A4400944 */  sh      $zero, 0x0944($v0)         ## 00000944
/* 4AAA4 8005BB44 A440094A */  sh      $zero, 0x094A($v0)         ## 0000094A
/* 4AAA8 8005BB48 A4400978 */  sh      $zero, 0x0978($v0)         ## 00000978
/* 4AAAC 8005BB4C E4440940 */  swc1    $f4, 0x0940($v0)           ## 00000940
/* 4AAB0 8005BB50 E4460950 */  swc1    $f6, 0x0950($v0)           ## 00000950
/* 4AAB4 8005BB54 E4480964 */  swc1    $f8, 0x0964($v0)           ## 00000964
/* 4AAB8 8005BB58 8CEE0000 */  lw      $t6, 0x0000($a3)           ## 8011BA00
/* 4AABC 8005BB5C 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 4AAC0 8005BB60 240D003B */  addiu   $t5, $zero, 0x003B         ## $t5 = 0000003B
/* 4AAC4 8005BB64 85CF0F50 */  lh      $t7, 0x0F50($t6)           ## 00000F50
/* 4AAC8 8005BB68 A440097C */  sh      $zero, 0x097C($v0)         ## 0000097C
/* 4AACC 8005BB6C A448097E */  sh      $t0, 0x097E($v0)           ## 0000097E
/* 4AAD0 8005BB70 25F80003 */  addiu   $t8, $t7, 0x0003           ## $t8 = 00000003
/* 4AAD4 8005BB74 A458097A */  sh      $t8, 0x097A($v0)           ## 0000097A
/* 4AAD8 8005BB78 A4590980 */  sh      $t9, 0x0980($v0)           ## 00000980
/* 4AADC 8005BB7C A4400982 */  sh      $zero, 0x0982($v0)         ## 00000982
/* 4AAE0 8005BB80 A440098C */  sh      $zero, 0x098C($v0)         ## 0000098C
/* 4AAE4 8005BB84 A4400984 */  sh      $zero, 0x0984($v0)         ## 00000984
/* 4AAE8 8005BB88 A440098E */  sh      $zero, 0x098E($v0)         ## 0000098E
/* 4AAEC 8005BB8C A4400986 */  sh      $zero, 0x0986($v0)         ## 00000986
/* 4AAF0 8005BB90 A4400990 */  sh      $zero, 0x0990($v0)         ## 00000990
/* 4AAF4 8005BB94 A4480988 */  sh      $t0, 0x0988($v0)           ## 00000988
/* 4AAF8 8005BB98 A4400992 */  sh      $zero, 0x0992($v0)         ## 00000992
/* 4AAFC 8005BB9C A449099E */  sh      $t1, 0x099E($v0)           ## 0000099E
/* 4AB00 8005BBA0 8CEA0000 */  lw      $t2, 0x0000($a3)           ## 8011BA00
/* 4AB04 8005BBA4 8459097E */  lh      $t9, 0x097E($v0)           ## 0000097E
/* 4AB08 8005BBA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 4AB0C 8005BBAC 854B0F50 */  lh      $t3, 0x0F50($t2)           ## 00000F50
/* 4AB10 8005BBB0 A44909A2 */  sh      $t1, 0x09A2($v0)           ## 000009A2
/* 4AB14 8005BBB4 A44D09A4 */  sh      $t5, 0x09A4($v0)           ## 000009A4
/* 4AB18 8005BBB8 256C0003 */  addiu   $t4, $t3, 0x0003           ## $t4 = 00000003
/* 4AB1C 8005BBBC A44C09A0 */  sh      $t4, 0x09A0($v0)           ## 000009A0
/* 4AB20 8005BBC0 A44009A6 */  sh      $zero, 0x09A6($v0)         ## 000009A6
/* 4AB24 8005BBC4 8CEE0000 */  lw      $t6, 0x0000($a3)           ## 8011BA00
/* 4AB28 8005BBC8 240AFFD8 */  addiu   $t2, $zero, 0xFFD8         ## $t2 = FFFFFFD8
/* 4AB2C 8005BBCC 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 4AB30 8005BBD0 85CF0F50 */  lh      $t7, 0x0F50($t6)           ## 00000F50
/* 4AB34 8005BBD4 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 4AB38 8005BBD8 A44009AA */  sh      $zero, 0x09AA($v0)         ## 000009AA
/* 4AB3C 8005BBDC 25F80003 */  addiu   $t8, $t7, 0x0003           ## $t8 = 00000003
/* 4AB40 8005BBE0 A45809A8 */  sh      $t8, 0x09A8($v0)           ## 000009A8
/* 4AB44 8005BBE4 A44A09BA */  sh      $t2, 0x09BA($v0)           ## 000009BA
/* 4AB48 8005BBE8 A44009BC */  sh      $zero, 0x09BC($v0)         ## 000009BC
/* 4AB4C 8005BBEC A44009BE */  sh      $zero, 0x09BE($v0)         ## 000009BE
/* 4AB50 8005BBF0 A44B09C0 */  sh      $t3, 0x09C0($v0)           ## 000009C0
/* 4AB54 8005BBF4 A44C09C4 */  sh      $t4, 0x09C4($v0)           ## 000009C4
/* 4AB58 8005BBF8 A4400998 */  sh      $zero, 0x0998($v0)         ## 00000998
/* 4AB5C 8005BBFC 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 4AB60 8005BC00 A45909AC */  sh      $t9, 0x09AC($v0)           ## 000009AC
/* 4AB64 8005BC04 8CC50000 */  lw      $a1, 0x0000($a2)           ## 00000000
/* 4AB68 8005BC08 0C024616 */  jal     func_80091858
/* 4AB6C 8005BC0C 00C12021 */  addu    $a0, $a2, $at
/* 4AB70 8005BC10 3C028012 */  lui     $v0, 0x8012                ## $v0 = 80120000
/* 4AB74 8005BC14 8C421220 */  lw      $v0, 0x1220($v0)           ## 80121220
/* 4AB78 8005BC18 50400007 */  beql    $v0, $zero, .L8005BC38
/* 4AB7C 8005BC1C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4AB80 8005BC20 8C43003C */  lw      $v1, 0x003C($v0)           ## 8012003C
/* 4AB84 8005BC24 50600004 */  beql    $v1, $zero, .L8005BC38
/* 4AB88 8005BC28 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4AB8C 8005BC2C 0060F809 */  jalr    $ra, $v1
/* 4AB90 8005BC30 00000000 */  nop
/* 4AB94 8005BC34 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8005BC38:
/* 4AB98 8005BC38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 4AB9C 8005BC3C 03E00008 */  jr      $ra
/* 4ABA0 8005BC40 00000000 */  nop


glabel func_8005BC44
/* 4ABA4 8005BC44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 4ABA8 8005BC48 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 4ABAC 8005BC4C AFA40018 */  sw      $a0, 0x0018($sp)
/* 4ABB0 8005BC50 3C028012 */  lui     $v0, 0x8012                ## $v0 = 80120000
/* 4ABB4 8005BC54 8C421220 */  lw      $v0, 0x1220($v0)           ## 80121220
/* 4ABB8 8005BC58 50400007 */  beql    $v0, $zero, .L8005BC78
/* 4ABBC 8005BC5C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4ABC0 8005BC60 8C430040 */  lw      $v1, 0x0040($v0)           ## 80120040
/* 4ABC4 8005BC64 50600004 */  beql    $v1, $zero, .L8005BC78
/* 4ABC8 8005BC68 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4ABCC 8005BC6C 0060F809 */  jalr    $ra, $v1
/* 4ABD0 8005BC70 00000000 */  nop
/* 4ABD4 8005BC74 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8005BC78:
/* 4ABD8 8005BC78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 4ABDC 8005BC7C 03E00008 */  jr      $ra
/* 4ABE0 8005BC80 00000000 */  nop
/* 4ABE4 8005BC84 00000000 */  nop
/* 4ABE8 8005BC88 00000000 */  nop
/* 4ABEC 8005BC8C 00000000 */  nop
