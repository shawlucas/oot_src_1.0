.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8007CDD0
/* 6BD30 8007CDD0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 6BD34 8007CDD4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6BD38 8007CDD8 AFA40030 */  sw      $a0, 0x0030($sp)
/* 6BD3C 8007CDDC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 6BD40 8007CDE0 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFE8
/* 6BD44 8007CDE4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 6BD48 8007CDE8 0C019E14 */  jal     func_80067850
/* 6BD4C 8007CDEC AFA70034 */  sw      $a3, 0x0034($sp)
/* 6BD50 8007CDF0 8FA70034 */  lw      $a3, 0x0034($sp)
/* 6BD54 8007CDF4 C7A60018 */  lwc1    $f6, 0x0018($sp)
/* 6BD58 8007CDF8 C7B0001C */  lwc1    $f16, 0x001C($sp)
/* 6BD5C 8007CDFC C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
/* 6BD60 8007CE00 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFFF4
/* 6BD64 8007CE04 8FA20030 */  lw      $v0, 0x0030($sp)
/* 6BD68 8007CE08 46062200 */  add.s   $f8, $f4, $f6
/* 6BD6C 8007CE0C C7A60020 */  lwc1    $f6, 0x0020($sp)
/* 6BD70 8007CE10 E7A80024 */  swc1    $f8, 0x0024($sp)
/* 6BD74 8007CE14 C4EA0004 */  lwc1    $f10, 0x0004($a3)          ## 00000004
/* 6BD78 8007CE18 46105480 */  add.s   $f18, $f10, $f16
/* 6BD7C 8007CE1C E7B20028 */  swc1    $f18, 0x0028($sp)
/* 6BD80 8007CE20 C4E40008 */  lwc1    $f4, 0x0008($a3)           ## 00000008
/* 6BD84 8007CE24 46062200 */  add.s   $f8, $f4, $f6
/* 6BD88 8007CE28 E7A8002C */  swc1    $f8, 0x002C($sp)
/* 6BD8C 8007CE2C 8DD80000 */  lw      $t8, 0x0000($t6)           ## FFFFFFF4
/* 6BD90 8007CE30 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 6BD94 8007CE34 8DCF0004 */  lw      $t7, 0x0004($t6)           ## FFFFFFF8
/* 6BD98 8007CE38 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 6BD9C 8007CE3C 8DD80008 */  lw      $t8, 0x0008($t6)           ## FFFFFFFC
/* 6BDA0 8007CE40 AC580008 */  sw      $t8, 0x0008($v0)           ## 00000008
/* 6BDA4 8007CE44 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6BDA8 8007CE48 03E00008 */  jr      $ra
/* 6BDAC 8007CE4C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


glabel func_8007CE50
/* 6BDB0 8007CE50 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 6BDB4 8007CE54 F7B40010 */  sdc1    $f20, 0x0010($sp)
/* 6BDB8 8007CE58 AFB0001C */  sw      $s0, 0x001C($sp)
/* 6BDBC 8007CE5C AFA7006C */  sw      $a3, 0x006C($sp)
/* 6BDC0 8007CE60 4486A000 */  mtc1    $a2, $f20                  ## $f20 = 0.00
/* 6BDC4 8007CE64 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 6BDC8 8007CE68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 6BDCC 8007CE6C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 6BDD0 8007CE70 AFB10020 */  sw      $s1, 0x0020($sp)
/* 6BDD4 8007CE74 AFA50064 */  sw      $a1, 0x0064($sp)
/* 6BDD8 8007CE78 8E020004 */  lw      $v0, 0x0004($s0)           ## 00000004
/* 6BDDC 8007CE7C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 6BDE0 8007CE80 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFDC
/* 6BDE4 8007CE84 24460050 */  addiu   $a2, $v0, 0x0050           ## $a2 = 00000050
/* 6BDE8 8007CE88 11C00030 */  beq     $t6, $zero, .L8007CF4C
/* 6BDEC 8007CE8C 2451005C */  addiu   $s1, $v0, 0x005C           ## $s1 = 0000005C
/* 6BDF0 8007CE90 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 6BDF4 8007CE94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0000005C
/* 6BDF8 8007CE98 AFA70064 */  sw      $a3, 0x0064($sp)
/* 6BDFC 8007CE9C E7A0004C */  swc1    $f0, 0x004C($sp)
/* 6BE00 8007CEA0 E7A00050 */  swc1    $f0, 0x0050($sp)
/* 6BE04 8007CEA4 0C019EA1 */  jal     func_80067A84
/* 6BE08 8007CEA8 E7A00054 */  swc1    $f0, 0x0054($sp)
/* 6BE0C 8007CEAC 860F000C */  lh      $t7, 0x000C($s0)           ## 0000000C
/* 6BE10 8007CEB0 87B80040 */  lh      $t8, 0x0040($sp)
/* 6BE14 8007CEB4 87AA0042 */  lh      $t2, 0x0042($sp)
/* 6BE18 8007CEB8 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 6BE1C 8007CEBC 27B1004C */  addiu   $s1, $sp, 0x004C           ## $s1 = FFFFFFEC
/* 6BE20 8007CEC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFEC
/* 6BE24 8007CEC4 468021A0 */  cvt.s.w $f6, $f4
/* 6BE28 8007CEC8 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 6BE2C 8007CECC 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFE4
/* 6BE30 8007CED0 46143202 */  mul.s   $f8, $f6, $f20
/* 6BE34 8007CED4 E7A80044 */  swc1    $f8, 0x0044($sp)
/* 6BE38 8007CED8 86190014 */  lh      $t9, 0x0014($s0)           ## 00000014
/* 6BE3C 8007CEDC 03194021 */  addu    $t0, $t8, $t9
/* 6BE40 8007CEE0 25094000 */  addiu   $t1, $t0, 0x4000           ## $t1 = 00004000
/* 6BE44 8007CEE4 A7A90048 */  sh      $t1, 0x0048($sp)
/* 6BE48 8007CEE8 860B0016 */  lh      $t3, 0x0016($s0)           ## 00000016
/* 6BE4C 8007CEEC 014B6021 */  addu    $t4, $t2, $t3
/* 6BE50 8007CEF0 0C01F374 */  jal     func_8007CDD0
/* 6BE54 8007CEF4 A7AC004A */  sh      $t4, 0x004A($sp)
/* 6BE58 8007CEF8 860D000E */  lh      $t5, 0x000E($s0)           ## 0000000E
/* 6BE5C 8007CEFC C7B2006C */  lwc1    $f18, 0x006C($sp)
/* 6BE60 8007CF00 87AE0040 */  lh      $t6, 0x0040($sp)
/* 6BE64 8007CF04 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 6BE68 8007CF08 87B90042 */  lh      $t9, 0x0042($sp)
/* 6BE6C 8007CF0C 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFEC
/* 6BE70 8007CF10 46805420 */  cvt.s.w $f16, $f10
/* 6BE74 8007CF14 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 6BE78 8007CF18 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFE4
/* 6BE7C 8007CF1C 46128102 */  mul.s   $f4, $f16, $f18
/* 6BE80 8007CF20 E7A40044 */  swc1    $f4, 0x0044($sp)
/* 6BE84 8007CF24 860F0014 */  lh      $t7, 0x0014($s0)           ## 00000014
/* 6BE88 8007CF28 01CFC021 */  addu    $t8, $t6, $t7
/* 6BE8C 8007CF2C A7B80048 */  sh      $t8, 0x0048($sp)
/* 6BE90 8007CF30 86080016 */  lh      $t0, 0x0016($s0)           ## 00000016
/* 6BE94 8007CF34 03284821 */  addu    $t1, $t9, $t0
/* 6BE98 8007CF38 252A4000 */  addiu   $t2, $t1, 0x4000           ## $t2 = 00004000
/* 6BE9C 8007CF3C 0C01F374 */  jal     func_8007CDD0
/* 6BEA0 8007CF40 A7AA004A */  sh      $t2, 0x004A($sp)
/* 6BEA4 8007CF44 1000001B */  beq     $zero, $zero, .L8007CFB4
/* 6BEA8 8007CF48 8FA70064 */  lw      $a3, 0x0064($sp)
.L8007CF4C:
/* 6BEAC 8007CF4C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 6BEB0 8007CF50 C7A4006C */  lwc1    $f4, 0x006C($sp)
/* 6BEB4 8007CF54 27B1004C */  addiu   $s1, $sp, 0x004C           ## $s1 = FFFFFFEC
/* 6BEB8 8007CF58 E7A0004C */  swc1    $f0, 0x004C($sp)
/* 6BEBC 8007CF5C 860B000C */  lh      $t3, 0x000C($s0)           ## 0000000C
/* 6BEC0 8007CF60 E7A00054 */  swc1    $f0, 0x0054($sp)
/* 6BEC4 8007CF64 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFEC
/* 6BEC8 8007CF68 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 6BECC 8007CF6C 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFEC
/* 6BED0 8007CF70 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFE4
/* 6BED4 8007CF74 46803220 */  cvt.s.w $f8, $f6
/* 6BED8 8007CF78 46144282 */  mul.s   $f10, $f8, $f20
/* 6BEDC 8007CF7C E7AA0050 */  swc1    $f10, 0x0050($sp)
/* 6BEE0 8007CF80 860C000E */  lh      $t4, 0x000E($s0)           ## 0000000E
/* 6BEE4 8007CF84 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 6BEE8 8007CF88 00000000 */  nop
/* 6BEEC 8007CF8C 468084A0 */  cvt.s.w $f18, $f16
/* 6BEF0 8007CF90 46049182 */  mul.s   $f6, $f18, $f4
/* 6BEF4 8007CF94 E7A60044 */  swc1    $f6, 0x0044($sp)
/* 6BEF8 8007CF98 860D0014 */  lh      $t5, 0x0014($s0)           ## 00000014
/* 6BEFC 8007CF9C A7AD0048 */  sh      $t5, 0x0048($sp)
/* 6BF00 8007CFA0 860E0016 */  lh      $t6, 0x0016($s0)           ## 00000016
/* 6BF04 8007CFA4 AFA70064 */  sw      $a3, 0x0064($sp)
/* 6BF08 8007CFA8 0C01F374 */  jal     func_8007CDD0
/* 6BF0C 8007CFAC A7AE004A */  sh      $t6, 0x004A($sp)
/* 6BF10 8007CFB0 8FA70064 */  lw      $a3, 0x0064($sp)
.L8007CFB4:
/* 6BF14 8007CFB4 8E380000 */  lw      $t8, 0x0000($s1)           ## FFFFFFEC
/* 6BF18 8007CFB8 27A20030 */  addiu   $v0, $sp, 0x0030           ## $v0 = FFFFFFD0
/* 6BF1C 8007CFBC 8E2F0004 */  lw      $t7, 0x0004($s1)           ## FFFFFFF0
/* 6BF20 8007CFC0 AC580000 */  sw      $t8, 0x0000($v0)           ## FFFFFFD0
/* 6BF24 8007CFC4 8E380008 */  lw      $t8, 0x0008($s1)           ## FFFFFFF4
/* 6BF28 8007CFC8 8C480000 */  lw      $t0, 0x0000($v0)           ## FFFFFFD0
/* 6BF2C 8007CFCC AC4F0004 */  sw      $t7, 0x0004($v0)           ## FFFFFFD4
/* 6BF30 8007CFD0 AC580008 */  sw      $t8, 0x0008($v0)           ## FFFFFFD8
/* 6BF34 8007CFD4 ACE8000C */  sw      $t0, 0x000C($a3)           ## 0000000C
/* 6BF38 8007CFD8 8C590004 */  lw      $t9, 0x0004($v0)           ## FFFFFFD4
/* 6BF3C 8007CFDC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 6BF40 8007CFE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 6BF44 8007CFE4 ACF90010 */  sw      $t9, 0x0010($a3)           ## 00000010
/* 6BF48 8007CFE8 8C480008 */  lw      $t0, 0x0008($v0)           ## FFFFFFD8
/* 6BF4C 8007CFEC 46144282 */  mul.s   $f10, $f8, $f20
/* 6BF50 8007CFF0 ACE80014 */  sw      $t0, 0x0014($a3)           ## 00000014
/* 6BF54 8007CFF4 8C4A0000 */  lw      $t2, 0x0000($v0)           ## FFFFFFD0
/* 6BF58 8007CFF8 ACEA0000 */  sw      $t2, 0x0000($a3)           ## 00000000
/* 6BF5C 8007CFFC 4600540D */  trunc.w.s $f16, $f10
/* 6BF60 8007D000 8C490004 */  lw      $t1, 0x0004($v0)           ## FFFFFFD4
/* 6BF64 8007D004 ACE90004 */  sw      $t1, 0x0004($a3)           ## 00000004
/* 6BF68 8007D008 8C4A0008 */  lw      $t2, 0x0008($v0)           ## FFFFFFD8
/* 6BF6C 8007D00C 440C8000 */  mfc1    $t4, $f16
/* 6BF70 8007D010 ACEA0008 */  sw      $t2, 0x0008($a3)           ## 00000008
/* 6BF74 8007D014 A4EC001A */  sh      $t4, 0x001A($a3)           ## 0000001A
/* 6BF78 8007D018 860D0012 */  lh      $t5, 0x0012($s0)           ## 00000012
/* 6BF7C 8007D01C 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 6BF80 8007D020 00000000 */  nop
/* 6BF84 8007D024 46809120 */  cvt.s.w $f4, $f18
/* 6BF88 8007D028 46142182 */  mul.s   $f6, $f4, $f20
/* 6BF8C 8007D02C 4600320D */  trunc.w.s $f8, $f6
/* 6BF90 8007D030 440F4000 */  mfc1    $t7, $f8
/* 6BF94 8007D034 00000000 */  nop
/* 6BF98 8007D038 A4EF0018 */  sh      $t7, 0x0018($a3)           ## 00000018
/* 6BF9C 8007D03C 86180010 */  lh      $t8, 0x0010($s0)           ## 00000010
/* 6BFA0 8007D040 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 6BFA4 8007D044 00000000 */  nop
/* 6BFA8 8007D048 46805420 */  cvt.s.w $f16, $f10
/* 6BFAC 8007D04C 46148482 */  mul.s   $f18, $f16, $f20
/* 6BFB0 8007D050 4600910D */  trunc.w.s $f4, $f18
/* 6BFB4 8007D054 44082000 */  mfc1    $t0, $f4
/* 6BFB8 8007D058 00000000 */  nop
/* 6BFBC 8007D05C A4E8001C */  sh      $t0, 0x001C($a3)           ## 0000001C
/* 6BFC0 8007D060 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 6BFC4 8007D064 D7B40010 */  ldc1    $f20, 0x0010($sp)
/* 6BFC8 8007D068 8FB0001C */  lw      $s0, 0x001C($sp)
/* 6BFCC 8007D06C 8FB10020 */  lw      $s1, 0x0020($sp)
/* 6BFD0 8007D070 03E00008 */  jr      $ra
/* 6BFD4 8007D074 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000


glabel func_8007D078
/* 6BFD8 8007D078 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 6BFDC 8007D07C AFB00018 */  sw      $s0, 0x0018($sp)
/* 6BFE0 8007D080 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 6BFE4 8007D084 AFBF001C */  sw      $ra, 0x001C($sp)
/* 6BFE8 8007D088 AFA5002C */  sw      $a1, 0x002C($sp)
/* 6BFEC 8007D08C 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6BFF0 8007D090 58600016 */  blezl   $v1, .L8007D0EC
/* 6BFF4 8007D094 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 6BFF8 8007D098 860E001A */  lh      $t6, 0x001A($s0)           ## 0000001A
/* 6BFFC 8007D09C 01C30019 */  multu   $t6, $v1
/* 6C000 8007D0A0 00002012 */  mflo    $a0
/* 6C004 8007D0A4 00042400 */  sll     $a0, $a0, 16
/* 6C008 8007D0A8 0C018DB1 */  jal     Math_Sins              ## sins?
/* 6C00C 8007D0AC 00042403 */  sra     $a0, $a0, 16
/* 6C010 8007D0B0 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 6C014 8007D0B4 E7A00020 */  swc1    $f0, 0x0020($sp)
/* 6C018 8007D0B8 C7A20020 */  lwc1    $f2, 0x0020($sp)
/* 6C01C 8007D0BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 6C020 8007D0C0 8FA5002C */  lw      $a1, 0x002C($sp)
/* 6C024 8007D0C4 46020102 */  mul.s   $f4, $f0, $f2
/* 6C028 8007D0C8 44061000 */  mfc1    $a2, $f2
/* 6C02C 8007D0CC 44072000 */  mfc1    $a3, $f4
/* 6C030 8007D0D0 0C01F394 */  jal     func_8007CE50
/* 6C034 8007D0D4 00000000 */  nop
/* 6C038 8007D0D8 860F001E */  lh      $t7, 0x001E($s0)           ## 0000001E
/* 6C03C 8007D0DC 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 6C040 8007D0E0 A618001E */  sh      $t8, 0x001E($s0)           ## 0000001E
/* 6C044 8007D0E4 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6C048 8007D0E8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8007D0EC:
/* 6C04C 8007D0EC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 6C050 8007D0F0 8FB00018 */  lw      $s0, 0x0018($sp)
/* 6C054 8007D0F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 6C058 8007D0F8 03E00008 */  jr      $ra
/* 6C05C 8007D0FC 00000000 */  nop


