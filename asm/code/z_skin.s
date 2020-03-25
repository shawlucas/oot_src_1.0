.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8008D770
/* 7C6D0 8008D770 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 7C6D4 8008D774 AFB70054 */  sw      $s7, 0x0054($sp)
/* 7C6D8 8008D778 AFB60050 */  sw      $s6, 0x0050($sp)
/* 7C6DC 8008D77C AFB5004C */  sw      $s5, 0x004C($sp)
/* 7C6E0 8008D780 AFB40048 */  sw      $s4, 0x0048($sp)
/* 7C6E4 8008D784 AFB00038 */  sw      $s0, 0x0038($sp)
/* 7C6E8 8008D788 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 7C6EC 8008D78C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 7C6F0 8008D790 00C0A825 */  or      $s5, $a2, $zero            ## $s5 = 00000000
/* 7C6F4 8008D794 00E0B025 */  or      $s6, $a3, $zero            ## $s6 = 00000000
/* 7C6F8 8008D798 2417000A */  addiu   $s7, $zero, 0x000A         ## $s7 = 0000000A
/* 7C6FC 8008D79C AFBF005C */  sw      $ra, 0x005C($sp)
/* 7C700 8008D7A0 AFBE0058 */  sw      $s8, 0x0058($sp)
/* 7C704 8008D7A4 AFB30044 */  sw      $s3, 0x0044($sp)
/* 7C708 8008D7A8 AFB20040 */  sw      $s2, 0x0040($sp)
/* 7C70C 8008D7AC AFB1003C */  sw      $s1, 0x003C($sp)
/* 7C710 8008D7B0 F7BA0030 */  sdc1    $f26, 0x0030($sp)
/* 7C714 8008D7B4 F7B80028 */  sdc1    $f24, 0x0028($sp)
/* 7C718 8008D7B8 F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 7C71C 8008D7BC F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 7C720 8008D7C0 96AE0000 */  lhu     $t6, 0x0000($s5)           ## 00000000
/* 7C724 8008D7C4 02808825 */  or      $s1, $s4, $zero            ## $s1 = 00000000
/* 7C728 8008D7C8 27BE0064 */  addiu   $s8, $sp, 0x0064           ## $s8 = FFFFFFD4
/* 7C72C 8008D7CC 01D70019 */  multu   $t6, $s7
/* 7C730 8008D7D0 00007812 */  mflo    $t7
/* 7C734 8008D7D4 01F4C021 */  addu    $t8, $t7, $s4
/* 7C738 8008D7D8 0298082B */  sltu    $at, $s4, $t8
/* 7C73C 8008D7DC 50200048 */  beql    $at, $zero, .L8008D900
/* 7C740 8008D7E0 8FBF005C */  lw      $ra, 0x005C($sp)
/* 7C744 8008D7E4 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 7C748 8008D7E8 8FB300A0 */  lw      $s3, 0x00A0($sp)
/* 7C74C 8008D7EC C6640000 */  lwc1    $f4, 0x0000($s3)           ## 00000000
.L8008D7F0:
/* 7C750 8008D7F0 96390000 */  lhu     $t9, 0x0000($s1)           ## 00000000
/* 7C754 8008D7F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 7C758 8008D7F8 4600218D */  trunc.w.s $f6, $f4
/* 7C75C 8008D7FC 00194100 */  sll     $t0, $t9,  4
/* 7C760 8008D800 01169021 */  addu    $s2, $t0, $s6
/* 7C764 8008D804 03C02825 */  or      $a1, $s8, $zero            ## $a1 = FFFFFFD4
/* 7C768 8008D808 440A3000 */  mfc1    $t2, $f6
/* 7C76C 8008D80C 27A60070 */  addiu   $a2, $sp, 0x0070           ## $a2 = FFFFFFE0
/* 7C770 8008D810 A64A0000 */  sh      $t2, 0x0000($s2)           ## 00000000
/* 7C774 8008D814 C6680004 */  lwc1    $f8, 0x0004($s3)           ## 00000004
/* 7C778 8008D818 4600428D */  trunc.w.s $f10, $f8
/* 7C77C 8008D81C 440C5000 */  mfc1    $t4, $f10
/* 7C780 8008D820 00000000 */  nop
/* 7C784 8008D824 A64C0002 */  sh      $t4, 0x0002($s2)           ## 00000002
/* 7C788 8008D828 C6700008 */  lwc1    $f16, 0x0008($s3)          ## 00000008
/* 7C78C 8008D82C 4600848D */  trunc.w.s $f18, $f16
/* 7C790 8008D830 440E9000 */  mfc1    $t6, $f18
/* 7C794 8008D834 00000000 */  nop
/* 7C798 8008D838 A64E0004 */  sh      $t6, 0x0004($s2)           ## 00000004
/* 7C79C 8008D83C C6160030 */  lwc1    $f22, 0x0030($s0)          ## 00000030
/* 7C7A0 8008D840 C6180034 */  lwc1    $f24, 0x0034($s0)          ## 00000034
/* 7C7A4 8008D844 C61A0038 */  lwc1    $f26, 0x0038($s0)          ## 00000038
/* 7C7A8 8008D848 E6140038 */  swc1    $f20, 0x0038($s0)          ## 00000038
/* 7C7AC 8008D84C E6140034 */  swc1    $f20, 0x0034($s0)          ## 00000034
/* 7C7B0 8008D850 E6140030 */  swc1    $f20, 0x0030($s0)          ## 00000030
/* 7C7B4 8008D854 822F0006 */  lb      $t7, 0x0006($s1)           ## 00000006
/* 7C7B8 8008D858 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 7C7BC 8008D85C 00000000 */  nop
/* 7C7C0 8008D860 468021A0 */  cvt.s.w $f6, $f4
/* 7C7C4 8008D864 E7A60064 */  swc1    $f6, 0x0064($sp)
/* 7C7C8 8008D868 82380007 */  lb      $t8, 0x0007($s1)           ## 00000007
/* 7C7CC 8008D86C 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 7C7D0 8008D870 00000000 */  nop
/* 7C7D4 8008D874 468042A0 */  cvt.s.w $f10, $f8
/* 7C7D8 8008D878 E7AA0068 */  swc1    $f10, 0x0068($sp)
/* 7C7DC 8008D87C 82390008 */  lb      $t9, 0x0008($s1)           ## 00000008
/* 7C7E0 8008D880 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 7C7E4 8008D884 00000000 */  nop
/* 7C7E8 8008D888 468084A0 */  cvt.s.w $f18, $f16
/* 7C7EC 8008D88C 0C023B42 */  jal     func_8008ED08
/* 7C7F0 8008D890 E7B2006C */  swc1    $f18, 0x006C($sp)
/* 7C7F4 8008D894 C7A40070 */  lwc1    $f4, 0x0070($sp)
/* 7C7F8 8008D898 4600218D */  trunc.w.s $f6, $f4
/* 7C7FC 8008D89C 44093000 */  mfc1    $t1, $f6
/* 7C800 8008D8A0 00000000 */  nop
/* 7C804 8008D8A4 A249000C */  sb      $t1, 0x000C($s2)           ## 0000000C
/* 7C808 8008D8A8 C7A80074 */  lwc1    $f8, 0x0074($sp)
/* 7C80C 8008D8AC 4600428D */  trunc.w.s $f10, $f8
/* 7C810 8008D8B0 440B5000 */  mfc1    $t3, $f10
/* 7C814 8008D8B4 00000000 */  nop
/* 7C818 8008D8B8 A24B000D */  sb      $t3, 0x000D($s2)           ## 0000000D
/* 7C81C 8008D8BC C7B00078 */  lwc1    $f16, 0x0078($sp)
/* 7C820 8008D8C0 4600848D */  trunc.w.s $f18, $f16
/* 7C824 8008D8C4 440D9000 */  mfc1    $t5, $f18
/* 7C828 8008D8C8 00000000 */  nop
/* 7C82C 8008D8CC A24D000E */  sb      $t5, 0x000E($s2)           ## 0000000E
/* 7C830 8008D8D0 E6160030 */  swc1    $f22, 0x0030($s0)          ## 00000030
/* 7C834 8008D8D4 E6180034 */  swc1    $f24, 0x0034($s0)          ## 00000034
/* 7C838 8008D8D8 E61A0038 */  swc1    $f26, 0x0038($s0)          ## 00000038
/* 7C83C 8008D8DC 96AE0000 */  lhu     $t6, 0x0000($s5)           ## 00000000
/* 7C840 8008D8E0 2631000A */  addiu   $s1, $s1, 0x000A           ## $s1 = 0000000A
/* 7C844 8008D8E4 01D70019 */  multu   $t6, $s7
/* 7C848 8008D8E8 00007812 */  mflo    $t7
/* 7C84C 8008D8EC 01F4C021 */  addu    $t8, $t7, $s4
/* 7C850 8008D8F0 0238082B */  sltu    $at, $s1, $t8
/* 7C854 8008D8F4 5420FFBE */  bnel    $at, $zero, .L8008D7F0
/* 7C858 8008D8F8 C6640000 */  lwc1    $f4, 0x0000($s3)           ## 00000000
/* 7C85C 8008D8FC 8FBF005C */  lw      $ra, 0x005C($sp)
.L8008D900:
/* 7C860 8008D900 D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 7C864 8008D904 D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 7C868 8008D908 D7B80028 */  ldc1    $f24, 0x0028($sp)
/* 7C86C 8008D90C D7BA0030 */  ldc1    $f26, 0x0030($sp)
/* 7C870 8008D910 8FB00038 */  lw      $s0, 0x0038($sp)
/* 7C874 8008D914 8FB1003C */  lw      $s1, 0x003C($sp)
/* 7C878 8008D918 8FB20040 */  lw      $s2, 0x0040($sp)
/* 7C87C 8008D91C 8FB30044 */  lw      $s3, 0x0044($sp)
/* 7C880 8008D920 8FB40048 */  lw      $s4, 0x0048($sp)
/* 7C884 8008D924 8FB5004C */  lw      $s5, 0x004C($sp)
/* 7C888 8008D928 8FB60050 */  lw      $s6, 0x0050($sp)
/* 7C88C 8008D92C 8FB70054 */  lw      $s7, 0x0054($sp)
/* 7C890 8008D930 8FBE0058 */  lw      $s8, 0x0058($sp)
/* 7C894 8008D934 03E00008 */  jr      $ra
/* 7C898 8008D938 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000


glabel func_8008D93C
/* 7C89C 8008D93C 27BDFEF8 */  addiu   $sp, $sp, 0xFEF8           ## $sp = FFFFFEF8
/* 7C8A0 8008D940 AFBF0074 */  sw      $ra, 0x0074($sp)
/* 7C8A4 8008D944 AFB00050 */  sw      $s0, 0x0050($sp)
/* 7C8A8 8008D948 3C1000FF */  lui     $s0, 0x00FF                ## $s0 = 00FF0000
/* 7C8AC 8008D94C 3C1F8012 */  lui     $ra, 0x8012                ## $ra = 80120000
/* 7C8B0 8008D950 AFB10054 */  sw      $s1, 0x0054($sp)
/* 7C8B4 8008D954 3C118000 */  lui     $s1, 0x8000                ## $s1 = 80000000
/* 7C8B8 8008D958 27FF0C38 */  addiu   $ra, $ra, 0x0C38           ## $ra = 80120C38
/* 7C8BC 8008D95C 3610FFFF */  ori     $s0, $s0, 0xFFFF           ## $s0 = 00FFFFFF
/* 7C8C0 8008D960 AFBE0070 */  sw      $s8, 0x0070($sp)
/* 7C8C4 8008D964 AFB7006C */  sw      $s7, 0x006C($sp)
/* 7C8C8 8008D968 AFB60068 */  sw      $s6, 0x0068($sp)
/* 7C8CC 8008D96C AFB50064 */  sw      $s5, 0x0064($sp)
/* 7C8D0 8008D970 AFB40060 */  sw      $s4, 0x0060($sp)
/* 7C8D4 8008D974 AFB3005C */  sw      $s3, 0x005C($sp)
/* 7C8D8 8008D978 AFB20058 */  sw      $s2, 0x0058($sp)
/* 7C8DC 8008D97C F7BE0048 */  sdc1    $f30, 0x0048($sp)
/* 7C8E0 8008D980 F7BC0040 */  sdc1    $f28, 0x0040($sp)
/* 7C8E4 8008D984 F7BA0038 */  sdc1    $f26, 0x0038($sp)
/* 7C8E8 8008D988 F7B80030 */  sdc1    $f24, 0x0030($sp)
/* 7C8EC 8008D98C F7B60028 */  sdc1    $f22, 0x0028($sp)
/* 7C8F0 8008D990 F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 7C8F4 8008D994 AFA40108 */  sw      $a0, 0x0108($sp)
/* 7C8F8 8008D998 AFA70114 */  sw      $a3, 0x0114($sp)
/* 7C8FC 8008D99C 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 00000000
/* 7C900 8008D9A0 27B700CC */  addiu   $s7, $sp, 0x00CC           ## $s7 = FFFFFFC4
/* 7C904 8008D9A4 27B500C0 */  addiu   $s5, $sp, 0x00C0           ## $s5 = FFFFFFB8
/* 7C908 8008D9A8 8DC30000 */  lw      $v1, 0x0000($t6)           ## 00000000
/* 7C90C 8008D9AC 27B40084 */  addiu   $s4, $sp, 0x0084           ## $s4 = FFFFFF7C
/* 7C910 8008D9B0 00037900 */  sll     $t7, $v1,  4
/* 7C914 8008D9B4 000FC702 */  srl     $t8, $t7, 28
/* 7C918 8008D9B8 0018C880 */  sll     $t9, $t8,  2
/* 7C91C 8008D9BC 03F97021 */  addu    $t6, $ra, $t9
/* 7C920 8008D9C0 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 7C924 8008D9C4 0070C024 */  and     $t8, $v1, $s0
/* 7C928 8008D9C8 00067080 */  sll     $t6, $a2,  2
/* 7C92C 8008D9CC 01F8C821 */  addu    $t9, $t7, $t8
/* 7C930 8008D9D0 03316021 */  addu    $t4, $t9, $s1
/* 7C934 8008D9D4 018E7821 */  addu    $t7, $t4, $t6
/* 7C938 8008D9D8 8DE90000 */  lw      $t1, 0x0000($t7)           ## 00000000
/* 7C93C 8008D9DC 0009C900 */  sll     $t9, $t1,  4
/* 7C940 8008D9E0 00197702 */  srl     $t6, $t9, 28
/* 7C944 8008D9E4 000E7880 */  sll     $t7, $t6,  2
/* 7C948 8008D9E8 03EFC821 */  addu    $t9, $ra, $t7
/* 7C94C 8008D9EC 8F2E0000 */  lw      $t6, 0x0000($t9)           ## 00000000
/* 7C950 8008D9F0 0130C024 */  and     $t8, $t1, $s0
/* 7C954 8008D9F4 030E7821 */  addu    $t7, $t8, $t6
/* 7C958 8008D9F8 01F1C821 */  addu    $t9, $t7, $s1
/* 7C95C 8008D9FC 8F2A000C */  lw      $t2, 0x000C($t9)           ## 0000000C
/* 7C960 8008DA00 000A7100 */  sll     $t6, $t2,  4
/* 7C964 8008DA04 000E7F02 */  srl     $t7, $t6, 28
/* 7C968 8008DA08 000FC880 */  sll     $t9, $t7,  2
/* 7C96C 8008DA0C 03F97021 */  addu    $t6, $ra, $t9
/* 7C970 8008DA10 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 7C974 8008DA14 0150C024 */  and     $t8, $t2, $s0
/* 7C978 8008DA18 030FC821 */  addu    $t9, $t8, $t7
/* 7C97C 8008DA1C 03314021 */  addu    $t0, $t9, $s1
/* 7C980 8008DA20 8D0B0004 */  lw      $t3, 0x0004($t0)           ## 00000004
/* 7C984 8008DA24 000B7100 */  sll     $t6, $t3,  4
/* 7C988 8008DA28 000EC702 */  srl     $t8, $t6, 28
/* 7C98C 8008DA2C 00187880 */  sll     $t7, $t8,  2
/* 7C990 8008DA30 03EFC821 */  addu    $t9, $ra, $t7
/* 7C994 8008DA34 8F2E0000 */  lw      $t6, 0x0000($t9)           ## 00000000
/* 7C998 8008DA38 0170C024 */  and     $t8, $t3, $s0
/* 7C99C 8008DA3C 8CB90048 */  lw      $t9, 0x0048($a1)           ## 00000048
/* 7C9A0 8008DA40 01D87821 */  addu    $t7, $t6, $t8
/* 7C9A4 8008DA44 00067080 */  sll     $t6, $a2,  2
/* 7C9A8 8008DA48 01C67023 */  subu    $t6, $t6, $a2
/* 7C9AC 8008DA4C 000E7080 */  sll     $t6, $t6,  2
/* 7C9B0 8008DA50 032E9021 */  addu    $s2, $t9, $t6
/* 7C9B4 8008DA54 92580000 */  lbu     $t8, 0x0000($s2)           ## 00000000
/* 7C9B8 8008DA58 01F1B021 */  addu    $s6, $t7, $s1
/* 7C9BC 8008DA5C 00187880 */  sll     $t7, $t8,  2
/* 7C9C0 8008DA60 024FC821 */  addu    $t9, $s2, $t7
/* 7C9C4 8008DA64 8F2E0004 */  lw      $t6, 0x0004($t9)           ## 00000004
/* 7C9C8 8008DA68 AFAE00DC */  sw      $t6, 0x00DC($sp)
/* 7C9CC 8008DA6C 950D0002 */  lhu     $t5, 0x0002($t0)           ## 00000002
/* 7C9D0 8008DA70 AFB200F0 */  sw      $s2, 0x00F0($sp)
/* 7C9D4 8008DA74 000DC100 */  sll     $t8, $t5,  4
/* 7C9D8 8008DA78 03169821 */  addu    $s3, $t8, $s6
/* 7C9DC 8008DA7C 02D3082B */  sltu    $at, $s6, $s3
/* 7C9E0 8008DA80 502000A5 */  beql    $at, $zero, .L8008DD18
/* 7C9E4 8008DA84 8FA400F0 */  lw      $a0, 0x00F0($sp)
/* 7C9E8 8008DA88 AFB200F0 */  sw      $s2, 0x00F0($sp)
/* 7C9EC 8008DA8C 3C128012 */  lui     $s2, 0x8012                ## $s2 = 80120000
/* 7C9F0 8008DA90 3C018011 */  lui     $at, 0x8011                ## $at = 80110000
/* 7C9F4 8008DA94 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 7C9F8 8008DA98 C43C8AC0 */  lwc1    $f28, -0x7540($at)         ## 80108AC0
/* 7C9FC 8008DA9C 2652C000 */  addiu   $s2, $s2, 0xC000           ## $s2 = 8011C000
/* 7CA00 8008DAA0 AFB3007C */  sw      $s3, 0x007C($sp)
/* 7CA04 8008DAA4 8EC20008 */  lw      $v0, 0x0008($s6)           ## 00000008
.L8008DAA8:
/* 7CA08 8008DAA8 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 7CA0C 8008DAAC 24C60C38 */  addiu   $a2, $a2, 0x0C38           ## $a2 = 80120C38
/* 7CA10 8008DAB0 00027900 */  sll     $t7, $v0,  4
/* 7CA14 8008DAB4 000FCF02 */  srl     $t9, $t7, 28
/* 7CA18 8008DAB8 00197080 */  sll     $t6, $t9,  2
/* 7CA1C 8008DABC 00CEC021 */  addu    $t8, $a2, $t6
/* 7CA20 8008DAC0 8F0F0000 */  lw      $t7, 0x0000($t8)           ## 00000000
/* 7CA24 8008DAC4 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 7CA28 8008DAC8 8EC3000C */  lw      $v1, 0x000C($s6)           ## 0000000C
/* 7CA2C 8008DACC 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 7CA30 8008DAD0 0047C824 */  and     $t9, $v0, $a3
/* 7CA34 8008DAD4 01F97021 */  addu    $t6, $t7, $t9
/* 7CA38 8008DAD8 0003C100 */  sll     $t8, $v1,  4
/* 7CA3C 8008DADC 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 7CA40 8008DAE0 00187F02 */  srl     $t7, $t8, 28
/* 7CA44 8008DAE4 01C8F021 */  addu    $s8, $t6, $t0
/* 7CA48 8008DAE8 000FC880 */  sll     $t9, $t7,  2
/* 7CA4C 8008DAEC 00D97021 */  addu    $t6, $a2, $t9
/* 7CA50 8008DAF0 8DD80000 */  lw      $t8, 0x0000($t6)           ## 00000000
/* 7CA54 8008DAF4 96C40002 */  lhu     $a0, 0x0002($s6)           ## 00000002
/* 7CA58 8008DAF8 00677824 */  and     $t7, $v1, $a3
/* 7CA5C 8008DAFC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 7CA60 8008DB00 030FC821 */  addu    $t9, $t8, $t7
/* 7CA64 8008DB04 14850018 */  bne     $a0, $a1, .L8008DB68
/* 7CA68 8008DB08 03289821 */  addu    $s3, $t9, $t0
/* 7CA6C 8008DB0C 866E0002 */  lh      $t6, 0x0002($s3)           ## 00000002
/* 7CA70 8008DB10 27A500A8 */  addiu   $a1, $sp, 0x00A8           ## $a1 = FFFFFFA0
/* 7CA74 8008DB14 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFC4
/* 7CA78 8008DB18 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 7CA7C 8008DB1C 00000000 */  nop
/* 7CA80 8008DB20 468021A0 */  cvt.s.w $f6, $f4
/* 7CA84 8008DB24 E7A600A8 */  swc1    $f6, 0x00A8($sp)
/* 7CA88 8008DB28 86780004 */  lh      $t8, 0x0004($s3)           ## 00000004
/* 7CA8C 8008DB2C 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 7CA90 8008DB30 00000000 */  nop
/* 7CA94 8008DB34 468042A0 */  cvt.s.w $f10, $f8
/* 7CA98 8008DB38 E7AA00AC */  swc1    $f10, 0x00AC($sp)
/* 7CA9C 8008DB3C 866F0006 */  lh      $t7, 0x0006($s3)           ## 00000006
/* 7CAA0 8008DB40 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 7CAA4 8008DB44 00000000 */  nop
/* 7CAA8 8008DB48 468084A0 */  cvt.s.w $f18, $f16
/* 7CAAC 8008DB4C E7B200B0 */  swc1    $f18, 0x00B0($sp)
/* 7CAB0 8008DB50 92790000 */  lbu     $t9, 0x0000($s3)           ## 00000000
/* 7CAB4 8008DB54 00197180 */  sll     $t6, $t9,  6
/* 7CAB8 8008DB58 0C023B42 */  jal     func_8008ED08
/* 7CABC 8008DB5C 024E2021 */  addu    $a0, $s2, $t6
/* 7CAC0 8008DB60 1000005B */  beq     $zero, $zero, .L8008DCD0
/* 7CAC4 8008DB64 96CE0004 */  lhu     $t6, 0x0004($s6)           ## 00000004
.L8008DB68:
/* 7CAC8 8008DB68 8FB80114 */  lw      $t8, 0x0114($sp)
/* 7CACC 8008DB6C 02608025 */  or      $s0, $s3, $zero            ## $s0 = 00000000
/* 7CAD0 8008DB70 5705001E */  bnel    $t8, $a1, .L8008DBEC
/* 7CAD4 8008DB74 0004C080 */  sll     $t8, $a0,  2
/* 7CAD8 8008DB78 96CF0004 */  lhu     $t7, 0x0004($s6)           ## 00000004
/* 7CADC 8008DB7C 27A5009C */  addiu   $a1, $sp, 0x009C           ## $a1 = FFFFFF94
/* 7CAE0 8008DB80 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFC4
/* 7CAE4 8008DB84 000FC880 */  sll     $t9, $t7,  2
/* 7CAE8 8008DB88 032FC821 */  addu    $t9, $t9, $t7
/* 7CAEC 8008DB8C 0019C840 */  sll     $t9, $t9,  1
/* 7CAF0 8008DB90 03338021 */  addu    $s0, $t9, $s3
/* 7CAF4 8008DB94 860E0002 */  lh      $t6, 0x0002($s0)           ## 00000002
/* 7CAF8 8008DB98 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 7CAFC 8008DB9C 00000000 */  nop
/* 7CB00 8008DBA0 468021A0 */  cvt.s.w $f6, $f4
/* 7CB04 8008DBA4 E7A6009C */  swc1    $f6, 0x009C($sp)
/* 7CB08 8008DBA8 86180004 */  lh      $t8, 0x0004($s0)           ## 00000004
/* 7CB0C 8008DBAC 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 7CB10 8008DBB0 00000000 */  nop
/* 7CB14 8008DBB4 468042A0 */  cvt.s.w $f10, $f8
/* 7CB18 8008DBB8 E7AA00A0 */  swc1    $f10, 0x00A0($sp)
/* 7CB1C 8008DBBC 860F0006 */  lh      $t7, 0x0006($s0)           ## 00000006
/* 7CB20 8008DBC0 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 7CB24 8008DBC4 00000000 */  nop
/* 7CB28 8008DBC8 468084A0 */  cvt.s.w $f18, $f16
/* 7CB2C 8008DBCC E7B200A4 */  swc1    $f18, 0x00A4($sp)
/* 7CB30 8008DBD0 92190000 */  lbu     $t9, 0x0000($s0)           ## 00000000
/* 7CB34 8008DBD4 00197180 */  sll     $t6, $t9,  6
/* 7CB38 8008DBD8 0C023B42 */  jal     func_8008ED08
/* 7CB3C 8008DBDC 024E2021 */  addu    $a0, $s2, $t6
/* 7CB40 8008DBE0 1000003B */  beq     $zero, $zero, .L8008DCD0
/* 7CB44 8008DBE4 96CE0004 */  lhu     $t6, 0x0004($s6)           ## 00000004
/* 7CB48 8008DBE8 0004C080 */  sll     $t8, $a0,  2
.L8008DBEC:
/* 7CB4C 8008DBEC 0304C021 */  addu    $t8, $t8, $a0
/* 7CB50 8008DBF0 0018C040 */  sll     $t8, $t8,  1
/* 7CB54 8008DBF4 03138821 */  addu    $s1, $t8, $s3
/* 7CB58 8008DBF8 0271082B */  sltu    $at, $s3, $s1
/* 7CB5C 8008DBFC 4600F586 */  mov.s   $f22, $f30
/* 7CB60 8008DC00 4600F606 */  mov.s   $f24, $f30
/* 7CB64 8008DC04 1020002E */  beq     $at, $zero, .L8008DCC0
/* 7CB68 8008DC08 4600F686 */  mov.s   $f26, $f30
.L8008DC0C:
/* 7CB6C 8008DC0C 920F0008 */  lbu     $t7, 0x0008($s0)           ## 00000008
/* 7CB70 8008DC10 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 7CB74 8008DC14 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 7CB78 8008DC18 05E10004 */  bgez    $t7, .L8008DC2C
/* 7CB7C 8008DC1C 468021A0 */  cvt.s.w $f6, $f4
/* 7CB80 8008DC20 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 7CB84 8008DC24 00000000 */  nop
/* 7CB88 8008DC28 46083180 */  add.s   $f6, $f6, $f8
.L8008DC2C:
/* 7CB8C 8008DC2C 86190002 */  lh      $t9, 0x0002($s0)           ## 00000002
/* 7CB90 8008DC30 461C3502 */  mul.s   $f20, $f6, $f28
/* 7CB94 8008DC34 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFF7C
/* 7CB98 8008DC38 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 7CB9C 8008DC3C 02A03025 */  or      $a2, $s5, $zero            ## $a2 = FFFFFFB8
/* 7CBA0 8008DC40 46805420 */  cvt.s.w $f16, $f10
/* 7CBA4 8008DC44 E7B00084 */  swc1    $f16, 0x0084($sp)
/* 7CBA8 8008DC48 860E0004 */  lh      $t6, 0x0004($s0)           ## 00000004
/* 7CBAC 8008DC4C 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 7CBB0 8008DC50 00000000 */  nop
/* 7CBB4 8008DC54 46809120 */  cvt.s.w $f4, $f18
/* 7CBB8 8008DC58 E7A40088 */  swc1    $f4, 0x0088($sp)
/* 7CBBC 8008DC5C 86180006 */  lh      $t8, 0x0006($s0)           ## 00000006
/* 7CBC0 8008DC60 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 7CBC4 8008DC64 00000000 */  nop
/* 7CBC8 8008DC68 468041A0 */  cvt.s.w $f6, $f8
/* 7CBCC 8008DC6C E7A6008C */  swc1    $f6, 0x008C($sp)
/* 7CBD0 8008DC70 920F0000 */  lbu     $t7, 0x0000($s0)           ## 00000000
/* 7CBD4 8008DC74 000FC980 */  sll     $t9, $t7,  6
/* 7CBD8 8008DC78 0C023B42 */  jal     func_8008ED08
/* 7CBDC 8008DC7C 02592021 */  addu    $a0, $s2, $t9
/* 7CBE0 8008DC80 C7A000C0 */  lwc1    $f0, 0x00C0($sp)
/* 7CBE4 8008DC84 C7A200C4 */  lwc1    $f2, 0x00C4($sp)
/* 7CBE8 8008DC88 C7AC00C8 */  lwc1    $f12, 0x00C8($sp)
/* 7CBEC 8008DC8C 46140002 */  mul.s   $f0, $f0, $f20
/* 7CBF0 8008DC90 2610000A */  addiu   $s0, $s0, 0x000A           ## $s0 = 0000000A
/* 7CBF4 8008DC94 0211082B */  sltu    $at, $s0, $s1
/* 7CBF8 8008DC98 46141082 */  mul.s   $f2, $f2, $f20
/* 7CBFC 8008DC9C 00000000 */  nop
/* 7CC00 8008DCA0 46146302 */  mul.s   $f12, $f12, $f20
/* 7CC04 8008DCA4 4600D680 */  add.s   $f26, $f26, $f0
/* 7CC08 8008DCA8 4602C600 */  add.s   $f24, $f24, $f2
/* 7CC0C 8008DCAC 460CB580 */  add.s   $f22, $f22, $f12
/* 7CC10 8008DCB0 E7A000C0 */  swc1    $f0, 0x00C0($sp)
/* 7CC14 8008DCB4 E7A200C4 */  swc1    $f2, 0x00C4($sp)
/* 7CC18 8008DCB8 1420FFD4 */  bne     $at, $zero, .L8008DC0C
/* 7CC1C 8008DCBC E7AC00C8 */  swc1    $f12, 0x00C8($sp)
.L8008DCC0:
/* 7CC20 8008DCC0 E7BA00CC */  swc1    $f26, 0x00CC($sp)
/* 7CC24 8008DCC4 E7B800D0 */  swc1    $f24, 0x00D0($sp)
/* 7CC28 8008DCC8 E7B600D4 */  swc1    $f22, 0x00D4($sp)
/* 7CC2C 8008DCCC 96CE0004 */  lhu     $t6, 0x0004($s6)           ## 00000004
.L8008DCD0:
/* 7CC30 8008DCD0 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000000
/* 7CC34 8008DCD4 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 7CC38 8008DCD8 000EC080 */  sll     $t8, $t6,  2
/* 7CC3C 8008DCDC 030EC021 */  addu    $t8, $t8, $t6
/* 7CC40 8008DCE0 0018C040 */  sll     $t8, $t8,  1
/* 7CC44 8008DCE4 02787821 */  addu    $t7, $s3, $t8
/* 7CC48 8008DCE8 91F90000 */  lbu     $t9, 0x0000($t7)           ## 00000000
/* 7CC4C 8008DCEC AFB70010 */  sw      $s7, 0x0010($sp)
/* 7CC50 8008DCF0 8FA700DC */  lw      $a3, 0x00DC($sp)
/* 7CC54 8008DCF4 00197180 */  sll     $t6, $t9,  6
/* 7CC58 8008DCF8 0C0235DC */  jal     func_8008D770
/* 7CC5C 8008DCFC 024E2021 */  addu    $a0, $s2, $t6
/* 7CC60 8008DD00 8FB8007C */  lw      $t8, 0x007C($sp)
/* 7CC64 8008DD04 26D60010 */  addiu   $s6, $s6, 0x0010           ## $s6 = 00000010
/* 7CC68 8008DD08 02D8082B */  sltu    $at, $s6, $t8
/* 7CC6C 8008DD0C 5420FF66 */  bnel    $at, $zero, .L8008DAA8
/* 7CC70 8008DD10 8EC20008 */  lw      $v0, 0x0008($s6)           ## 00000018
/* 7CC74 8008DD14 8FA400F0 */  lw      $a0, 0x00F0($sp)
.L8008DD18:
/* 7CC78 8008DD18 8FAF0108 */  lw      $t7, 0x0108($sp)
/* 7CC7C 8008DD1C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 7CC80 8008DD20 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 7CC84 8008DD24 8DE302C0 */  lw      $v1, 0x02C0($t7)           ## 000002C0
/* 7CC88 8008DD28 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 7CC8C 8008DD2C ADF902C0 */  sw      $t9, 0x02C0($t7)           ## 000002C0
/* 7CC90 8008DD30 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 7CC94 8008DD34 90980000 */  lbu     $t8, 0x0000($a0)           ## 00000000
/* 7CC98 8008DD38 0018C880 */  sll     $t9, $t8,  2
/* 7CC9C 8008DD3C 00997821 */  addu    $t7, $a0, $t9
/* 7CCA0 8008DD40 8DEE0004 */  lw      $t6, 0x0004($t7)           ## 00000004
/* 7CCA4 8008DD44 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 7CCA8 8008DD48 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 7CCAC 8008DD4C 90980000 */  lbu     $t8, 0x0000($a0)           ## 00000000
/* 7CCB0 8008DD50 57000004 */  bnel    $t8, $zero, .L8008DD64
/* 7CCB4 8008DD54 A0800000 */  sb      $zero, 0x0000($a0)         ## 00000000
/* 7CCB8 8008DD58 10000002 */  beq     $zero, $zero, .L8008DD64
/* 7CCBC 8008DD5C A0990000 */  sb      $t9, 0x0000($a0)           ## 00000000
/* 7CCC0 8008DD60 A0800000 */  sb      $zero, 0x0000($a0)         ## 00000000
.L8008DD64:
/* 7CCC4 8008DD64 8FBF0074 */  lw      $ra, 0x0074($sp)
/* 7CCC8 8008DD68 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 7CCCC 8008DD6C D7B60028 */  ldc1    $f22, 0x0028($sp)
/* 7CCD0 8008DD70 D7B80030 */  ldc1    $f24, 0x0030($sp)
/* 7CCD4 8008DD74 D7BA0038 */  ldc1    $f26, 0x0038($sp)
/* 7CCD8 8008DD78 D7BC0040 */  ldc1    $f28, 0x0040($sp)
/* 7CCDC 8008DD7C D7BE0048 */  ldc1    $f30, 0x0048($sp)
/* 7CCE0 8008DD80 8FB00050 */  lw      $s0, 0x0050($sp)
/* 7CCE4 8008DD84 8FB10054 */  lw      $s1, 0x0054($sp)
/* 7CCE8 8008DD88 8FB20058 */  lw      $s2, 0x0058($sp)
/* 7CCEC 8008DD8C 8FB3005C */  lw      $s3, 0x005C($sp)
/* 7CCF0 8008DD90 8FB40060 */  lw      $s4, 0x0060($sp)
/* 7CCF4 8008DD94 8FB50064 */  lw      $s5, 0x0064($sp)
/* 7CCF8 8008DD98 8FB60068 */  lw      $s6, 0x0068($sp)
/* 7CCFC 8008DD9C 8FB7006C */  lw      $s7, 0x006C($sp)
/* 7CD00 8008DDA0 8FBE0070 */  lw      $s8, 0x0070($sp)
/* 7CD04 8008DDA4 03E00008 */  jr      $ra
/* 7CD08 8008DDA8 27BD0108 */  addiu   $sp, $sp, 0x0108           ## $sp = 00000000


