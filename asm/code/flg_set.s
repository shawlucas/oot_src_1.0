# "Flag Set" part of the code file
#
# The purpose of this file's content is unclear but it supposedly relates to flags stored in the Save Context.
#
# Starts at VRAM: 8001E5C0 / VROM: A94520
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8001E5C0
/* 0D520 8001E5C0 27BDFDD0 */  addiu   $sp, $sp, 0xFDD0           ## $sp = FFFFFDD0
/* 0D524 8001E5C4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0D528 8001E5C8 AFB00020 */  sw      $s0, 0x0020($sp)
/* 0D52C 8001E5CC AFA40230 */  sw      $a0, 0x0230($sp)
/* 0D530 8001E5D0 3C0F800F */  lui     $t7, 0x800F                ## $t7 = 800F0000
/* 0D534 8001E5D4 25EF8050 */  addiu   $t7, $t7, 0x8050           ## $t7 = 800E8050
/* 0D538 8001E5D8 25EA01A4 */  addiu   $t2, $t7, 0x01A4           ## $t2 = 800E81F4
/* 0D53C 8001E5DC 27AE0088 */  addiu   $t6, $sp, 0x0088           ## $t6 = FFFFFE58
.L8001E5E0:
/* 0D540 8001E5E0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 800E8050
/* 0D544 8001E5E4 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 800E805C
/* 0D548 8001E5E8 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFE64
/* 0D54C 8001E5EC ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFE58
/* 0D550 8001E5F0 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 800E8054
/* 0D554 8001E5F4 ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFE5C
/* 0D558 8001E5F8 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 800E8058
/* 0D55C 8001E5FC 15EAFFF8 */  bne     $t7, $t2, .L8001E5E0
/* 0D560 8001E600 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFE60
/* 0D564 8001E604 8DF90000 */  lw      $t9, 0x0000($t7)           ## 800E805C
/* 0D568 8001E608 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFE64
/* 0D56C 8001E60C 8FAB0230 */  lw      $t3, 0x0230($sp)
/* 0D570 8001E610 8D620000 */  lw      $v0, 0x0000($t3)           ## 00000000
/* 0D574 8001E614 8C4402C0 */  lw      $a0, 0x02C0($v0)           ## 000002C0
/* 0D578 8001E618 AFA20084 */  sw      $v0, 0x0084($sp)
/* 0D57C 8001E61C 0C0286A8 */  jal     func_800A1AA0
/* 0D580 8001E620 AFA40078 */  sw      $a0, 0x0078($sp)
/* 0D584 8001E624 8FA70084 */  lw      $a3, 0x0084($sp)
/* 0D588 8001E628 27B00040 */  addiu   $s0, $sp, 0x0040           ## $s0 = FFFFFE10
/* 0D58C 8001E62C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0D590 8001E630 8CE602B0 */  lw      $a2, 0x02B0($a3)           ## 000002B0
/* 0D594 8001E634 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 0D598 8001E638 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D59C 8001E63C 24CC0008 */  addiu   $t4, $a2, 0x0008           ## $t4 = 00000008
/* 0D5A0 8001E640 ACEC02B0 */  sw      $t4, 0x02B0($a3)           ## 000002B0
/* 0D5A4 8001E644 ACC20004 */  sw      $v0, 0x0004($a2)           ## 00000004
/* 0D5A8 8001E648 ACCD0000 */  sw      $t5, 0x0000($a2)           ## 00000000
/* 0D5AC 8001E64C 0C03312B */  jal     GfxPrint_Ctor
/* 0D5B0 8001E650 AFA5007C */  sw      $a1, 0x007C($sp)
/* 0D5B4 8001E654 8FA5007C */  lw      $a1, 0x007C($sp)
/* 0D5B8 8001E658 0C033142 */  jal     GfxPrint_Open
/* 0D5BC 8001E65C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D5C0 8001E660 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 0D5C4 8001E664 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0D5C8 8001E668 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D5CC 8001E66C 240500FA */  addiu   $a1, $zero, 0x00FA         ## $a1 = 000000FA
/* 0D5D0 8001E670 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 0D5D4 8001E674 0C032F96 */  jal     GfxPrint_SetColor
/* 0D5D8 8001E678 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 0D5DC 8001E67C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D5E0 8001E680 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 0D5E4 8001E684 0C032FB2 */  jal     GfxPrint_SetPos
/* 0D5E8 8001E688 2406000D */  addiu   $a2, $zero, 0x000D         ## $a2 = 0000000D
/* 0D5EC 8001E68C 3C03800F */  lui     $v1, 0x800F                ## $v1 = 800F0000
/* 0D5F0 8001E690 8C6381F8 */  lw      $v1, -0x7E08($v1)          ## 800E81F8
/* 0D5F4 8001E694 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D5F8 8001E698 000378C0 */  sll     $t7, $v1,  3
/* 0D5FC 8001E69C 03AF2821 */  addu    $a1, $sp, $t7
/* 0D600 8001E6A0 0C033162 */  jal     GfxPrint_Printf
/* 0D604 8001E6A4 8CA5008C */  lw      $a1, 0x008C($a1)           ## 0000008C
/* 0D608 8001E6A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D60C 8001E6AC 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 0D610 8001E6B0 0C032FB2 */  jal     GfxPrint_SetPos
/* 0D614 8001E6B4 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 0D618 8001E6B8 2402000F */  addiu   $v0, $zero, 0x000F         ## $v0 = 0000000F
.L8001E6BC:
/* 0D61C 8001E6BC 3C05800F */  lui     $a1, 0x800F                ## $a1 = 800F0000
/* 0D620 8001E6C0 8CA581FC */  lw      $a1, -0x7E04($a1)          ## 800E81FC
/* 0D624 8001E6C4 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 0D628 8001E6C8 AC228BD0 */  sw      $v0, -0x7430($at)          ## 80118BD0
/* 0D62C 8001E6CC 1445000A */  bne     $v0, $a1, .L8001E6F8
/* 0D630 8001E6D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D634 8001E6D4 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 0D638 8001E6D8 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 0D63C 8001E6DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D640 8001E6E0 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 0D644 8001E6E4 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 0D648 8001E6E8 0C032F96 */  jal     GfxPrint_SetColor
/* 0D64C 8001E6EC 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 0D650 8001E6F0 10000007 */  beq     $zero, $zero, .L8001E710
/* 0D654 8001E6F4 00000000 */  nop
.L8001E6F8:
/* 0D658 8001E6F8 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 0D65C 8001E6FC AFB80010 */  sw      $t8, 0x0010($sp)
/* 0D660 8001E700 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 0D664 8001E704 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 0D668 8001E708 0C032F96 */  jal     GfxPrint_SetColor
/* 0D66C 8001E70C 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
.L8001E710:
/* 0D670 8001E710 3C03800F */  lui     $v1, 0x800F                ## $v1 = 800F0000
/* 0D674 8001E714 8C6381F8 */  lw      $v1, -0x7E08($v1)          ## 800E81F8
/* 0D678 8001E718 3C028012 */  lui     $v0, 0x8012                ## $v0 = 80120000
/* 0D67C 8001E71C 8C428BD0 */  lw      $v0, -0x7430($v0)          ## 80118BD0
/* 0D680 8001E720 0003C8C0 */  sll     $t9, $v1,  3
/* 0D684 8001E724 03B95821 */  addu    $t3, $sp, $t9
/* 0D688 8001E728 8D6B0088 */  lw      $t3, 0x0088($t3)           ## 00000088
/* 0D68C 8001E72C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0D690 8001E730 004D5004 */  sllv    $t2, $t5, $v0
/* 0D694 8001E734 956C0000 */  lhu     $t4, 0x0000($t3)           ## 00000000
/* 0D698 8001E738 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D69C 8001E73C 3C058010 */  lui     $a1, 0x8010                ## $a1 = 80100000
/* 0D6A0 8001E740 018A7824 */  and     $t7, $t4, $t2
/* 0D6A4 8001E744 11E00007 */  beq     $t7, $zero, .L8001E764
/* 0D6A8 8001E748 00000000 */  nop
/* 0D6AC 8001E74C 3C058010 */  lui     $a1, 0x8010                ## $a1 = 80100000
/* 0D6B0 8001E750 24A56418 */  addiu   $a1, $a1, 0x6418           ## $a1 = 80106418
/* 0D6B4 8001E754 0C033162 */  jal     GfxPrint_Printf
/* 0D6B8 8001E758 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D6BC 8001E75C 10000003 */  beq     $zero, $zero, .L8001E76C
/* 0D6C0 8001E760 00000000 */  nop
.L8001E764:
/* 0D6C4 8001E764 0C033162 */  jal     GfxPrint_Printf
/* 0D6C8 8001E768 24A5641C */  addiu   $a1, $a1, 0x641C           ## $a1 = 0000641C
.L8001E76C:
/* 0D6CC 8001E76C 3C028012 */  lui     $v0, 0x8012                ## $v0 = 80120000
/* 0D6D0 8001E770 8C428BD0 */  lw      $v0, -0x7430($v0)          ## 80118BD0
/* 0D6D4 8001E774 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D6D8 8001E778 3C058010 */  lui     $a1, 0x8010                ## $a1 = 80100000
/* 0D6DC 8001E77C 304E0003 */  andi    $t6, $v0, 0x0003           ## $t6 = 00000000
/* 0D6E0 8001E780 55C00006 */  bnel    $t6, $zero, .L8001E79C
/* 0D6E4 8001E784 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = 8011FFFF
/* 0D6E8 8001E788 0C033162 */  jal     GfxPrint_Printf
/* 0D6EC 8001E78C 24A56420 */  addiu   $a1, $a1, 0x6420           ## $a1 = 80106420
/* 0D6F0 8001E790 3C028012 */  lui     $v0, 0x8012                ## $v0 = 80120000
/* 0D6F4 8001E794 8C428BD0 */  lw      $v0, -0x7430($v0)          ## 80118BD0
/* 0D6F8 8001E798 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = 8011FFFF
.L8001E79C:
/* 0D6FC 8001E79C 0441FFC7 */  bgez    $v0, .L8001E6BC
/* 0D700 8001E7A0 00000000 */  nop
/* 0D704 8001E7A4 8FA70230 */  lw      $a3, 0x0230($sp)
/* 0D708 8001E7A8 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 0D70C 8001E7AC AC228BD0 */  sw      $v0, -0x7430($at)          ## 80118BD0
/* 0D710 8001E7B0 94E60020 */  lhu     $a2, 0x0020($a3)           ## 00000020
/* 0D714 8001E7B4 24030200 */  addiu   $v1, $zero, 0x0200         ## $v1 = 00000200
/* 0D718 8001E7B8 24080100 */  addiu   $t0, $zero, 0x0100         ## $t0 = 00000100
/* 0D71C 8001E7BC 30D80200 */  andi    $t8, $a2, 0x0200           ## $t8 = 00000000
/* 0D720 8001E7C0 14780009 */  bne     $v1, $t8, .L8001E7E8
/* 0D724 8001E7C4 24E70014 */  addiu   $a3, $a3, 0x0014           ## $a3 = 00000014
/* 0D728 8001E7C8 3C05800F */  lui     $a1, 0x800F                ## $a1 = 800F0000
/* 0D72C 8001E7CC 8CA581FC */  lw      $a1, -0x7E04($a1)          ## 800E81FC
/* 0D730 8001E7D0 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 0D734 8001E7D4 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D738 8001E7D8 AC248200 */  sw      $a0, -0x7E00($at)          ## 800E8200
/* 0D73C 8001E7DC 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D740 8001E7E0 24A50001 */  addiu   $a1, $a1, 0x0001           ## $a1 = 800F0001
/* 0D744 8001E7E4 AC2581FC */  sw      $a1, -0x7E04($at)          ## 800E81FC
.L8001E7E8:
/* 0D748 8001E7E8 3C04800F */  lui     $a0, 0x800F                ## $a0 = 800F0000
/* 0D74C 8001E7EC 3C05800F */  lui     $a1, 0x800F                ## $a1 = 800F0000
/* 0D750 8001E7F0 30D90100 */  andi    $t9, $a2, 0x0100           ## $t9 = 00000000
/* 0D754 8001E7F4 8CA581FC */  lw      $a1, -0x7E04($a1)          ## 800E81FC
/* 0D758 8001E7F8 15190003 */  bne     $t0, $t9, .L8001E808
/* 0D75C 8001E7FC 8C848200 */  lw      $a0, -0x7E00($a0)          ## 800E8200
/* 0D760 8001E800 24A5FFFF */  addiu   $a1, $a1, 0xFFFF           ## $a1 = 800EFFFF
/* 0D764 8001E804 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
.L8001E808:
/* 0D768 8001E808 1480000B */  bne     $a0, $zero, .L8001E838
/* 0D76C 8001E80C 30CC0800 */  andi    $t4, $a2, 0x0800           ## $t4 = 00000000
/* 0D770 8001E810 94E20000 */  lhu     $v0, 0x0000($a3)           ## 00000014
/* 0D774 8001E814 304B0200 */  andi    $t3, $v0, 0x0200           ## $t3 = 00000200
/* 0D778 8001E818 146B0003 */  bne     $v1, $t3, .L8001E828
/* 0D77C 8001E81C 304D0100 */  andi    $t5, $v0, 0x0100           ## $t5 = 00000100
/* 0D780 8001E820 24A50001 */  addiu   $a1, $a1, 0x0001           ## $a1 = 800F0000
/* 0D784 8001E824 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
.L8001E828:
/* 0D788 8001E828 550D0004 */  bnel    $t0, $t5, .L8001E83C
/* 0D78C 8001E82C 24080800 */  addiu   $t0, $zero, 0x0800         ## $t0 = 00000800
/* 0D790 8001E830 24A5FFFF */  addiu   $a1, $a1, 0xFFFF           ## $a1 = 800EFFFF
/* 0D794 8001E834 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
.L8001E838:
/* 0D798 8001E838 24080800 */  addiu   $t0, $zero, 0x0800         ## $t0 = 00000800
.L8001E83C:
/* 0D79C 8001E83C 150C000A */  bne     $t0, $t4, .L8001E868
/* 0D7A0 8001E840 30A5000F */  andi    $a1, $a1, 0x000F           ## $a1 = 0000000F
/* 0D7A4 8001E844 3C03800F */  lui     $v1, 0x800F                ## $v1 = 800F0000
/* 0D7A8 8001E848 8C6381F8 */  lw      $v1, -0x7E08($v1)          ## 800E81F8
/* 0D7AC 8001E84C 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 0D7B0 8001E850 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D7B4 8001E854 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 800EFFFF
/* 0D7B8 8001E858 04610002 */  bgez    $v1, .L8001E864
/* 0D7BC 8001E85C 00000000 */  nop
/* 0D7C0 8001E860 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8001E864:
/* 0D7C4 8001E864 AC2381F8 */  sw      $v1, -0x7E08($at)          ## 800E81F8
.L8001E868:
/* 0D7C8 8001E868 3C03800F */  lui     $v1, 0x800F                ## $v1 = 800F0000
/* 0D7CC 8001E86C 24090400 */  addiu   $t1, $zero, 0x0400         ## $t1 = 00000400
/* 0D7D0 8001E870 30CA0400 */  andi    $t2, $a2, 0x0400           ## $t2 = 00000000
/* 0D7D4 8001E874 152A0009 */  bne     $t1, $t2, .L8001E89C
/* 0D7D8 8001E878 8C6381F8 */  lw      $v1, -0x7E08($v1)          ## 800E81F8
/* 0D7DC 8001E87C 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 800F0001
/* 0D7E0 8001E880 000378C0 */  sll     $t7, $v1,  3
/* 0D7E4 8001E884 03AF7021 */  addu    $t6, $sp, $t7
/* 0D7E8 8001E888 8DCE0088 */  lw      $t6, 0x0088($t6)           ## 00000088
/* 0D7EC 8001E88C 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 0D7F0 8001E890 15C00002 */  bne     $t6, $zero, .L8001E89C
/* 0D7F4 8001E894 00000000 */  nop
/* 0D7F8 8001E898 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 800F0000
.L8001E89C:
/* 0D7FC 8001E89C 14800013 */  bne     $a0, $zero, .L8001E8EC
/* 0D800 8001E8A0 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D804 8001E8A4 94E20000 */  lhu     $v0, 0x0000($a3)           ## 00000014
/* 0D808 8001E8A8 30580800 */  andi    $t8, $v0, 0x0800           ## $t8 = 00000800
/* 0D80C 8001E8AC 15180005 */  bne     $t0, $t8, .L8001E8C4
/* 0D810 8001E8B0 30590400 */  andi    $t9, $v0, 0x0400           ## $t9 = 00000400
/* 0D814 8001E8B4 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 800EFFFF
/* 0D818 8001E8B8 04610002 */  bgez    $v1, .L8001E8C4
/* 0D81C 8001E8BC 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 0D820 8001E8C0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8001E8C4:
/* 0D824 8001E8C4 15390009 */  bne     $t1, $t9, .L8001E8EC
/* 0D828 8001E8C8 00000000 */  nop
/* 0D82C 8001E8CC 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 0D830 8001E8D0 000358C0 */  sll     $t3, $v1,  3
/* 0D834 8001E8D4 03AB6821 */  addu    $t5, $sp, $t3
/* 0D838 8001E8D8 8DAD0088 */  lw      $t5, 0x0088($t5)           ## 00000188
/* 0D83C 8001E8DC 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 0D840 8001E8E0 15A00002 */  bne     $t5, $zero, .L8001E8EC
/* 0D844 8001E8E4 00000000 */  nop
/* 0D848 8001E8E8 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 00000000
.L8001E8EC:
/* 0D84C 8001E8EC AC2381F8 */  sw      $v1, -0x7E08($at)          ## 800E81F8
/* 0D850 8001E8F0 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D854 8001E8F4 AC2581FC */  sw      $a1, -0x7E04($at)          ## 800E81FC
/* 0D858 8001E8F8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0D85C 8001E8FC 30CC8000 */  andi    $t4, $a2, 0x8000           ## $t4 = 00000000
/* 0D860 8001E900 1581000C */  bne     $t4, $at, .L8001E934
/* 0D864 8001E904 000350C0 */  sll     $t2, $v1,  3
/* 0D868 8001E908 03AA1021 */  addu    $v0, $sp, $t2
/* 0D86C 8001E90C 8C420088 */  lw      $v0, 0x0088($v0)           ## 80120087
/* 0D870 8001E910 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0D874 8001E914 00AEC004 */  sllv    $t8, $t6, $a1
/* 0D878 8001E918 944F0000 */  lhu     $t7, 0x0000($v0)           ## 8011FFFF
/* 0D87C 8001E91C 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D880 8001E920 01F8C826 */  xor     $t9, $t7, $t8
/* 0D884 8001E924 A4590000 */  sh      $t9, 0x0000($v0)           ## 8011FFFF
/* 0D888 8001E928 AC2381F8 */  sw      $v1, -0x7E08($at)          ## 800E81F8
/* 0D88C 8001E92C 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D890 8001E930 AC2581FC */  sw      $a1, -0x7E04($at)          ## 800E81FC
.L8001E934:
/* 0D894 8001E934 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D898 8001E938 10800004 */  beq     $a0, $zero, .L8001E94C
/* 0D89C 8001E93C AC248200 */  sw      $a0, -0x7E00($at)          ## 800E8200
/* 0D8A0 8001E940 2484FFFF */  addiu   $a0, $a0, 0xFFFF           ## $a0 = 00000001
/* 0D8A4 8001E944 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 0D8A8 8001E948 AC248200 */  sw      $a0, -0x7E00($at)          ## 800E8200
.L8001E94C:
/* 0D8AC 8001E94C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D8B0 8001E950 0C033154 */  jal     func_800CC550
/* 0D8B4 8001E954 AFA70030 */  sw      $a3, 0x0030($sp)
/* 0D8B8 8001E958 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFE10
/* 0D8BC 8001E95C 0C033140 */  jal     GfxPrint_Dtor
/* 0D8C0 8001E960 AFA2007C */  sw      $v0, 0x007C($sp)
/* 0D8C4 8001E964 8FA5007C */  lw      $a1, 0x007C($sp)
/* 0D8C8 8001E968 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
/* 0D8CC 8001E96C 3C0BDF00 */  lui     $t3, 0xDF00                ## $t3 = DF000000
/* 0D8D0 8001E970 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0D8D4 8001E974 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0D8D8 8001E978 24A50008 */  addiu   $a1, $a1, 0x0008           ## $a1 = 00000008
/* 0D8DC 8001E97C 8FA40078 */  lw      $a0, 0x0078($sp)
/* 0D8E0 8001E980 0C0286AB */  jal     func_800A1AAC
/* 0D8E4 8001E984 AFA5007C */  sw      $a1, 0x007C($sp)
/* 0D8E8 8001E988 8FA5007C */  lw      $a1, 0x007C($sp)
/* 0D8EC 8001E98C 8FAD0084 */  lw      $t5, 0x0084($sp)
/* 0D8F0 8001E990 8FA70030 */  lw      $a3, 0x0030($sp)
/* 0D8F4 8001E994 ADA502C0 */  sw      $a1, 0x02C0($t5)           ## 000002C0
/* 0D8F8 8001E998 94EC000C */  lhu     $t4, 0x000C($a3)           ## 0000000C
/* 0D8FC 8001E99C 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 0D900 8001E9A0 8FAE0230 */  lw      $t6, 0x0230($sp)
/* 0D904 8001E9A4 318A0020 */  andi    $t2, $t4, 0x0020           ## $t2 = 00000000
/* 0D908 8001E9A8 15410003 */  bne     $t2, $at, .L8001E9B8
/* 0D90C 8001E9AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0D910 8001E9B0 002E0821 */  addu    $at, $at, $t6
/* 0D914 8001E9B4 A4200936 */  sh      $zero, 0x0936($at)         ## 00010936
.L8001E9B8:
/* 0D918 8001E9B8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 0D91C 8001E9BC 8FB00020 */  lw      $s0, 0x0020($sp)
/* 0D920 8001E9C0 27BD0230 */  addiu   $sp, $sp, 0x0230           ## $sp = 00000000
/* 0D924 8001E9C4 03E00008 */  jr      $ra
/* 0D928 8001E9C8 00000000 */  nop
/* 0D92C 8001E9CC 00000000 */  nop