glabel func_8007D100
/* 6C060 8007D100 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6C064 8007D104 AFB00018 */  sw      $s0, 0x0018($sp)
/* 6C068 8007D108 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 6C06C 8007D10C AFBF001C */  sw      $ra, 0x001C($sp)
/* 6C070 8007D110 AFA50024 */  sw      $a1, 0x0024($sp)
/* 6C074 8007D114 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6C078 8007D118 58600011 */  blezl   $v1, .L8007D160
/* 6C07C 8007D11C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 6C080 8007D120 860E001A */  lh      $t6, 0x001A($s0)           ## 0000001A
/* 6C084 8007D124 01C30019 */  multu   $t6, $v1
/* 6C088 8007D128 00002012 */  mflo    $a0
/* 6C08C 8007D12C 00042400 */  sll     $a0, $a0, 16
/* 6C090 8007D130 0C018DB1 */  jal     Math_Sins              ## sins?
/* 6C094 8007D134 00042403 */  sra     $a0, $a0, 16
/* 6C098 8007D138 44060000 */  mfc1    $a2, $f0
/* 6C09C 8007D13C 44070000 */  mfc1    $a3, $f0
/* 6C0A0 8007D140 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 6C0A4 8007D144 0C01F394 */  jal     func_8007CE50
/* 6C0A8 8007D148 8FA50024 */  lw      $a1, 0x0024($sp)
/* 6C0AC 8007D14C 860F001E */  lh      $t7, 0x001E($s0)           ## 0000001E
/* 6C0B0 8007D150 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 6C0B4 8007D154 A618001E */  sh      $t8, 0x001E($s0)           ## 0000001E
/* 6C0B8 8007D158 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6C0BC 8007D15C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8007D160:
/* 6C0C0 8007D160 8FBF001C */  lw      $ra, 0x001C($sp)
/* 6C0C4 8007D164 8FB00018 */  lw      $s0, 0x0018($sp)
/* 6C0C8 8007D168 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 6C0CC 8007D16C 03E00008 */  jr      $ra
/* 6C0D0 8007D170 00000000 */  nop