glabel func_8008DDAC
/* 7CD0C 8008DDAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 7CD10 8008DDB0 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 7CD14 8008DDB4 3C0B00FF */  lui     $t3, 0x00FF                ## $t3 = 00FF0000
/* 7CD18 8008DDB8 356BFFFF */  ori     $t3, $t3, 0xFFFF           ## $t3 = 00FFFFFF
/* 7CD1C 8008DDBC 254A0C38 */  addiu   $t2, $t2, 0x0C38           ## $t2 = 80120C38
/* 7CD20 8008DDC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 7CD24 8008DDC4 3C0C8000 */  lui     $t4, 0x8000                ## $t4 = 80000000
/* 7CD28 8008DDC8 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 00000000
/* 7CD2C 8008DDCC 8DC20000 */  lw      $v0, 0x0000($t6)           ## 00000000
/* 7CD30 8008DDD0 00027900 */  sll     $t7, $v0,  4
/* 7CD34 8008DDD4 000FC702 */  srl     $t8, $t7, 28
/* 7CD38 8008DDD8 0018C880 */  sll     $t9, $t8,  2
/* 7CD3C 8008DDDC 01597021 */  addu    $t6, $t2, $t9
/* 7CD40 8008DDE0 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 7CD44 8008DDE4 004BC024 */  and     $t8, $v0, $t3
/* 7CD48 8008DDE8 00067080 */  sll     $t6, $a2,  2
/* 7CD4C 8008DDEC 01F8C821 */  addu    $t9, $t7, $t8
/* 7CD50 8008DDF0 032C4821 */  addu    $t1, $t9, $t4
/* 7CD54 8008DDF4 012E7821 */  addu    $t7, $t1, $t6
/* 7CD58 8008DDF8 8DE30000 */  lw      $v1, 0x0000($t7)           ## 00000000
/* 7CD5C 8008DDFC 0003C900 */  sll     $t9, $v1,  4
/* 7CD60 8008DE00 00197702 */  srl     $t6, $t9, 28
/* 7CD64 8008DE04 000E7880 */  sll     $t7, $t6,  2
/* 7CD68 8008DE08 014FC821 */  addu    $t9, $t2, $t7
/* 7CD6C 8008DE0C 8F2E0000 */  lw      $t6, 0x0000($t9)           ## 00000000
/* 7CD70 8008DE10 006BC024 */  and     $t8, $v1, $t3
/* 7CD74 8008DE14 030E7821 */  addu    $t7, $t8, $t6
/* 7CD78 8008DE18 01ECC821 */  addu    $t9, $t7, $t4
/* 7CD7C 8008DE1C 8F28000C */  lw      $t0, 0x000C($t9)           ## 0000000C
/* 7CD80 8008DE20 00087100 */  sll     $t6, $t0,  4
/* 7CD84 8008DE24 000E7F02 */  srl     $t7, $t6, 28
/* 7CD88 8008DE28 000FC880 */  sll     $t9, $t7,  2
/* 7CD8C 8008DE2C 01597021 */  addu    $t6, $t2, $t9
/* 7CD90 8008DE30 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 7CD94 8008DE34 8FAE0030 */  lw      $t6, 0x0030($sp)
/* 7CD98 8008DE38 010BC024 */  and     $t8, $t0, $t3
/* 7CD9C 8008DE3C 030FC821 */  addu    $t9, $t8, $t7
/* 7CDA0 8008DE40 31D80001 */  andi    $t8, $t6, 0x0001           ## $t8 = 00000000
/* 7CDA4 8008DE44 17000006 */  bne     $t8, $zero, .L8008DE60
/* 7CDA8 8008DE48 032C6821 */  addu    $t5, $t9, $t4
/* 7CDAC 8008DE4C AFA40020 */  sw      $a0, 0x0020($sp)
/* 7CDB0 8008DE50 0C02364F */  jal     func_8008D93C
/* 7CDB4 8008DE54 AFAD0018 */  sw      $t5, 0x0018($sp)
/* 7CDB8 8008DE58 8FA40020 */  lw      $a0, 0x0020($sp)
/* 7CDBC 8008DE5C 8FAD0018 */  lw      $t5, 0x0018($sp)
.L8008DE60:
/* 7CDC0 8008DE60 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 7CDC4 8008DE64 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 7CDC8 8008DE68 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 7CDCC 8008DE6C AC8F02C0 */  sw      $t7, 0x02C0($a0)           ## 000002C0
/* 7CDD0 8008DE70 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 7CDD4 8008DE74 8DAE0008 */  lw      $t6, 0x0008($t5)           ## 00000008
/* 7CDD8 8008DE78 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 7CDDC 8008DE7C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 7CDE0 8008DE80 03E00008 */  jr      $ra
/* 7CDE4 8008DE84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel func_8008DE88
/* 7CDE8 8008DE88 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 7CDEC 8008DE8C 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 7CDF0 8008DE90 3C0A00FF */  lui     $t2, 0x00FF                ## $t2 = 00FF0000
/* 7CDF4 8008DE94 354AFFFF */  ori     $t2, $t2, 0xFFFF           ## $t2 = 00FFFFFF
/* 7CDF8 8008DE98 25080C38 */  addiu   $t0, $t0, 0x0C38           ## $t0 = 80120C38
/* 7CDFC 8008DE9C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 7CE00 8008DEA0 3C0B8000 */  lui     $t3, 0x8000                ## $t3 = 80000000
/* 7CE04 8008DEA4 00E04825 */  or      $t1, $a3, $zero            ## $t1 = 00000000
/* 7CE08 8008DEA8 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 00000000
/* 7CE0C 8008DEAC 8DC20000 */  lw      $v0, 0x0000($t6)           ## 00000000
/* 7CE10 8008DEB0 00027900 */  sll     $t7, $v0,  4
/* 7CE14 8008DEB4 000FC702 */  srl     $t8, $t7, 28
/* 7CE18 8008DEB8 0018C880 */  sll     $t9, $t8,  2
/* 7CE1C 8008DEBC 01196021 */  addu    $t4, $t0, $t9
/* 7CE20 8008DEC0 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 7CE24 8008DEC4 004A7024 */  and     $t6, $v0, $t2
/* 7CE28 8008DEC8 0006C080 */  sll     $t8, $a2,  2
/* 7CE2C 8008DECC 01AE7821 */  addu    $t7, $t5, $t6
/* 7CE30 8008DED0 14E0000C */  bne     $a3, $zero, .L8008DF04
/* 7CE34 8008DED4 01EB1821 */  addu    $v1, $t7, $t3
/* 7CE38 8008DED8 0078C821 */  addu    $t9, $v1, $t8
/* 7CE3C 8008DEDC 8F220000 */  lw      $v0, 0x0000($t9)           ## 00000000
/* 7CE40 8008DEE0 00026900 */  sll     $t5, $v0,  4
/* 7CE44 8008DEE4 000D7702 */  srl     $t6, $t5, 28
/* 7CE48 8008DEE8 000E7880 */  sll     $t7, $t6,  2
/* 7CE4C 8008DEEC 010FC021 */  addu    $t8, $t0, $t7
/* 7CE50 8008DEF0 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 7CE54 8008DEF4 004A6024 */  and     $t4, $v0, $t2
/* 7CE58 8008DEF8 01996821 */  addu    $t5, $t4, $t9
/* 7CE5C 8008DEFC 01AB7021 */  addu    $t6, $t5, $t3
/* 7CE60 8008DF00 8DC9000C */  lw      $t1, 0x000C($t6)           ## 0000000C
.L8008DF04:
/* 7CE64 8008DF04 11200024 */  beq     $t1, $zero, .L8008DF98
/* 7CE68 8008DF08 00067980 */  sll     $t7, $a2,  6
/* 7CE6C 8008DF0C 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 7CE70 8008DF10 2718C000 */  addiu   $t8, $t8, 0xC000           ## $t8 = 8011C000
/* 7CE74 8008DF14 01F82821 */  addu    $a1, $t7, $t8
/* 7CE78 8008DF18 AFA40020 */  sw      $a0, 0x0020($sp)
/* 7CE7C 8008DF1C 0C023F26 */  jal     func_8008FC98
/* 7CE80 8008DF20 AFA9001C */  sw      $t1, 0x001C($sp)
/* 7CE84 8008DF24 8FA40020 */  lw      $a0, 0x0020($sp)
/* 7CE88 8008DF28 1040001B */  beq     $v0, $zero, .L8008DF98
/* 7CE8C 8008DF2C 8FA9001C */  lw      $t1, 0x001C($sp)
/* 7CE90 8008DF30 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 7CE94 8008DF34 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 7CE98 8008DF38 3C18D838 */  lui     $t8, 0xD838                ## $t8 = D8380000
/* 7CE9C 8008DF3C 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 7CEA0 8008DF40 AC8C02C0 */  sw      $t4, 0x02C0($a0)           ## 000002C0
/* 7CEA4 8008DF44 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 7CEA8 8008DF48 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 7CEAC 8008DF4C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 7CEB0 8008DF50 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 7CEB4 8008DF54 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 7CEB8 8008DF58 AC8D02C0 */  sw      $t5, 0x02C0($a0)           ## 000002C0
/* 7CEBC 8008DF5C AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 7CEC0 8008DF60 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 7CEC4 8008DF64 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 7CEC8 8008DF68 37180002 */  ori     $t8, $t8, 0x0002           ## $t8 = D8380002
/* 7CECC 8008DF6C 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 7CED0 8008DF70 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 7CED4 8008DF74 AC8F02C0 */  sw      $t7, 0x02C0($a0)           ## 000002C0
/* 7CED8 8008DF78 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 7CEDC 8008DF7C AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 7CEE0 8008DF80 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 7CEE4 8008DF84 3C0DE700 */  lui     $t5, 0xE700                ## $t5 = E7000000
/* 7CEE8 8008DF88 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 7CEEC 8008DF8C AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 7CEF0 8008DF90 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 7CEF4 8008DF94 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
.L8008DF98:
/* 7CEF8 8008DF98 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 7CEFC 8008DF9C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 7CF00 8008DFA0 03E00008 */  jr      $ra
/* 7CF04 8008DFA4 00000000 */  nop