glabel func_8007D174
/* 6C0D4 8007D174 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 6C0D8 8007D178 AFB00018 */  sw      $s0, 0x0018($sp)
/* 6C0DC 8007D17C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 6C0E0 8007D180 AFBF001C */  sw      $ra, 0x001C($sp)
/* 6C0E4 8007D184 AFA5002C */  sw      $a1, 0x002C($sp)
/* 6C0E8 8007D188 860E001E */  lh      $t6, 0x001E($s0)           ## 0000001E
/* 6C0EC 8007D18C 8618001A */  lh      $t8, 0x001A($s0)           ## 0000001A
/* 6C0F0 8007D190 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 6C0F4 8007D194 A60F001E */  sh      $t7, 0x001E($s0)           ## 0000001E
/* 6C0F8 8007D198 8619001E */  lh      $t9, 0x001E($s0)           ## 0000001E
/* 6C0FC 8007D19C 3328000F */  andi    $t0, $t9, 0x000F           ## $t0 = 00000000
/* 6C100 8007D1A0 250901F4 */  addiu   $t1, $t0, 0x01F4           ## $t1 = 000001F4
/* 6C104 8007D1A4 03090019 */  multu   $t8, $t1
/* 6C108 8007D1A8 00002012 */  mflo    $a0
/* 6C10C 8007D1AC 00042400 */  sll     $a0, $a0, 16
/* 6C110 8007D1B0 0C018DB1 */  jal     Math_Sins              ## sins?
/* 6C114 8007D1B4 00042403 */  sra     $a0, $a0, 16
/* 6C118 8007D1B8 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 6C11C 8007D1BC E7A00020 */  swc1    $f0, 0x0020($sp)
/* 6C120 8007D1C0 C7A20020 */  lwc1    $f2, 0x0020($sp)
/* 6C124 8007D1C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 6C128 8007D1C8 8FA5002C */  lw      $a1, 0x002C($sp)
/* 6C12C 8007D1CC 46020102 */  mul.s   $f4, $f0, $f2
/* 6C130 8007D1D0 44061000 */  mfc1    $a2, $f2
/* 6C134 8007D1D4 44072000 */  mfc1    $a3, $f4
/* 6C138 8007D1D8 0C01F394 */  jal     func_8007CE50
/* 6C13C 8007D1DC 00000000 */  nop
/* 6C140 8007D1E0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 6C144 8007D1E4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 6C148 8007D1E8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 6C14C 8007D1EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 6C150 8007D1F0 03E00008 */  jr      $ra
/* 6C154 8007D1F4 00000000 */  nop


glabel func_8007D1F8
/* 6C158 8007D1F8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6C15C 8007D1FC AFB00018 */  sw      $s0, 0x0018($sp)
/* 6C160 8007D200 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 6C164 8007D204 AFBF001C */  sw      $ra, 0x001C($sp)
/* 6C168 8007D208 AFA50024 */  sw      $a1, 0x0024($sp)
/* 6C16C 8007D20C 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6C170 8007D210 5860001A */  blezl   $v1, .L8007D27C
/* 6C174 8007D214 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 6C178 8007D218 860E001A */  lh      $t6, 0x001A($s0)           ## 0000001A
/* 6C17C 8007D21C 01C30019 */  multu   $t6, $v1
/* 6C180 8007D220 00002012 */  mflo    $a0
/* 6C184 8007D224 00042400 */  sll     $a0, $a0, 16
/* 6C188 8007D228 0C018DB1 */  jal     Math_Sins              ## sins?
/* 6C18C 8007D22C 00042403 */  sra     $a0, $a0, 16
/* 6C190 8007D230 860F001E */  lh      $t7, 0x001E($s0)           ## 0000001E
/* 6C194 8007D234 86180002 */  lh      $t8, 0x0002($s0)           ## 00000002
/* 6C198 8007D238 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 6C19C 8007D23C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 6C1A0 8007D240 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 6C1A4 8007D244 8FA50024 */  lw      $a1, 0x0024($sp)
/* 6C1A8 8007D248 468021A0 */  cvt.s.w $f6, $f4
/* 6C1AC 8007D24C 468042A0 */  cvt.s.w $f10, $f8
/* 6C1B0 8007D250 460A3403 */  div.s   $f16, $f6, $f10
/* 6C1B4 8007D254 46100082 */  mul.s   $f2, $f0, $f16
/* 6C1B8 8007D258 44061000 */  mfc1    $a2, $f2
/* 6C1BC 8007D25C 44071000 */  mfc1    $a3, $f2
/* 6C1C0 8007D260 0C01F394 */  jal     func_8007CE50
/* 6C1C4 8007D264 00000000 */  nop
/* 6C1C8 8007D268 8619001E */  lh      $t9, 0x001E($s0)           ## 0000001E
/* 6C1CC 8007D26C 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 6C1D0 8007D270 A608001E */  sh      $t0, 0x001E($s0)           ## 0000001E
/* 6C1D4 8007D274 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6C1D8 8007D278 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8007D27C:
/* 6C1DC 8007D27C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 6C1E0 8007D280 8FB00018 */  lw      $s0, 0x0018($sp)
/* 6C1E4 8007D284 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 6C1E8 8007D288 03E00008 */  jr      $ra
/* 6C1EC 8007D28C 00000000 */  nop


glabel func_8007D290
/* 6C1F0 8007D290 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6C1F4 8007D294 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C1F8 8007D298 AFA50024 */  sw      $a1, 0x0024($sp)
/* 6C1FC 8007D29C 8483001E */  lh      $v1, 0x001E($a0)           ## 0000001E
/* 6C200 8007D2A0 58600013 */  blezl   $v1, .L8007D2F0
/* 6C204 8007D2A4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 6C208 8007D2A8 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 6C20C 8007D2AC AFA40020 */  sw      $a0, 0x0020($sp)
/* 6C210 8007D2B0 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 6C214 8007D2B4 E7A0001C */  swc1    $f0, 0x001C($sp)
/* 6C218 8007D2B8 C7A2001C */  lwc1    $f2, 0x001C($sp)
/* 6C21C 8007D2BC 8FA40020 */  lw      $a0, 0x0020($sp)
/* 6C220 8007D2C0 8FA50024 */  lw      $a1, 0x0024($sp)
/* 6C224 8007D2C4 46020102 */  mul.s   $f4, $f0, $f2
/* 6C228 8007D2C8 44061000 */  mfc1    $a2, $f2
/* 6C22C 8007D2CC 44072000 */  mfc1    $a3, $f4
/* 6C230 8007D2D0 0C01F394 */  jal     func_8007CE50
/* 6C234 8007D2D4 00000000 */  nop
/* 6C238 8007D2D8 8FA40020 */  lw      $a0, 0x0020($sp)
/* 6C23C 8007D2DC 848E001E */  lh      $t6, 0x001E($a0)           ## 0000001E
/* 6C240 8007D2E0 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 6C244 8007D2E4 A48F001E */  sh      $t7, 0x001E($a0)           ## 0000001E
/* 6C248 8007D2E8 8483001E */  lh      $v1, 0x001E($a0)           ## 0000001E
/* 6C24C 8007D2EC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8007D2F0:
/* 6C250 8007D2F0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C254 8007D2F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 6C258 8007D2F8 03E00008 */  jr      $ra
/* 6C25C 8007D2FC 00000000 */  nop


glabel func_8007D300
/* 6C260 8007D300 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 6C264 8007D304 AFB00018 */  sw      $s0, 0x0018($sp)
/* 6C268 8007D308 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 6C26C 8007D30C AFBF001C */  sw      $ra, 0x001C($sp)
/* 6C270 8007D310 AFA5002C */  sw      $a1, 0x002C($sp)
/* 6C274 8007D314 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6C278 8007D318 5860001A */  blezl   $v1, .L8007D384
/* 6C27C 8007D31C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 6C280 8007D320 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 6C284 8007D324 00000000 */  nop
/* 6C288 8007D328 860E001E */  lh      $t6, 0x001E($s0)           ## 0000001E
/* 6C28C 8007D32C 860F0002 */  lh      $t7, 0x0002($s0)           ## 00000002
/* 6C290 8007D330 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 6C294 8007D334 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 6C298 8007D338 468021A0 */  cvt.s.w $f6, $f4
/* 6C29C 8007D33C 468042A0 */  cvt.s.w $f10, $f8
/* 6C2A0 8007D340 460A3403 */  div.s   $f16, $f6, $f10
/* 6C2A4 8007D344 46100082 */  mul.s   $f2, $f0, $f16
/* 6C2A8 8007D348 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 6C2AC 8007D34C E7A20024 */  swc1    $f2, 0x0024($sp)
/* 6C2B0 8007D350 C7A20024 */  lwc1    $f2, 0x0024($sp)
/* 6C2B4 8007D354 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 6C2B8 8007D358 8FA5002C */  lw      $a1, 0x002C($sp)
/* 6C2BC 8007D35C 46020482 */  mul.s   $f18, $f0, $f2
/* 6C2C0 8007D360 44061000 */  mfc1    $a2, $f2
/* 6C2C4 8007D364 44079000 */  mfc1    $a3, $f18
/* 6C2C8 8007D368 0C01F394 */  jal     func_8007CE50
/* 6C2CC 8007D36C 00000000 */  nop
/* 6C2D0 8007D370 8618001E */  lh      $t8, 0x001E($s0)           ## 0000001E
/* 6C2D4 8007D374 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 6C2D8 8007D378 A619001E */  sh      $t9, 0x001E($s0)           ## 0000001E
/* 6C2DC 8007D37C 8603001E */  lh      $v1, 0x001E($s0)           ## 0000001E
/* 6C2E0 8007D380 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8007D384:
/* 6C2E4 8007D384 8FBF001C */  lw      $ra, 0x001C($sp)
/* 6C2E8 8007D388 8FB00018 */  lw      $s0, 0x0018($sp)
/* 6C2EC 8007D38C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 6C2F0 8007D390 03E00008 */  jr      $ra
/* 6C2F4 8007D394 00000000 */  nop