glabel func_8008DFA8
/* 7CF08 8008DFA8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 7CF0C 8008DFAC AFB60038 */  sw      $s6, 0x0038($sp)
/* 7CF10 8008DFB0 AFB20028 */  sw      $s2, 0x0028($sp)
/* 7CF14 8008DFB4 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 7CF18 8008DFB8 8FB60064 */  lw      $s6, 0x0064($sp)
/* 7CF1C 8008DFBC AFBF0044 */  sw      $ra, 0x0044($sp)
/* 7CF20 8008DFC0 AFBE0040 */  sw      $s8, 0x0040($sp)
/* 7CF24 8008DFC4 AFB7003C */  sw      $s7, 0x003C($sp)
/* 7CF28 8008DFC8 AFB50034 */  sw      $s5, 0x0034($sp)
/* 7CF2C 8008DFCC AFB40030 */  sw      $s4, 0x0030($sp)
/* 7CF30 8008DFD0 AFB3002C */  sw      $s3, 0x002C($sp)
/* 7CF34 8008DFD4 AFB10024 */  sw      $s1, 0x0024($sp)
/* 7CF38 8008DFD8 AFB00020 */  sw      $s0, 0x0020($sp)
/* 7CF3C 8008DFDC AFA40048 */  sw      $a0, 0x0048($sp)
/* 7CF40 8008DFE0 AFA5004C */  sw      $a1, 0x004C($sp)
/* 7CF44 8008DFE4 AFA70054 */  sw      $a3, 0x0054($sp)
/* 7CF48 8008DFE8 8FAE004C */  lw      $t6, 0x004C($sp)
/* 7CF4C 8008DFEC 32CF0001 */  andi    $t7, $s6, 0x0001           ## $t7 = 00000000
/* 7CF50 8008DFF0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 7CF54 8008DFF4 8DD50000 */  lw      $s5, 0x0000($t6)           ## 00000000
/* 7CF58 8008DFF8 15E00005 */  bne     $t7, $zero, .L8008E010
/* 7CF5C 8008DFFC 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 7CF60 8008E000 24A5C000 */  addiu   $a1, $a1, 0xC000           ## $a1 = 8011C000
/* 7CF64 8008E004 8FA60048 */  lw      $a2, 0x0048($sp)
/* 7CF68 8008E008 0C023A33 */  jal     func_8008E8CC
/* 7CF6C 8008E00C 8FA7005C */  lw      $a3, 0x005C($sp)
.L8008E010:
/* 7CF70 8008E010 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 7CF74 8008E014 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 7CF78 8008E018 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 7CF7C 8008E01C 8C820000 */  lw      $v0, 0x0000($a0)           ## 00000000
/* 7CF80 8008E020 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 7CF84 8008E024 32CB0002 */  andi    $t3, $s6, 0x0002           ## $t3 = 00000000
/* 7CF88 8008E028 0002C100 */  sll     $t8, $v0,  4
/* 7CF8C 8008E02C 0018CF02 */  srl     $t9, $t8, 28
/* 7CF90 8008E030 00194080 */  sll     $t0, $t9,  2
/* 7CF94 8008E034 01284821 */  addu    $t1, $t1, $t0
/* 7CF98 8008E038 8D290C38 */  lw      $t1, 0x0C38($t1)           ## 80120C38
/* 7CF9C 8008E03C 00415024 */  and     $t2, $v0, $at
/* 7CFA0 8008E040 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 7CFA4 8008E044 012A9821 */  addu    $s3, $t1, $t2
/* 7CFA8 8008E048 15600015 */  bne     $t3, $zero, .L8008E0A0
/* 7CFAC 8008E04C 02619821 */  addu    $s3, $s3, $at
/* 7CFB0 8008E050 3C10DA38 */  lui     $s0, 0xDA38                ## $s0 = DA380000
/* 7CFB4 8008E054 36100003 */  ori     $s0, $s0, 0x0003           ## $s0 = DA380003
/* 7CFB8 8008E058 8EA602C0 */  lw      $a2, 0x02C0($s5)           ## 000002C0
/* 7CFBC 8008E05C 3C0D8010 */  lui     $t5, 0x8010                ## $t5 = 80100000
/* 7CFC0 8008E060 25ADEDB0 */  addiu   $t5, $t5, 0xEDB0           ## $t5 = 800FEDB0
/* 7CFC4 8008E064 24CC0008 */  addiu   $t4, $a2, 0x0008           ## $t4 = 00000008
/* 7CFC8 8008E068 AEAC02C0 */  sw      $t4, 0x02C0($s5)           ## 000002C0
/* 7CFCC 8008E06C ACCD0004 */  sw      $t5, 0x0004($a2)           ## 00000004
/* 7CFD0 8008E070 ACD00000 */  sw      $s0, 0x0000($a2)           ## 00000000
/* 7CFD4 8008E074 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 7CFD8 8008E078 0C023F26 */  jal     func_8008FC98
/* 7CFDC 8008E07C 26450004 */  addiu   $a1, $s2, 0x0004           ## $a1 = 00000004
/* 7CFE0 8008E080 50400049 */  beql    $v0, $zero, .L8008E1A8
/* 7CFE4 8008E084 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 7CFE8 8008E088 8EA602C0 */  lw      $a2, 0x02C0($s5)           ## 000002C0
/* 7CFEC 8008E08C 24CE0008 */  addiu   $t6, $a2, 0x0008           ## $t6 = 00000008
/* 7CFF0 8008E090 AEAE02C0 */  sw      $t6, 0x02C0($s5)           ## 000002C0
/* 7CFF4 8008E094 ACC20004 */  sw      $v0, 0x0004($a2)           ## 00000004
/* 7CFF8 8008E098 ACD00000 */  sw      $s0, 0x0000($a2)           ## 00000000
/* 7CFFC 8008E09C 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
.L8008E0A0:
/* 7D000 8008E0A0 908F0004 */  lbu     $t7, 0x0004($a0)           ## 00000004
/* 7D004 8008E0A4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 7D008 8008E0A8 02608825 */  or      $s1, $s3, $zero            ## $s1 = 00000000
/* 7D00C 8008E0AC 19E00036 */  blez    $t7, .L8008E188
/* 7D010 8008E0B0 8FB70060 */  lw      $s7, 0x0060($sp)
/* 7D014 8008E0B4 241E0004 */  addiu   $s8, $zero, 0x0004         ## $s8 = 00000004
/* 7D018 8008E0B8 24140001 */  addiu   $s4, $zero, 0x0001         ## $s4 = 00000001
/* 7D01C 8008E0BC 8FB30058 */  lw      $s3, 0x0058($sp)
.L8008E0C0:
/* 7D020 8008E0C0 12600007 */  beq     $s3, $zero, .L8008E0E0
/* 7D024 8008E0C4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000001
/* 7D028 8008E0C8 8FA40048 */  lw      $a0, 0x0048($sp)
/* 7D02C 8008E0CC 8FA5004C */  lw      $a1, 0x004C($sp)
/* 7D030 8008E0D0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 7D034 8008E0D4 0260F809 */  jalr    $ra, $s3
/* 7D038 8008E0D8 02403825 */  or      $a3, $s2, $zero            ## $a3 = 00000000
/* 7D03C 8008E0DC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
.L8008E0E0:
/* 7D040 8008E0E0 8E220000 */  lw      $v0, 0x0000($s1)           ## 00000000
/* 7D044 8008E0E4 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 7D048 8008E0E8 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 7D04C 8008E0EC 0002C900 */  sll     $t9, $v0,  4
/* 7D050 8008E0F0 00194702 */  srl     $t0, $t9, 28
/* 7D054 8008E0F4 00084880 */  sll     $t1, $t0,  2
/* 7D058 8008E0F8 01495021 */  addu    $t2, $t2, $t1
/* 7D05C 8008E0FC 8D4A0C38 */  lw      $t2, 0x0C38($t2)           ## 80120C38
/* 7D060 8008E100 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 7D064 8008E104 0041C024 */  and     $t8, $v0, $at
/* 7D068 8008E108 3C038000 */  lui     $v1, 0x8000                ## $v1 = 80000000
/* 7D06C 8008E10C 030A5821 */  addu    $t3, $t8, $t2
/* 7D070 8008E110 006B1821 */  addu    $v1, $v1, $t3
/* 7D074 8008E114 8C630008 */  lw      $v1, 0x0008($v1)           ## 80000008
/* 7D078 8008E118 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 7D07C 8008E11C 147E000A */  bne     $v1, $s8, .L8008E148
/* 7D080 8008E120 00000000 */  nop
/* 7D084 8008E124 14940008 */  bne     $a0, $s4, .L8008E148
/* 7D088 8008E128 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 7D08C 8008E12C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 7D090 8008E130 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 7D094 8008E134 02E03825 */  or      $a3, $s7, $zero            ## $a3 = 00000000
/* 7D098 8008E138 0C02376B */  jal     func_8008DDAC
/* 7D09C 8008E13C AFB60010 */  sw      $s6, 0x0010($sp)
/* 7D0A0 8008E140 1000000B */  beq     $zero, $zero, .L8008E170
/* 7D0A4 8008E144 8E4C0000 */  lw      $t4, 0x0000($s2)           ## 00000000
.L8008E148:
/* 7D0A8 8008E148 54610009 */  bnel    $v1, $at, .L8008E170
/* 7D0AC 8008E14C 8E4C0000 */  lw      $t4, 0x0000($s2)           ## 00000000
/* 7D0B0 8008E150 14940006 */  bne     $a0, $s4, .L8008E16C
/* 7D0B4 8008E154 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 7D0B8 8008E158 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 7D0BC 8008E15C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 7D0C0 8008E160 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 7D0C4 8008E164 0C0237A2 */  jal     func_8008DE88
/* 7D0C8 8008E168 AFB60010 */  sw      $s6, 0x0010($sp)
.L8008E16C:
/* 7D0CC 8008E16C 8E4C0000 */  lw      $t4, 0x0000($s2)           ## 00000000
.L8008E170:
/* 7D0D0 8008E170 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 7D0D4 8008E174 26310004 */  addiu   $s1, $s1, 0x0004           ## $s1 = 00000004
/* 7D0D8 8008E178 918D0004 */  lbu     $t5, 0x0004($t4)           ## 00000004
/* 7D0DC 8008E17C 020D082A */  slt     $at, $s0, $t5
/* 7D0E0 8008E180 1420FFCF */  bne     $at, $zero, .L8008E0C0
/* 7D0E4 8008E184 00000000 */  nop
.L8008E188:
/* 7D0E8 8008E188 8FAE0054 */  lw      $t6, 0x0054($sp)
/* 7D0EC 8008E18C 8FA40048 */  lw      $a0, 0x0048($sp)
/* 7D0F0 8008E190 8FA5004C */  lw      $a1, 0x004C($sp)
/* 7D0F4 8008E194 51C00004 */  beql    $t6, $zero, .L8008E1A8
/* 7D0F8 8008E198 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 7D0FC 8008E19C 01C0F809 */  jalr    $ra, $t6
/* 7D100 8008E1A0 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 7D104 8008E1A4 8FBF0044 */  lw      $ra, 0x0044($sp)
.L8008E1A8:
/* 7D108 8008E1A8 8FB00020 */  lw      $s0, 0x0020($sp)
/* 7D10C 8008E1AC 8FB10024 */  lw      $s1, 0x0024($sp)
/* 7D110 8008E1B0 8FB20028 */  lw      $s2, 0x0028($sp)
/* 7D114 8008E1B4 8FB3002C */  lw      $s3, 0x002C($sp)
/* 7D118 8008E1B8 8FB40030 */  lw      $s4, 0x0030($sp)
/* 7D11C 8008E1BC 8FB50034 */  lw      $s5, 0x0034($sp)
/* 7D120 8008E1C0 8FB60038 */  lw      $s6, 0x0038($sp)
/* 7D124 8008E1C4 8FB7003C */  lw      $s7, 0x003C($sp)
/* 7D128 8008E1C8 8FBE0040 */  lw      $s8, 0x0040($sp)
/* 7D12C 8008E1CC 03E00008 */  jr      $ra
/* 7D130 8008E1D0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


glabel func_8008E1D4
/* 7D134 8008E1D4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 7D138 8008E1D8 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 7D13C 8008E1DC 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 7D140 8008E1E0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 7D144 8008E1E4 AFA00018 */  sw      $zero, 0x0018($sp)
/* 7D148 8008E1E8 AFA0001C */  sw      $zero, 0x001C($sp)
/* 7D14C 8008E1EC 0C0237EA */  jal     func_8008DFA8
/* 7D150 8008E1F0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 7D154 8008E1F4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 7D158 8008E1F8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 7D15C 8008E1FC 03E00008 */  jr      $ra
/* 7D160 8008E200 00000000 */  nop