glabel func_8007D398
/* 6C2F8 8007D398 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 6C2FC 8007D39C 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 6C300 8007D3A0 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 6C304 8007D3A4 2484BF60 */  addiu   $a0, $a0, 0xBF60           ## $a0 = 8011BF60
/* 6C308 8007D3A8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 6C30C 8007D3AC 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 6C310 8007D3B0 8FA50000 */  lw      $a1, 0x0000($sp)
.L8007D3B4:
/* 6C314 8007D3B4 8C8E0008 */  lw      $t6, 0x0008($a0)           ## 8011BF68
/* 6C318 8007D3B8 55C00004 */  bnel    $t6, $zero, .L8007D3CC
/* 6C31C 8007D3BC 8486001E */  lh      $a2, 0x001E($a0)           ## 8011BF7E
/* 6C320 8007D3C0 1000000A */  beq     $zero, $zero, .L8007D3EC
/* 6C324 8007D3C4 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 6C328 8007D3C8 8486001E */  lh      $a2, 0x001E($a0)           ## 8011BF7E
.L8007D3CC:
/* 6C32C 8007D3CC 00C2082A */  slt     $at, $a2, $v0
/* 6C330 8007D3D0 50200004 */  beql    $at, $zero, .L8007D3E4
/* 6C334 8007D3D4 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 6C338 8007D3D8 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 6C33C 8007D3DC 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000001
/* 6C340 8007D3E0 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000002
.L8007D3E4:
/* 6C344 8007D3E4 1467FFF3 */  bne     $v1, $a3, .L8007D3B4
/* 6C348 8007D3E8 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 8011BF84
.L8007D3EC:
/* 6C34C 8007D3EC 00051400 */  sll     $v0, $a1, 16
/* 6C350 8007D3F0 00021403 */  sra     $v0, $v0, 16
/* 6C354 8007D3F4 03E00008 */  jr      $ra
/* 6C358 8007D3F8 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000


glabel func_8007D3FC
/* 6C35C 8007D3FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6C360 8007D400 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C364 8007D404 AFA40020 */  sw      $a0, 0x0020($sp)
/* 6C368 8007D408 AFA50024 */  sw      $a1, 0x0024($sp)
/* 6C36C 8007D40C 0C01F4E6 */  jal     func_8007D398
/* 6C370 8007D410 00000000 */  nop
/* 6C374 8007D414 000270C0 */  sll     $t6, $v0,  3
/* 6C378 8007D418 01C27021 */  addu    $t6, $t6, $v0
/* 6C37C 8007D41C 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 6C380 8007D420 25EFBF60 */  addiu   $t7, $t7, 0xBF60           ## $t7 = 8011BF60
/* 6C384 8007D424 000E7080 */  sll     $t6, $t6,  2
/* 6C388 8007D428 01CF2021 */  addu    $a0, $t6, $t7
/* 6C38C 8007D42C A7A2001E */  sh      $v0, 0x001E($sp)
/* 6C390 8007D430 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C394 8007D434 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 6C398 8007D438 0C03578C */  jal     func_800D5E30
/* 6C39C 8007D43C 24060024 */  addiu   $a2, $zero, 0x0024         ## $a2 = 00000024
/* 6C3A0 8007D440 8FA30018 */  lw      $v1, 0x0018($sp)
/* 6C3A4 8007D444 8FA40020 */  lw      $a0, 0x0020($sp)
/* 6C3A8 8007D448 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 6C3AC 8007D44C AC640004 */  sw      $a0, 0x0004($v1)           ## 00000004
/* 6C3B0 8007D450 84980164 */  lh      $t8, 0x0164($a0)           ## 00000164
/* 6C3B4 8007D454 A4780020 */  sh      $t8, 0x0020($v1)           ## 00000020
/* 6C3B8 8007D458 8FB90024 */  lw      $t9, 0x0024($sp)
/* 6C3BC 8007D45C A468001C */  sh      $t0, 0x001C($v1)           ## 0000001C
/* 6C3C0 8007D460 0C033733 */  jal     Math_Rand_ZeroOne              ## Rand.Next() float
/* 6C3C4 8007D464 AC790008 */  sw      $t9, 0x0008($v1)           ## 00000008
/* 6C3C8 8007D468 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 6C3CC 8007D46C 44812000 */  mtc1    $at, $f4                   ## $f4 = 65536.00
/* 6C3D0 8007D470 87AE001E */  lh      $t6, 0x001E($sp)
/* 6C3D4 8007D474 8FA20018 */  lw      $v0, 0x0018($sp)
/* 6C3D8 8007D478 46040182 */  mul.s   $f6, $f0, $f4
/* 6C3DC 8007D47C 3C04800F */  lui     $a0, 0x800F                ## $a0 = 800F0000
/* 6C3E0 8007D480 24847D24 */  addiu   $a0, $a0, 0x7D24           ## $a0 = 800F7D24
/* 6C3E4 8007D484 4600320D */  trunc.w.s $f8, $f6
/* 6C3E8 8007D488 440C4000 */  mfc1    $t4, $f8
/* 6C3EC 8007D48C 00000000 */  nop
/* 6C3F0 8007D490 318DFFFC */  andi    $t5, $t4, 0xFFFC           ## $t5 = 00000000
/* 6C3F4 8007D494 01AE7821 */  addu    $t7, $t5, $t6
/* 6C3F8 8007D498 A44F0000 */  sh      $t7, 0x0000($v0)           ## 00000000
/* 6C3FC 8007D49C 84980000 */  lh      $t8, 0x0000($a0)           ## 800F7D24
/* 6C400 8007D4A0 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 6C404 8007D4A4 A4990000 */  sh      $t9, 0x0000($a0)           ## 800F7D24
/* 6C408 8007D4A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C40C 8007D4AC 03E00008 */  jr      $ra
/* 6C410 8007D4B0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel func_8007D4B4
/* 6C414 8007D4B4 3C02800F */  lui     $v0, 0x800F                ## $v0 = 800F0000
/* 6C418 8007D4B8 24427D24 */  addiu   $v0, $v0, 0x7D24           ## $v0 = 800F7D24
/* 6C41C 8007D4BC 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 6C420 8007D4C0 AC800008 */  sw      $zero, 0x0008($a0)         ## 00000008
/* 6C424 8007D4C4 A48E001E */  sh      $t6, 0x001E($a0)           ## 0000001E
/* 6C428 8007D4C8 844F0000 */  lh      $t7, 0x0000($v0)           ## 800F7D24
/* 6C42C 8007D4CC 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 6C430 8007D4D0 A4580000 */  sh      $t8, 0x0000($v0)           ## 800F7D24
/* 6C434 8007D4D4 03E00008 */  jr      $ra
/* 6C438 8007D4D8 00000000 */  nop


glabel func_8007D4DC
/* 6C43C 8007D4DC AFA40000 */  sw      $a0, 0x0000($sp)
/* 6C440 8007D4E0 00042400 */  sll     $a0, $a0, 16
/* 6C444 8007D4E4 00042403 */  sra     $a0, $a0, 16
/* 6C448 8007D4E8 308E0003 */  andi    $t6, $a0, 0x0003           ## $t6 = 00000000
/* 6C44C 8007D4EC 000E78C0 */  sll     $t7, $t6,  3
/* 6C450 8007D4F0 01EE7821 */  addu    $t7, $t7, $t6
/* 6C454 8007D4F4 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 6C458 8007D4F8 2718BF60 */  addiu   $t8, $t8, 0xBF60           ## $t8 = 8011BF60
/* 6C45C 8007D4FC 000F7880 */  sll     $t7, $t7,  2
/* 6C460 8007D500 01F81821 */  addu    $v1, $t7, $t8
/* 6C464 8007D504 8C790008 */  lw      $t9, 0x0008($v1)           ## 00000008
/* 6C468 8007D508 57200004 */  bnel    $t9, $zero, .L8007D51C
/* 6C46C 8007D50C 84680000 */  lh      $t0, 0x0000($v1)           ## 00000000
/* 6C470 8007D510 03E00008 */  jr      $ra
/* 6C474 8007D514 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D518:
/* 6C478 8007D518 84680000 */  lh      $t0, 0x0000($v1)           ## 00000000
.L8007D51C:
/* 6C47C 8007D51C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 6C480 8007D520 10880003 */  beq     $a0, $t0, .L8007D530
/* 6C484 8007D524 00000000 */  nop
/* 6C488 8007D528 03E00008 */  jr      $ra
/* 6C48C 8007D52C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D530:
/* 6C490 8007D530 03E00008 */  jr      $ra
/* 6C494 8007D534 00000000 */  nop