glabel func_8008E204
/* 7D164 8008E204 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 7D168 8008E208 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 7D16C 8008E20C 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 7D170 8008E210 8FAF003C */  lw      $t7, 0x003C($sp)
/* 7D174 8008E214 AFA00018 */  sw      $zero, 0x0018($sp)
/* 7D178 8008E218 AFA0001C */  sw      $zero, 0x001C($sp)
/* 7D17C 8008E21C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 7D180 8008E220 0C0237EA */  jal     func_8008DFA8
/* 7D184 8008E224 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 7D188 8008E228 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 7D18C 8008E22C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 7D190 8008E230 03E00008 */  jr      $ra
/* 7D194 8008E234 00000000 */  nop


glabel func_8008E238
/* 7D198 8008E238 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 7D19C 8008E23C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 7D1A0 8008E240 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 7D1A4 8008E244 8FAF003C */  lw      $t7, 0x003C($sp)
/* 7D1A8 8008E248 8FB80040 */  lw      $t8, 0x0040($sp)
/* 7D1AC 8008E24C AFA0001C */  sw      $zero, 0x001C($sp)
/* 7D1B0 8008E250 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 7D1B4 8008E254 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 7D1B8 8008E258 0C0237EA */  jal     func_8008DFA8
/* 7D1BC 8008E25C AFB80018 */  sw      $t8, 0x0018($sp)
/* 7D1C0 8008E260 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 7D1C4 8008E264 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 7D1C8 8008E268 03E00008 */  jr      $ra
/* 7D1CC 8008E26C 00000000 */  nop


glabel func_8008E270
/* 7D1D0 8008E270 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 7D1D4 8008E274 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 7D1D8 8008E278 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 7D1DC 8008E27C 8FAF003C */  lw      $t7, 0x003C($sp)
/* 7D1E0 8008E280 8FB80040 */  lw      $t8, 0x0040($sp)
/* 7D1E4 8008E284 8FB90044 */  lw      $t9, 0x0044($sp)
/* 7D1E8 8008E288 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 7D1EC 8008E28C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 7D1F0 8008E290 AFB80018 */  sw      $t8, 0x0018($sp)
/* 7D1F4 8008E294 0C0237EA */  jal     func_8008DFA8
/* 7D1F8 8008E298 AFB9001C */  sw      $t9, 0x001C($sp)
/* 7D1FC 8008E29C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 7D200 8008E2A0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 7D204 8008E2A4 03E00008 */  jr      $ra
/* 7D208 8008E2A8 00000000 */  nop


glabel func_8008E2AC
/* 7D20C 8008E2AC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 7D210 8008E2B0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 7D214 8008E2B4 AFA40058 */  sw      $a0, 0x0058($sp)
/* 7D218 8008E2B8 AFA5005C */  sw      $a1, 0x005C($sp)
/* 7D21C 8008E2BC AFA60060 */  sw      $a2, 0x0060($sp)
/* 7D220 8008E2C0 AFA70064 */  sw      $a3, 0x0064($sp)
/* 7D224 8008E2C4 8FAE005C */  lw      $t6, 0x005C($sp)
/* 7D228 8008E2C8 8FA40058 */  lw      $a0, 0x0058($sp)
/* 7D22C 8008E2CC 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 7D230 8008E2D0 2718C000 */  addiu   $t8, $t8, 0xC000           ## $t8 = 8011C000
/* 7D234 8008E2D4 000E7980 */  sll     $t7, $t6,  6
/* 7D238 8008E2D8 01F82821 */  addu    $a1, $t7, $t8
/* 7D23C 8008E2DC 27A60018 */  addiu   $a2, $sp, 0x0018           ## $a2 = FFFFFFC0
/* 7D240 8008E2E0 0C023B6E */  jal     func_8008EDB8
/* 7D244 8008E2E4 24840004 */  addiu   $a0, $a0, 0x0004           ## $a0 = 00000004
/* 7D248 8008E2E8 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFC0
/* 7D24C 8008E2EC 8FA50060 */  lw      $a1, 0x0060($sp)
/* 7D250 8008E2F0 0C023B42 */  jal     func_8008ED08
/* 7D254 8008E2F4 8FA60064 */  lw      $a2, 0x0064($sp)
/* 7D258 8008E2F8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 7D25C 8008E2FC 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 7D260 8008E300 03E00008 */  jr      $ra
/* 7D264 8008E304 00000000 */  nop
/* 7D268 8008E308 00000000 */  nop
/* 7D26C 8008E30C 00000000 */  nop