glabel func_8007D538
/* 6C498 8007D538 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C49C 8007D53C AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C4A0 8007D540 AFA5001C */  sw      $a1, 0x001C($sp)
/* 6C4A4 8007D544 AFA60020 */  sw      $a2, 0x0020($sp)
/* 6C4A8 8007D548 00063400 */  sll     $a2, $a2, 16
/* 6C4AC 8007D54C 00052C00 */  sll     $a1, $a1, 16
/* 6C4B0 8007D550 00042400 */  sll     $a0, $a0, 16
/* 6C4B4 8007D554 00042403 */  sra     $a0, $a0, 16
/* 6C4B8 8007D558 00052C03 */  sra     $a1, $a1, 16
/* 6C4BC 8007D55C 00063403 */  sra     $a2, $a2, 16
/* 6C4C0 8007D560 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C4C4 8007D564 A7A5001E */  sh      $a1, 0x001E($sp)
/* 6C4C8 8007D568 0C01F537 */  jal     func_8007D4DC
/* 6C4CC 8007D56C A7A60022 */  sh      $a2, 0x0022($sp)
/* 6C4D0 8007D570 87A5001E */  lh      $a1, 0x001E($sp)
/* 6C4D4 8007D574 14400003 */  bne     $v0, $zero, .L8007D584
/* 6C4D8 8007D578 87A60022 */  lh      $a2, 0x0022($sp)
/* 6C4DC 8007D57C 10000036 */  beq     $zero, $zero, .L8007D658
/* 6C4E0 8007D580 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D584:
/* 6C4E4 8007D584 28A10081 */  slti    $at, $a1, 0x0081
/* 6C4E8 8007D588 14200007 */  bne     $at, $zero, .L8007D5A8
/* 6C4EC 8007D58C 24010100 */  addiu   $at, $zero, 0x0100         ## $at = 00000100
/* 6C4F0 8007D590 10A1002C */  beq     $a1, $at, .L8007D644
/* 6C4F4 8007D594 24010200 */  addiu   $at, $zero, 0x0200         ## $at = 00000200
/* 6C4F8 8007D598 50A1002F */  beql    $a1, $at, .L8007D658
/* 6C4FC 8007D59C A446001C */  sh      $a2, 0x001C($v0)           ## 0000001C
/* 6C500 8007D5A0 1000002E */  beq     $zero, $zero, .L8007D65C
/* 6C504 8007D5A4 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8007D5A8:
/* 6C508 8007D5A8 28A10041 */  slti    $at, $a1, 0x0041
/* 6C50C 8007D5AC 14200005 */  bne     $at, $zero, .L8007D5C4
/* 6C510 8007D5B0 24010080 */  addiu   $at, $zero, 0x0080         ## $at = 00000080
/* 6C514 8007D5B4 10A10021 */  beq     $a1, $at, .L8007D63C
/* 6C518 8007D5B8 00000000 */  nop
/* 6C51C 8007D5BC 10000027 */  beq     $zero, $zero, .L8007D65C
/* 6C520 8007D5C0 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8007D5C4:
/* 6C524 8007D5C4 28A10021 */  slti    $at, $a1, 0x0021
/* 6C528 8007D5C8 14200006 */  bne     $at, $zero, .L8007D5E4
/* 6C52C 8007D5CC 24AEFFFF */  addiu   $t6, $a1, 0xFFFF           ## $t6 = FFFFFFFF
/* 6C530 8007D5D0 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 6C534 8007D5D4 10A10017 */  beq     $a1, $at, .L8007D634
/* 6C538 8007D5D8 00000000 */  nop
/* 6C53C 8007D5DC 1000001F */  beq     $zero, $zero, .L8007D65C
/* 6C540 8007D5E0 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8007D5E4:
/* 6C544 8007D5E4 2DC10020 */  sltiu   $at, $t6, 0x0020
/* 6C548 8007D5E8 1020001B */  beq     $at, $zero, .L8007D658
/* 6C54C 8007D5EC 000E7080 */  sll     $t6, $t6,  2
/* 6C550 8007D5F0 3C018011 */  lui     $at, 0x8011                ## $at = 80110000
/* 6C554 8007D5F4 002E0821 */  addu    $at, $at, $t6
/* 6C558 8007D5F8 8C2E8980 */  lw      $t6, -0x7680($at)          ## 80108980
/* 6C55C 8007D5FC 01C00008 */  jr      $t6
/* 6C560 8007D600 00000000 */  nop
/* 6C564 8007D604 10000014 */  beq     $zero, $zero, .L8007D658
/* 6C568 8007D608 A446001A */  sh      $a2, 0x001A($v0)           ## 0000001A
/* 6C56C 8007D60C 10000012 */  beq     $zero, $zero, .L8007D658
/* 6C570 8007D610 A446000C */  sh      $a2, 0x000C($v0)           ## 0000000C
/* 6C574 8007D614 10000010 */  beq     $zero, $zero, .L8007D658
/* 6C578 8007D618 A446000E */  sh      $a2, 0x000E($v0)           ## 0000000E
/* 6C57C 8007D61C 1000000E */  beq     $zero, $zero, .L8007D658
/* 6C580 8007D620 A4460010 */  sh      $a2, 0x0010($v0)           ## 00000010
/* 6C584 8007D624 1000000C */  beq     $zero, $zero, .L8007D658
/* 6C588 8007D628 A4460012 */  sh      $a2, 0x0012($v0)           ## 00000012
/* 6C58C 8007D62C 1000000A */  beq     $zero, $zero, .L8007D658
/* 6C590 8007D630 A4460014 */  sh      $a2, 0x0014($v0)           ## 00000014
.L8007D634:
/* 6C594 8007D634 10000008 */  beq     $zero, $zero, .L8007D658
/* 6C598 8007D638 A4460016 */  sh      $a2, 0x0016($v0)           ## 00000016
.L8007D63C:
/* 6C59C 8007D63C 10000006 */  beq     $zero, $zero, .L8007D658
/* 6C5A0 8007D640 A4460018 */  sh      $a2, 0x0018($v0)           ## 00000018
.L8007D644:
/* 6C5A4 8007D644 A446001E */  sh      $a2, 0x001E($v0)           ## 0000001E
/* 6C5A8 8007D648 844F001E */  lh      $t7, 0x001E($v0)           ## 0000001E
/* 6C5AC 8007D64C 10000002 */  beq     $zero, $zero, .L8007D658
/* 6C5B0 8007D650 A44F0002 */  sh      $t7, 0x0002($v0)           ## 00000002
/* 6C5B4 8007D654 A446001C */  sh      $a2, 0x001C($v0)           ## 0000001C
.L8007D658:
/* 6C5B8 8007D658 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8007D65C:
/* 6C5BC 8007D65C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6C5C0 8007D660 03E00008 */  jr      $ra
/* 6C5C4 8007D664 00000000 */  nop


glabel func_8007D668
/* 6C5C8 8007D668 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C5CC 8007D66C AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C5D0 8007D670 00042400 */  sll     $a0, $a0, 16
/* 6C5D4 8007D674 00042403 */  sra     $a0, $a0, 16
/* 6C5D8 8007D678 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C5DC 8007D67C AFA5001C */  sw      $a1, 0x001C($sp)
/* 6C5E0 8007D680 0C01F537 */  jal     func_8007D4DC
/* 6C5E4 8007D684 00000000 */  nop
/* 6C5E8 8007D688 10400004 */  beq     $v0, $zero, .L8007D69C
/* 6C5EC 8007D68C 87AE001E */  lh      $t6, 0x001E($sp)
/* 6C5F0 8007D690 A44E001A */  sh      $t6, 0x001A($v0)           ## 0000001A
/* 6C5F4 8007D694 10000002 */  beq     $zero, $zero, .L8007D6A0
/* 6C5F8 8007D698 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8007D69C:
/* 6C5FC 8007D69C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D6A0:
/* 6C600 8007D6A0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C604 8007D6A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6C608 8007D6A8 03E00008 */  jr      $ra
/* 6C60C 8007D6AC 00000000 */  nop


glabel func_8007D6B0
/* 6C610 8007D6B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C614 8007D6B4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C618 8007D6B8 00042400 */  sll     $a0, $a0, 16
/* 6C61C 8007D6BC 00042403 */  sra     $a0, $a0, 16
/* 6C620 8007D6C0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C624 8007D6C4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 6C628 8007D6C8 0C01F537 */  jal     func_8007D4DC
/* 6C62C 8007D6CC 00000000 */  nop
/* 6C630 8007D6D0 10400006 */  beq     $v0, $zero, .L8007D6EC
/* 6C634 8007D6D4 87AE001E */  lh      $t6, 0x001E($sp)
/* 6C638 8007D6D8 A44E001E */  sh      $t6, 0x001E($v0)           ## 0000001E
/* 6C63C 8007D6DC 844F001E */  lh      $t7, 0x001E($v0)           ## 0000001E
/* 6C640 8007D6E0 A44F0002 */  sh      $t7, 0x0002($v0)           ## 00000002
/* 6C644 8007D6E4 10000002 */  beq     $zero, $zero, .L8007D6F0
/* 6C648 8007D6E8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8007D6EC:
/* 6C64C 8007D6EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D6F0:
/* 6C650 8007D6F0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C654 8007D6F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6C658 8007D6F8 03E00008 */  jr      $ra
/* 6C65C 8007D6FC 00000000 */  nop


glabel func_8007D700
/* 6C660 8007D700 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C664 8007D704 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C668 8007D708 00042400 */  sll     $a0, $a0, 16
/* 6C66C 8007D70C 00042403 */  sra     $a0, $a0, 16
/* 6C670 8007D710 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C674 8007D714 0C01F537 */  jal     func_8007D4DC
/* 6C678 8007D718 00000000 */  nop
/* 6C67C 8007D71C 10400003 */  beq     $v0, $zero, .L8007D72C
/* 6C680 8007D720 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C684 8007D724 10000002 */  beq     $zero, $zero, .L8007D730
/* 6C688 8007D728 8442001E */  lh      $v0, 0x001E($v0)           ## 0000001E
.L8007D72C:
/* 6C68C 8007D72C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D730:
/* 6C690 8007D730 03E00008 */  jr      $ra
/* 6C694 8007D734 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_8007D738
/* 6C698 8007D738 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C69C 8007D73C AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C6A0 8007D740 00042400 */  sll     $a0, $a0, 16
/* 6C6A4 8007D744 00042403 */  sra     $a0, $a0, 16
/* 6C6A8 8007D748 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C6AC 8007D74C AFA5001C */  sw      $a1, 0x001C($sp)
/* 6C6B0 8007D750 AFA60020 */  sw      $a2, 0x0020($sp)
/* 6C6B4 8007D754 AFA70024 */  sw      $a3, 0x0024($sp)
/* 6C6B8 8007D758 0C01F537 */  jal     func_8007D4DC
/* 6C6BC 8007D75C 00000000 */  nop
/* 6C6C0 8007D760 1040000A */  beq     $v0, $zero, .L8007D78C
/* 6C6C4 8007D764 87AE001E */  lh      $t6, 0x001E($sp)
/* 6C6C8 8007D768 A44E000C */  sh      $t6, 0x000C($v0)           ## 0000000C
/* 6C6CC 8007D76C 87AF0022 */  lh      $t7, 0x0022($sp)
/* 6C6D0 8007D770 A44F000E */  sh      $t7, 0x000E($v0)           ## 0000000E
/* 6C6D4 8007D774 87B80026 */  lh      $t8, 0x0026($sp)
/* 6C6D8 8007D778 A4580010 */  sh      $t8, 0x0010($v0)           ## 00000010
/* 6C6DC 8007D77C 87B9002A */  lh      $t9, 0x002A($sp)
/* 6C6E0 8007D780 A4590012 */  sh      $t9, 0x0012($v0)           ## 00000012
/* 6C6E4 8007D784 10000002 */  beq     $zero, $zero, .L8007D790
/* 6C6E8 8007D788 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8007D78C:
/* 6C6EC 8007D78C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D790:
/* 6C6F0 8007D790 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C6F4 8007D794 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6C6F8 8007D798 03E00008 */  jr      $ra
/* 6C6FC 8007D79C 00000000 */  nop


glabel func_8007D7A0
/* 6C700 8007D7A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C704 8007D7A4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C708 8007D7A8 00042400 */  sll     $a0, $a0, 16
/* 6C70C 8007D7AC 00042403 */  sra     $a0, $a0, 16
/* 6C710 8007D7B0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C714 8007D7B4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 6C718 8007D7B8 AFA60020 */  sw      $a2, 0x0020($sp)
/* 6C71C 8007D7BC AFA70024 */  sw      $a3, 0x0024($sp)
/* 6C720 8007D7C0 0C01F537 */  jal     func_8007D4DC
/* 6C724 8007D7C4 00000000 */  nop
/* 6C728 8007D7C8 1040000A */  beq     $v0, $zero, .L8007D7F4
/* 6C72C 8007D7CC 87AE001E */  lh      $t6, 0x001E($sp)
/* 6C730 8007D7D0 A44E001C */  sh      $t6, 0x001C($v0)           ## 0000001C
/* 6C734 8007D7D4 27AF0020 */  addiu   $t7, $sp, 0x0020           ## $t7 = 00000008
/* 6C738 8007D7D8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 00000008
/* 6C73C 8007D7DC A8590014 */  swl     $t9, 0x0014($v0)           ## 00000014
/* 6C740 8007D7E0 B8590017 */  swr     $t9, 0x0017($v0)           ## 00000017
/* 6C744 8007D7E4 95F90004 */  lhu     $t9, 0x0004($t7)           ## 0000000C
/* 6C748 8007D7E8 A4590018 */  sh      $t9, 0x0018($v0)           ## 00000018
/* 6C74C 8007D7EC 10000002 */  beq     $zero, $zero, .L8007D7F8
/* 6C750 8007D7F0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8007D7F4:
/* 6C754 8007D7F4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D7F8:
/* 6C758 8007D7F8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C75C 8007D7FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6C760 8007D800 03E00008 */  jr      $ra
/* 6C764 8007D804 00000000 */  nop


glabel func_8007D808
/* 6C768 8007D808 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 6C76C 8007D80C 2484BF60 */  addiu   $a0, $a0, 0xBF60           ## $a0 = 8011BF60
/* 6C770 8007D810 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 6C774 8007D814 24050024 */  addiu   $a1, $zero, 0x0024         ## $a1 = 00000024
.L8007D818:
/* 6C778 8007D818 00450019 */  multu   $v0, $a1
/* 6C77C 8007D81C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 6C780 8007D820 00021400 */  sll     $v0, $v0, 16
/* 6C784 8007D824 00021403 */  sra     $v0, $v0, 16
/* 6C788 8007D828 28410004 */  slti    $at, $v0, 0x0004
/* 6C78C 8007D82C 00007012 */  mflo    $t6
/* 6C790 8007D830 008E1821 */  addu    $v1, $a0, $t6
/* 6C794 8007D834 AC600008 */  sw      $zero, 0x0008($v1)         ## 00000008
/* 6C798 8007D838 1420FFF7 */  bne     $at, $zero, .L8007D818
/* 6C79C 8007D83C A460001E */  sh      $zero, 0x001E($v1)         ## 0000001E
/* 6C7A0 8007D840 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 6C7A4 8007D844 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 6C7A8 8007D848 A42F7D20 */  sh      $t7, 0x7D20($at)           ## 800F7D20
/* 6C7AC 8007D84C 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 6C7B0 8007D850 A4207D24 */  sh      $zero, 0x7D24($at)         ## 800F7D24
/* 6C7B4 8007D854 03E00008 */  jr      $ra
/* 6C7B8 8007D858 00000000 */  nop


glabel func_8007D85C
/* 6C7BC 8007D85C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C7C0 8007D860 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C7C4 8007D864 0C01F4FF */  jal     func_8007D3FC
/* 6C7C8 8007D868 00000000 */  nop
/* 6C7CC 8007D86C 84420000 */  lh      $v0, 0x0000($v0)           ## 00000000
/* 6C7D0 8007D870 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C7D4 8007D874 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6C7D8 8007D878 03E00008 */  jr      $ra
/* 6C7DC 8007D87C 00000000 */  nop


glabel func_8007D880
/* 6C7E0 8007D880 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6C7E4 8007D884 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6C7E8 8007D888 00042400 */  sll     $a0, $a0, 16
/* 6C7EC 8007D88C 00042403 */  sra     $a0, $a0, 16
/* 6C7F0 8007D890 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6C7F4 8007D894 0C01F537 */  jal     func_8007D4DC
/* 6C7F8 8007D898 00000000 */  nop
/* 6C7FC 8007D89C 10400005 */  beq     $v0, $zero, .L8007D8B4
/* 6C800 8007D8A0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 6C804 8007D8A4 0C01F52D */  jal     func_8007D4B4
/* 6C808 8007D8A8 00000000 */  nop
/* 6C80C 8007D8AC 10000002 */  beq     $zero, $zero, .L8007D8B8
/* 6C810 8007D8B0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8007D8B4:
/* 6C814 8007D8B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D8B8:
/* 6C818 8007D8B8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6C81C 8007D8BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6C820 8007D8C0 03E00008 */  jr      $ra
/* 6C824 8007D8C4 00000000 */  nop


glabel func_8007D8C8
/* 6C828 8007D8C8 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 6C82C 8007D8CC AFB00038 */  sw      $s0, 0x0038($sp)
/* 6C830 8007D8D0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 6C834 8007D8D4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 6C838 8007D8D8 AFBF004C */  sw      $ra, 0x004C($sp)
/* 6C83C 8007D8DC AFB40048 */  sw      $s4, 0x0048($sp)
/* 6C840 8007D8E0 AFB30044 */  sw      $s3, 0x0044($sp)
/* 6C844 8007D8E4 AFB20040 */  sw      $s2, 0x0040($sp)
/* 6C848 8007D8E8 AFB1003C */  sw      $s1, 0x003C($sp)
/* 6C84C 8007D8EC F7BA0030 */  sdc1    $f26, 0x0030($sp)
/* 6C850 8007D8F0 F7B80028 */  sdc1    $f24, 0x0028($sp)
/* 6C854 8007D8F4 F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 6C858 8007D8F8 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 6C85C 8007D8FC AFA400B8 */  sw      $a0, 0x00B8($sp)
/* 6C860 8007D900 8FAE00B8 */  lw      $t6, 0x00B8($sp)
/* 6C864 8007D904 3C18800F */  lui     $t8, 0x800F                ## $t8 = 800F0000
/* 6C868 8007D908 3C118012 */  lui     $s1, 0x8012                ## $s1 = 80120000
/* 6C86C 8007D90C 8DCF008C */  lw      $t7, 0x008C($t6)           ## 0000008C
/* 6C870 8007D910 E7A00068 */  swc1    $f0, 0x0068($sp)
/* 6C874 8007D914 E7A0006C */  swc1    $f0, 0x006C($sp)
/* 6C878 8007D918 E7A00070 */  swc1    $f0, 0x0070($sp)
/* 6C87C 8007D91C AFAF0064 */  sw      $t7, 0x0064($sp)
/* 6C880 8007D920 E6000000 */  swc1    $f0, 0x0000($s0)           ## 00000000
/* 6C884 8007D924 E6000004 */  swc1    $f0, 0x0004($s0)           ## 00000004
/* 6C888 8007D928 E6000008 */  swc1    $f0, 0x0008($s0)           ## 00000008
/* 6C88C 8007D92C E600000C */  swc1    $f0, 0x000C($s0)           ## 0000000C
/* 6C890 8007D930 E6000010 */  swc1    $f0, 0x0010($s0)           ## 00000010
/* 6C894 8007D934 E6000014 */  swc1    $f0, 0x0014($s0)           ## 00000014
/* 6C898 8007D938 A6000018 */  sh      $zero, 0x0018($s0)         ## 00000018
/* 6C89C 8007D93C A600001A */  sh      $zero, 0x001A($s0)         ## 0000001A
/* 6C8A0 8007D940 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 6C8A4 8007D944 E6000020 */  swc1    $f0, 0x0020($s0)           ## 00000020
/* 6C8A8 8007D948 87187D24 */  lh      $t8, 0x7D24($t8)           ## 800F7D24
/* 6C8AC 8007D94C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 6C8B0 8007D950 2631BF60 */  addiu   $s1, $s1, 0xBF60           ## $s1 = 8011BF60
/* 6C8B4 8007D954 17000003 */  bne     $t8, $zero, .L8007D964
/* 6C8B8 8007D958 3C018011 */  lui     $at, 0x8011                ## $at = 80110000
/* 6C8BC 8007D95C 100000A9 */  beq     $zero, $zero, .L8007DC04
/* 6C8C0 8007D960 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8007D964:
/* 6C8C4 8007D964 C43A8A00 */  lwc1    $f26, -0x7600($at)         ## 80108A00
/* 6C8C8 8007D968 27B40068 */  addiu   $s4, $sp, 0x0068           ## $s4 = FFFFFFB0
/* 6C8CC 8007D96C 27B3008C */  addiu   $s3, $sp, 0x008C           ## $s3 = FFFFFFD4
/* 6C8D0 8007D970 8E260008 */  lw      $a2, 0x0008($s1)           ## 8011BF68
.L8007D974:
/* 6C8D4 8007D974 10C0009C */  beq     $a2, $zero, .L8007DBE8
/* 6C8D8 8007D978 00000000 */  nop
/* 6C8DC 8007D97C 86280020 */  lh      $t0, 0x0020($s1)           ## 8011BF80
/* 6C8E0 8007D980 8FB90064 */  lw      $t9, 0x0064($sp)
/* 6C8E4 8007D984 8FAE00B8 */  lw      $t6, 0x00B8($sp)
/* 6C8E8 8007D988 00084880 */  sll     $t1, $t0,  2
/* 6C8EC 8007D98C 03295021 */  addu    $t2, $t9, $t1
/* 6C8F0 8007D990 8D4B0790 */  lw      $t3, 0x0790($t2)           ## 00000790
/* 6C8F4 8007D994 55600006 */  bnel    $t3, $zero, .L8007D9B0
/* 6C8F8 8007D998 8E2C0004 */  lw      $t4, 0x0004($s1)           ## 8011BF64
/* 6C8FC 8007D99C 0C01F52D */  jal     func_8007D4B4
/* 6C900 8007D9A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 8011BF60
/* 6C904 8007D9A4 10000090 */  beq     $zero, $zero, .L8007DBE8
/* 6C908 8007D9A8 00000000 */  nop
/* 6C90C 8007D9AC 8E2C0004 */  lw      $t4, 0x0004($s1)           ## 8011BF64
.L8007D9B0:
/* 6C910 8007D9B0 85CF0164 */  lh      $t7, 0x0164($t6)           ## 00000164
/* 6C914 8007D9B4 8622001A */  lh      $v0, 0x001A($s1)           ## 8011BF7A
/* 6C918 8007D9B8 858D0164 */  lh      $t5, 0x0164($t4)           ## 00000164
/* 6C91C 8007D9BC 00021823 */  subu    $v1, $zero, $v0
/* 6C920 8007D9C0 01AF3826 */  xor     $a3, $t5, $t7
/* 6C924 8007D9C4 04400003 */  bltz    $v0, .L8007D9D4
/* 6C928 8007D9C8 0007382B */  sltu    $a3, $zero, $a3
/* 6C92C 8007D9CC 10000001 */  beq     $zero, $zero, .L8007D9D4
/* 6C930 8007D9D0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8007D9D4:
/* 6C934 8007D9D4 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 6C938 8007D9D8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 6C93C 8007D9DC 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 6C940 8007D9E0 468021A0 */  cvt.s.w $f6, $f4
/* 6C944 8007D9E4 0006C080 */  sll     $t8, $a2,  2
/* 6C948 8007D9E8 3C19800F */  lui     $t9, 0x800F                ## $t9 = 800F0000
/* 6C94C 8007D9EC 0338C821 */  addu    $t9, $t9, $t8
/* 6C950 8007D9F0 8F397D28 */  lw      $t9, 0x7D28($t9)           ## 800F7D28
/* 6C954 8007D9F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 8011BF60
/* 6C958 8007D9F8 46083583 */  div.s   $f22, $f6, $f8
/* 6C95C 8007D9FC 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFD4
/* 6C960 8007DA00 AFA70074 */  sw      $a3, 0x0074($sp)
/* 6C964 8007DA04 0320F809 */  jalr    $ra, $t9
/* 6C968 8007DA08 4600B606 */  mov.s   $f24, $f22
/* 6C96C 8007DA0C 14400005 */  bne     $v0, $zero, .L8007DA24
/* 6C970 8007DA10 8FA70074 */  lw      $a3, 0x0074($sp)
/* 6C974 8007DA14 0C01F52D */  jal     func_8007D4B4
/* 6C978 8007DA18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 8011BF60
/* 6C97C 8007DA1C 10000072 */  beq     $zero, $zero, .L8007DBE8
/* 6C980 8007DA20 00000000 */  nop
.L8007DA24:
/* 6C984 8007DA24 14E00070 */  bne     $a3, $zero, .L8007DBE8
/* 6C988 8007DA28 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFD4
/* 6C98C 8007DA2C C6000000 */  lwc1    $f0, 0x0000($s0)           ## 00000000
/* 6C990 8007DA30 C7AA008C */  lwc1    $f10, 0x008C($sp)
/* 6C994 8007DA34 46000085 */  abs.s   $f2, $f0
/* 6C998 8007DA38 46005005 */  abs.s   $f0, $f10
/* 6C99C 8007DA3C 4600103C */  c.lt.s  $f2, $f0
/* 6C9A0 8007DA40 00000000 */  nop
/* 6C9A4 8007DA44 45020003 */  bc1fl   .L8007DA54
/* 6C9A8 8007DA48 C6000004 */  lwc1    $f0, 0x0004($s0)           ## 00000004
/* 6C9AC 8007DA4C E60A0000 */  swc1    $f10, 0x0000($s0)          ## 00000000
/* 6C9B0 8007DA50 C6000004 */  lwc1    $f0, 0x0004($s0)           ## 00000004
.L8007DA54:
/* 6C9B4 8007DA54 C7B00090 */  lwc1    $f16, 0x0090($sp)
/* 6C9B8 8007DA58 46000085 */  abs.s   $f2, $f0
/* 6C9BC 8007DA5C 46008005 */  abs.s   $f0, $f16
/* 6C9C0 8007DA60 4600103C */  c.lt.s  $f2, $f0
/* 6C9C4 8007DA64 00000000 */  nop
/* 6C9C8 8007DA68 45020003 */  bc1fl   .L8007DA78
/* 6C9CC 8007DA6C C6000008 */  lwc1    $f0, 0x0008($s0)           ## 00000008
/* 6C9D0 8007DA70 E6100004 */  swc1    $f16, 0x0004($s0)          ## 00000004
/* 6C9D4 8007DA74 C6000008 */  lwc1    $f0, 0x0008($s0)           ## 00000008
.L8007DA78:
/* 6C9D8 8007DA78 C7B20094 */  lwc1    $f18, 0x0094($sp)
/* 6C9DC 8007DA7C 46000085 */  abs.s   $f2, $f0
/* 6C9E0 8007DA80 46009005 */  abs.s   $f0, $f18
/* 6C9E4 8007DA84 4600103C */  c.lt.s  $f2, $f0
/* 6C9E8 8007DA88 00000000 */  nop
/* 6C9EC 8007DA8C 45020003 */  bc1fl   .L8007DA9C
/* 6C9F0 8007DA90 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
/* 6C9F4 8007DA94 E6120008 */  swc1    $f18, 0x0008($s0)          ## 00000008
/* 6C9F8 8007DA98 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
.L8007DA9C:
/* 6C9FC 8007DA9C C7A40098 */  lwc1    $f4, 0x0098($sp)
/* 6CA00 8007DAA0 46000085 */  abs.s   $f2, $f0
/* 6CA04 8007DAA4 46002005 */  abs.s   $f0, $f4
/* 6CA08 8007DAA8 4600103C */  c.lt.s  $f2, $f0
/* 6CA0C 8007DAAC 00000000 */  nop
/* 6CA10 8007DAB0 45020003 */  bc1fl   .L8007DAC0
/* 6CA14 8007DAB4 C6000010 */  lwc1    $f0, 0x0010($s0)           ## 00000010
/* 6CA18 8007DAB8 E604000C */  swc1    $f4, 0x000C($s0)           ## 0000000C
/* 6CA1C 8007DABC C6000010 */  lwc1    $f0, 0x0010($s0)           ## 00000010
.L8007DAC0:
/* 6CA20 8007DAC0 C7A6009C */  lwc1    $f6, 0x009C($sp)
/* 6CA24 8007DAC4 46000085 */  abs.s   $f2, $f0
/* 6CA28 8007DAC8 46003005 */  abs.s   $f0, $f6
/* 6CA2C 8007DACC 4600103C */  c.lt.s  $f2, $f0
/* 6CA30 8007DAD0 00000000 */  nop
/* 6CA34 8007DAD4 45020003 */  bc1fl   .L8007DAE4
/* 6CA38 8007DAD8 C6000014 */  lwc1    $f0, 0x0014($s0)           ## 00000014
/* 6CA3C 8007DADC E6060010 */  swc1    $f6, 0x0010($s0)           ## 00000010
/* 6CA40 8007DAE0 C6000014 */  lwc1    $f0, 0x0014($s0)           ## 00000014
.L8007DAE4:
/* 6CA44 8007DAE4 C7A800A0 */  lwc1    $f8, 0x00A0($sp)
/* 6CA48 8007DAE8 46000085 */  abs.s   $f2, $f0
/* 6CA4C 8007DAEC 46004005 */  abs.s   $f0, $f8
/* 6CA50 8007DAF0 4600103C */  c.lt.s  $f2, $f0
/* 6CA54 8007DAF4 00000000 */  nop
/* 6CA58 8007DAF8 45020003 */  bc1fl   .L8007DB08
/* 6CA5C 8007DAFC 86080018 */  lh      $t0, 0x0018($s0)           ## 00000018
/* 6CA60 8007DB00 E6080014 */  swc1    $f8, 0x0014($s0)           ## 00000014
/* 6CA64 8007DB04 86080018 */  lh      $t0, 0x0018($s0)           ## 00000018
.L8007DB08:
/* 6CA68 8007DB08 87A900A4 */  lh      $t1, 0x00A4($sp)
/* 6CA6C 8007DB0C 0109082A */  slt     $at, $t0, $t1
/* 6CA70 8007DB10 50200005 */  beql    $at, $zero, .L8007DB28
/* 6CA74 8007DB14 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 6CA78 8007DB18 A6090018 */  sh      $t1, 0x0018($s0)           ## 00000018
/* 6CA7C 8007DB1C 87AA00A6 */  lh      $t2, 0x00A6($sp)
/* 6CA80 8007DB20 A60A001A */  sh      $t2, 0x001A($s0)           ## 0000001A
/* 6CA84 8007DB24 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
.L8007DB28:
/* 6CA88 8007DB28 87AC00A8 */  lh      $t4, 0x00A8($sp)
/* 6CA8C 8007DB2C 016C082A */  slt     $at, $t3, $t4
/* 6CA90 8007DB30 10200002 */  beq     $at, $zero, .L8007DB3C
/* 6CA94 8007DB34 00000000 */  nop
/* 6CA98 8007DB38 A60C001C */  sh      $t4, 0x001C($s0)           ## 0000001C
.L8007DB3C:
/* 6CA9C 8007DB3C 0C019D60 */  jal     func_80067580
/* 6CAA0 8007DB40 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFB0
/* 6CAA4 8007DB44 46160502 */  mul.s   $f20, $f0, $f22
/* 6CAA8 8007DB48 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFFE0
/* 6CAAC 8007DB4C 0C019D60 */  jal     func_80067580
/* 6CAB0 8007DB50 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFB0
/* 6CAB4 8007DB54 46160082 */  mul.s   $f2, $f0, $f22
/* 6CAB8 8007DB58 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 6CABC 8007DB5C 4602A03C */  c.lt.s  $f20, $f2
/* 6CAC0 8007DB60 00000000 */  nop
/* 6CAC4 8007DB64 45020003 */  bc1fl   .L8007DB74
/* 6CAC8 8007DB68 860E0018 */  lh      $t6, 0x0018($s0)           ## 00000018
/* 6CACC 8007DB6C 46001506 */  mov.s   $f20, $f2
/* 6CAD0 8007DB70 860E0018 */  lh      $t6, 0x0018($s0)           ## 00000018
.L8007DB74:
/* 6CAD4 8007DB74 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 6CAD8 8007DB78 00000000 */  nop
/* 6CADC 8007DB7C 46805420 */  cvt.s.w $f16, $f10
/* 6CAE0 8007DB80 461A8482 */  mul.s   $f18, $f16, $f26
/* 6CAE4 8007DB84 00000000 */  nop
/* 6CAE8 8007DB88 46189002 */  mul.s   $f0, $f18, $f24
/* 6CAEC 8007DB8C 4600A03C */  c.lt.s  $f20, $f0
/* 6CAF0 8007DB90 00000000 */  nop
/* 6CAF4 8007DB94 45000002 */  bc1f    .L8007DBA0
/* 6CAF8 8007DB98 00000000 */  nop
/* 6CAFC 8007DB9C 46000506 */  mov.s   $f20, $f0
.L8007DBA0:
/* 6CB00 8007DBA0 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 6CB04 8007DBA4 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 6CB08 8007DBA8 00000000 */  nop
/* 6CB0C 8007DBAC 468021A0 */  cvt.s.w $f6, $f4
/* 6CB10 8007DBB0 461A3202 */  mul.s   $f8, $f6, $f26
/* 6CB14 8007DBB4 00000000 */  nop
/* 6CB18 8007DBB8 46184002 */  mul.s   $f0, $f8, $f24
/* 6CB1C 8007DBBC 4600A03C */  c.lt.s  $f20, $f0
/* 6CB20 8007DBC0 00000000 */  nop
/* 6CB24 8007DBC4 45000002 */  bc1f    .L8007DBD0
/* 6CB28 8007DBC8 00000000 */  nop
/* 6CB2C 8007DBCC 46000506 */  mov.s   $f20, $f0
.L8007DBD0:
/* 6CB30 8007DBD0 C60A0020 */  lwc1    $f10, 0x0020($s0)          ## 00000020
/* 6CB34 8007DBD4 4614503C */  c.lt.s  $f10, $f20
/* 6CB38 8007DBD8 00000000 */  nop
/* 6CB3C 8007DBDC 45000002 */  bc1f    .L8007DBE8
/* 6CB40 8007DBE0 00000000 */  nop
/* 6CB44 8007DBE4 E6140020 */  swc1    $f20, 0x0020($s0)          ## 00000020
.L8007DBE8:
/* 6CB48 8007DBE8 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 6CB4C 8007DBEC 25EFBFF0 */  addiu   $t7, $t7, 0xBFF0           ## $t7 = 8011BFF0
/* 6CB50 8007DBF0 26310024 */  addiu   $s1, $s1, 0x0024           ## $s1 = 8011BF84
/* 6CB54 8007DBF4 562FFF5F */  bnel    $s1, $t7, .L8007D974
/* 6CB58 8007DBF8 8E260008 */  lw      $a2, 0x0008($s1)           ## 8011BF8C
/* 6CB5C 8007DBFC 00121400 */  sll     $v0, $s2, 16
/* 6CB60 8007DC00 00021403 */  sra     $v0, $v0, 16
.L8007DC04:
/* 6CB64 8007DC04 8FBF004C */  lw      $ra, 0x004C($sp)
/* 6CB68 8007DC08 D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 6CB6C 8007DC0C D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 6CB70 8007DC10 D7B80028 */  ldc1    $f24, 0x0028($sp)
/* 6CB74 8007DC14 D7BA0030 */  ldc1    $f26, 0x0030($sp)
/* 6CB78 8007DC18 8FB00038 */  lw      $s0, 0x0038($sp)
/* 6CB7C 8007DC1C 8FB1003C */  lw      $s1, 0x003C($sp)
/* 6CB80 8007DC20 8FB20040 */  lw      $s2, 0x0040($sp)
/* 6CB84 8007DC24 8FB30044 */  lw      $s3, 0x0044($sp)
/* 6CB88 8007DC28 8FB40048 */  lw      $s4, 0x0048($sp)
/* 6CB8C 8007DC2C 03E00008 */  jr      $ra
/* 6CB90 8007DC30 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
/* 6CB94 8007DC34 00000000 */  nop
/* 6CB98 8007DC38 00000000 */  nop
/* 6CB9C 8007DC3C 00000000 */  nop
