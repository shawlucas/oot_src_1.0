# "Background Check" part of the code file
#
# Handles the constuction, destruction, allocation and monitoring of Background Collisions.
#
# General Documentation about collisions:
# - https://wiki.cloudmodding.com/oot/Collision
# - https://wiki.cloudmodding.com/oot/Collision_Mesh_Format
#
# Starts at VRAM: 8002B360 / VROM: AA12C0
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8002B360
/* 1A2C0 8002B360 AFA60008 */  sw      $a2, 0x0008($sp)
/* 1A2C4 8002B364 30C6FFFF */  andi    $a2, $a2, 0xFFFF           ## $a2 = 00000000
/* 1A2C8 8002B368 84AE0000 */  lh      $t6, 0x0000($a1)           ## 00000000
/* 1A2CC 8002B36C A4860002 */  sh      $a2, 0x0002($a0)           ## 00000002
/* 1A2D0 8002B370 A48E0000 */  sh      $t6, 0x0000($a0)           ## 00000000
/* 1A2D4 8002B374 03E00008 */  jr      $ra
/* 1A2D8 8002B378 00000000 */  nop


glabel func_8002B37C
/* 1A2DC 8002B37C 340EFFFF */  ori     $t6, $zero, 0xFFFF         ## $t6 = 0000FFFF
/* 1A2E0 8002B380 A48E0000 */  sh      $t6, 0x0000($a0)           ## 00000000
/* 1A2E4 8002B384 03E00008 */  jr      $ra
/* 1A2E8 8002B388 00000000 */  nop


glabel func_8002B38C
/* 1A2EC 8002B38C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1A2F0 8002B390 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A2F4 8002B394 AFA40020 */  sw      $a0, 0x0020($sp)
/* 1A2F8 8002B398 AFA50024 */  sw      $a1, 0x0024($sp)
/* 1A2FC 8002B39C AFA60028 */  sw      $a2, 0x0028($sp)
/* 1A300 8002B3A0 0C00C396 */  jal     func_80030E58
/* 1A304 8002B3A4 8FA40020 */  lw      $a0, 0x0020($sp)
/* 1A308 8002B3A8 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 1A30C 8002B3AC A7A2001E */  sh      $v0, 0x001E($sp)
/* 1A310 8002B3B0 8FB90024 */  lw      $t9, 0x0024($sp)
/* 1A314 8002B3B4 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 00000004
/* 1A318 8002B3B8 0002C080 */  sll     $t8, $v0,  2
/* 1A31C 8002B3BC 8FA50028 */  lw      $a1, 0x0028($sp)
/* 1A320 8002B3C0 97260000 */  lhu     $a2, 0x0000($t9)           ## 00000000
/* 1A324 8002B3C4 0C00ACD8 */  jal     func_8002B360
/* 1A328 8002B3C8 01F82021 */  addu    $a0, $t7, $t8
/* 1A32C 8002B3CC 97A8001E */  lhu     $t0, 0x001E($sp)
/* 1A330 8002B3D0 8FA90024 */  lw      $t1, 0x0024($sp)
/* 1A334 8002B3D4 A5280000 */  sh      $t0, 0x0000($t1)           ## 00000000
/* 1A338 8002B3D8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A33C 8002B3DC 03E00008 */  jr      $ra
/* 1A340 8002B3E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel func_8002B3E4
/* 1A344 8002B3E4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1A348 8002B3E8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A34C 8002B3EC AFA40020 */  sw      $a0, 0x0020($sp)
/* 1A350 8002B3F0 AFA50024 */  sw      $a1, 0x0024($sp)
/* 1A354 8002B3F4 AFA60028 */  sw      $a2, 0x0028($sp)
/* 1A358 8002B3F8 0C00AD2B */  jal     func_8002B4AC
/* 1A35C 8002B3FC 8FA40020 */  lw      $a0, 0x0020($sp)
/* 1A360 8002B400 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 1A364 8002B404 A7A2001E */  sh      $v0, 0x001E($sp)
/* 1A368 8002B408 8FB90024 */  lw      $t9, 0x0024($sp)
/* 1A36C 8002B40C 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 1A370 8002B410 0002C080 */  sll     $t8, $v0,  2
/* 1A374 8002B414 8FA50028 */  lw      $a1, 0x0028($sp)
/* 1A378 8002B418 97260000 */  lhu     $a2, 0x0000($t9)           ## 00000000
/* 1A37C 8002B41C 0C00ACD8 */  jal     func_8002B360
/* 1A380 8002B420 01F82021 */  addu    $a0, $t7, $t8
/* 1A384 8002B424 97A8001E */  lhu     $t0, 0x001E($sp)
/* 1A388 8002B428 8FA90024 */  lw      $t1, 0x0024($sp)
/* 1A38C 8002B42C A5280000 */  sh      $t0, 0x0000($t1)           ## 00000000
/* 1A390 8002B430 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A394 8002B434 03E00008 */  jr      $ra
/* 1A398 8002B438 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel func_8002B43C
/* 1A39C 8002B43C AFA40000 */  sw      $a0, 0x0000($sp)
/* 1A3A0 8002B440 ACA00000 */  sw      $zero, 0x0000($a1)         ## 00000000
/* 1A3A4 8002B444 ACA00004 */  sw      $zero, 0x0004($a1)         ## 00000004
/* 1A3A8 8002B448 03E00008 */  jr      $ra
/* 1A3AC 8002B44C 00000000 */  nop


glabel func_8002B450
/* 1A3B0 8002B450 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1A3B4 8002B454 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A3B8 8002B458 AFA40018 */  sw      $a0, 0x0018($sp)
/* 1A3BC 8002B45C AFA60020 */  sw      $a2, 0x0020($sp)
/* 1A3C0 8002B460 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 1A3C4 8002B464 8FA40018 */  lw      $a0, 0x0018($sp)
/* 1A3C8 8002B468 8FA50020 */  lw      $a1, 0x0020($sp)
/* 1A3CC 8002B46C 2406FFFE */  addiu   $a2, $zero, 0xFFFE         ## $a2 = FFFFFFFE
/* 1A3D0 8002B470 AFA7001C */  sw      $a3, 0x001C($sp)
/* 1A3D4 8002B474 24840074 */  addiu   $a0, $a0, 0x0074           ## $a0 = 00000074
/* 1A3D8 8002B478 0C028076 */  jal     func_800A01D8
/* 1A3DC 8002B47C 00052880 */  sll     $a1, $a1,  2
/* 1A3E0 8002B480 8FA7001C */  lw      $a3, 0x001C($sp)
/* 1A3E4 8002B484 ACE20000 */  sw      $v0, 0x0000($a3)           ## 00000000
/* 1A3E8 8002B488 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 1A3EC 8002B48C ACE00004 */  sw      $zero, 0x0004($a3)         ## 00000004
/* 1A3F0 8002B490 ACEE0008 */  sw      $t6, 0x0008($a3)           ## 00000008
/* 1A3F4 8002B494 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A3F8 8002B498 03E00008 */  jr      $ra
/* 1A3FC 8002B49C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_8002B4A0
/* 1A400 8002B4A0 AC800004 */  sw      $zero, 0x0004($a0)         ## 00000004
/* 1A404 8002B4A4 03E00008 */  jr      $ra
/* 1A408 8002B4A8 00000000 */  nop


glabel func_8002B4AC
/* 1A40C 8002B4AC 8C820004 */  lw      $v0, 0x0004($a0)           ## 00000004
/* 1A410 8002B4B0 8C8F0008 */  lw      $t7, 0x0008($a0)           ## 00000008
/* 1A414 8002B4B4 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 1A418 8002B4B8 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 1A41C 8002B4BC 006F082A */  slt     $at, $v1, $t7
/* 1A420 8002B4C0 14200003 */  bne     $at, $zero, .L8002B4D0
/* 1A424 8002B4C4 AC8E0004 */  sw      $t6, 0x0004($a0)           ## 00000004
/* 1A428 8002B4C8 03E00008 */  jr      $ra
/* 1A42C 8002B4CC 3402FFFF */  ori     $v0, $zero, 0xFFFF         ## $v0 = 0000FFFF
.L8002B4D0:
/* 1A430 8002B4D0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 1A434 8002B4D4 03E00008 */  jr      $ra
/* 1A438 8002B4D8 00000000 */  nop


glabel func_8002B4DC
/* 1A43C 8002B4DC 848E0000 */  lh      $t6, 0x0000($a0)           ## 00000000
/* 1A440 8002B4E0 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 1A444 8002B4E4 00000000 */  nop
/* 1A448 8002B4E8 468021A0 */  cvt.s.w $f6, $f4
/* 1A44C 8002B4EC E4A60000 */  swc1    $f6, 0x0000($a1)           ## 00000000
/* 1A450 8002B4F0 848F0002 */  lh      $t7, 0x0002($a0)           ## 00000002
/* 1A454 8002B4F4 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 1A458 8002B4F8 00000000 */  nop
/* 1A45C 8002B4FC 468042A0 */  cvt.s.w $f10, $f8
/* 1A460 8002B500 E4AA0004 */  swc1    $f10, 0x0004($a1)          ## 00000004
/* 1A464 8002B504 84980004 */  lh      $t8, 0x0004($a0)           ## 00000004
/* 1A468 8002B508 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 1A46C 8002B50C 00000000 */  nop
/* 1A470 8002B510 468084A0 */  cvt.s.w $f18, $f16
/* 1A474 8002B514 E4B20008 */  swc1    $f18, 0x0008($a1)          ## 00000008
/* 1A478 8002B518 03E00008 */  jr      $ra
/* 1A47C 8002B51C 00000000 */  nop


glabel func_8002B520
/* 1A480 8002B520 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 1A484 8002B524 4600218D */  trunc.w.s $f6, $f4
/* 1A488 8002B528 440F3000 */  mfc1    $t7, $f6
/* 1A48C 8002B52C 00000000 */  nop
/* 1A490 8002B530 A48F0000 */  sh      $t7, 0x0000($a0)           ## 00000000
/* 1A494 8002B534 C4A80004 */  lwc1    $f8, 0x0004($a1)           ## 00000004
/* 1A498 8002B538 4600428D */  trunc.w.s $f10, $f8
/* 1A49C 8002B53C 44195000 */  mfc1    $t9, $f10
/* 1A4A0 8002B540 00000000 */  nop
/* 1A4A4 8002B544 A4990002 */  sh      $t9, 0x0002($a0)           ## 00000002
/* 1A4A8 8002B548 C4B00008 */  lwc1    $f16, 0x0008($a1)          ## 00000008
/* 1A4AC 8002B54C 4600848D */  trunc.w.s $f18, $f16
/* 1A4B0 8002B550 44099000 */  mfc1    $t1, $f18
/* 1A4B4 8002B554 00000000 */  nop
/* 1A4B8 8002B558 A4890004 */  sh      $t1, 0x0004($a0)           ## 00000004
/* 1A4BC 8002B55C 03E00008 */  jr      $ra
/* 1A4C0 8002B560 00000000 */  nop


glabel func_8002B564
/* 1A4C4 8002B564 8482000A */  lh      $v0, 0x000A($a0)           ## 0000000A
/* 1A4C8 8002B568 24017FFF */  addiu   $at, $zero, 0x7FFF         ## $at = 00007FFF
/* 1A4CC 8002B56C 10410003 */  beq     $v0, $at, .L8002B57C
/* 1A4D0 8002B570 24018001 */  addiu   $at, $zero, 0x8001         ## $at = FFFF8001
/* 1A4D4 8002B574 14410009 */  bne     $v0, $at, .L8002B59C
/* 1A4D8 8002B578 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
.L8002B57C:
/* 1A4DC 8002B57C 948E0002 */  lhu     $t6, 0x0002($a0)           ## 00000002
/* 1A4E0 8002B580 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 1A4E4 8002B584 31CF1FFF */  andi    $t7, $t6, 0x1FFF           ## $t7 = 00000000
/* 1A4E8 8002B588 01E90019 */  multu   $t7, $t1
/* 1A4EC 8002B58C 0000C012 */  mflo    $t8
/* 1A4F0 8002B590 00B8C821 */  addu    $t9, $a1, $t8
/* 1A4F4 8002B594 03E00008 */  jr      $ra
/* 1A4F8 8002B598 87220002 */  lh      $v0, 0x0002($t9)           ## 00000002
.L8002B59C:
/* 1A4FC 8002B59C 94820002 */  lhu     $v0, 0x0002($a0)           ## 00000002
/* 1A500 8002B5A0 94830004 */  lhu     $v1, 0x0004($a0)           ## 00000004
/* 1A504 8002B5A4 94860006 */  lhu     $a2, 0x0006($a0)           ## 00000006
/* 1A508 8002B5A8 30421FFF */  andi    $v0, $v0, 0x1FFF           ## $v0 = 00000000
/* 1A50C 8002B5AC 00490019 */  multu   $v0, $t1
/* 1A510 8002B5B0 30631FFF */  andi    $v1, $v1, 0x1FFF           ## $v1 = 00000000
/* 1A514 8002B5B4 00005012 */  mflo    $t2
/* 1A518 8002B5B8 00AA5821 */  addu    $t3, $a1, $t2
/* 1A51C 8002B5BC 85670002 */  lh      $a3, 0x0002($t3)           ## 00000002
/* 1A520 8002B5C0 00690019 */  multu   $v1, $t1
/* 1A524 8002B5C4 00006012 */  mflo    $t4
/* 1A528 8002B5C8 00AC6821 */  addu    $t5, $a1, $t4
/* 1A52C 8002B5CC 85A80002 */  lh      $t0, 0x0002($t5)           ## 00000002
/* 1A530 8002B5D0 0107082A */  slt     $at, $t0, $a3
/* 1A534 8002B5D4 10200003 */  beq     $at, $zero, .L8002B5E4
/* 1A538 8002B5D8 00000000 */  nop
/* 1A53C 8002B5DC 00083C00 */  sll     $a3, $t0, 16
/* 1A540 8002B5E0 00073C03 */  sra     $a3, $a3, 16
.L8002B5E4:
/* 1A544 8002B5E4 00C90019 */  multu   $a2, $t1
/* 1A548 8002B5E8 00007012 */  mflo    $t6
/* 1A54C 8002B5EC 00AE7821 */  addu    $t7, $a1, $t6
/* 1A550 8002B5F0 85E30002 */  lh      $v1, 0x0002($t7)           ## 00000002
/* 1A554 8002B5F4 00E3082A */  slt     $at, $a3, $v1
/* 1A558 8002B5F8 10200003 */  beq     $at, $zero, .L8002B608
/* 1A55C 8002B5FC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 1A560 8002B600 03E00008 */  jr      $ra
/* 1A564 8002B604 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000000
.L8002B608:
/* 1A568 8002B608 03E00008 */  jr      $ra
/* 1A56C 8002B60C 00000000 */  nop


glabel func_8002B610
/* 1A570 8002B610 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1A574 8002B614 C4206A70 */  lwc1    $f0, 0x6A70($at)           ## 80106A70
/* 1A578 8002B618 848E0008 */  lh      $t6, 0x0008($a0)           ## 00000008
/* 1A57C 8002B61C 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 1A580 8002B620 00000000 */  nop
/* 1A584 8002B624 468021A0 */  cvt.s.w $f6, $f4
/* 1A588 8002B628 46003202 */  mul.s   $f8, $f6, $f0
/* 1A58C 8002B62C E4A80000 */  swc1    $f8, 0x0000($a1)           ## 00000000
/* 1A590 8002B630 848F000A */  lh      $t7, 0x000A($a0)           ## 0000000A
/* 1A594 8002B634 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 1A598 8002B638 00000000 */  nop
/* 1A59C 8002B63C 46805420 */  cvt.s.w $f16, $f10
/* 1A5A0 8002B640 46008482 */  mul.s   $f18, $f16, $f0
/* 1A5A4 8002B644 E4D20000 */  swc1    $f18, 0x0000($a2)          ## 00000000
/* 1A5A8 8002B648 8498000C */  lh      $t8, 0x000C($a0)           ## 0000000C
/* 1A5AC 8002B64C 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 1A5B0 8002B650 00000000 */  nop
/* 1A5B4 8002B654 468021A0 */  cvt.s.w $f6, $f4
/* 1A5B8 8002B658 46003202 */  mul.s   $f8, $f6, $f0
/* 1A5BC 8002B65C E4E80000 */  swc1    $f8, 0x0000($a3)           ## 00000000
/* 1A5C0 8002B660 03E00008 */  jr      $ra
/* 1A5C4 8002B664 00000000 */  nop


glabel func_8002B668
/* 1A5C8 8002B668 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1A5CC 8002B66C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A5D0 8002B670 AFA50044 */  sw      $a1, 0x0044($sp)
/* 1A5D4 8002B674 AFA60048 */  sw      $a2, 0x0048($sp)
/* 1A5D8 8002B678 AFA7004C */  sw      $a3, 0x004C($sp)
/* 1A5DC 8002B67C 1080004B */  beq     $a0, $zero, .L8002B7AC
/* 1A5E0 8002B680 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 1A5E4 8002B684 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFF8
/* 1A5E8 8002B688 0C00AD84 */  jal     func_8002B610
/* 1A5EC 8002B68C 27A70034 */  addiu   $a3, $sp, 0x0034           ## $a3 = FFFFFFF4
/* 1A5F0 8002B690 C7B2003C */  lwc1    $f18, 0x003C($sp)
/* 1A5F4 8002B694 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1A5F8 8002B698 C42C6A74 */  lwc1    $f12, 0x6A74($at)          ## 80106A74
/* 1A5FC 8002B69C 46129102 */  mul.s   $f4, $f18, $f18
/* 1A600 8002B6A0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1A604 8002B6A4 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 1A608 8002B6A8 8FA20050 */  lw      $v0, 0x0050($sp)
/* 1A60C 8002B6AC 46048001 */  sub.s   $f0, $f16, $f4
/* 1A610 8002B6B0 46000084 */  sqrt.s  $f2, $f0
/* 1A614 8002B6B4 46001005 */  abs.s   $f0, $f2
/* 1A618 8002B6B8 460C003C */  c.lt.s  $f0, $f12
/* 1A61C 8002B6BC 00000000 */  nop
/* 1A620 8002B6C0 4503000B */  bc1tl   .L8002B6F0
/* 1A624 8002B6C4 C7A20038 */  lwc1    $f2, 0x0038($sp)
/* 1A628 8002B6C8 46028003 */  div.s   $f0, $f16, $f2
/* 1A62C 8002B6CC C7A60038 */  lwc1    $f6, 0x0038($sp)
/* 1A630 8002B6D0 C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 1A634 8002B6D4 46003382 */  mul.s   $f14, $f6, $f0
/* 1A638 8002B6D8 00000000 */  nop
/* 1A63C 8002B6DC 46004302 */  mul.s   $f12, $f8, $f0
/* 1A640 8002B6E0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1A644 8002B6E4 10000016 */  beq     $zero, $zero, .L8002B740
/* 1A648 8002B6E8 46006307 */  neg.s   $f12, $f12
/* 1A64C 8002B6EC C7A20038 */  lwc1    $f2, 0x0038($sp)
.L8002B6F0:
/* 1A650 8002B6F0 46021282 */  mul.s   $f10, $f2, $f2
/* 1A654 8002B6F4 460A8001 */  sub.s   $f0, $f16, $f10
/* 1A658 8002B6F8 46000384 */  sqrt.s  $f14, $f0
/* 1A65C 8002B6FC 46007005 */  abs.s   $f0, $f14
/* 1A660 8002B700 460C003C */  c.lt.s  $f0, $f12
/* 1A664 8002B704 00000000 */  nop
/* 1A668 8002B708 4503000A */  bc1tl   .L8002B734
/* 1A66C 8002B70C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1A670 8002B710 460E8003 */  div.s   $f0, $f16, $f14
/* 1A674 8002B714 C7A40034 */  lwc1    $f4, 0x0034($sp)
/* 1A678 8002B718 46009302 */  mul.s   $f12, $f18, $f0
/* 1A67C 8002B71C 00000000 */  nop
/* 1A680 8002B720 46002082 */  mul.s   $f2, $f4, $f0
/* 1A684 8002B724 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1A688 8002B728 10000005 */  beq     $zero, $zero, .L8002B740
/* 1A68C 8002B72C 46001087 */  neg.s   $f2, $f2
/* 1A690 8002B730 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L8002B734:
/* 1A694 8002B734 00000000 */  nop
/* 1A698 8002B738 46000306 */  mov.s   $f12, $f0
/* 1A69C 8002B73C 46000086 */  mov.s   $f2, $f0
.L8002B740:
/* 1A6A0 8002B740 E4420000 */  swc1    $f2, 0x0000($v0)           ## 00000000
/* 1A6A4 8002B744 C7A6003C */  lwc1    $f6, 0x003C($sp)
/* 1A6A8 8002B748 46003207 */  neg.s   $f8, $f6
/* 1A6AC 8002B74C 460E4282 */  mul.s   $f10, $f8, $f14
/* 1A6B0 8002B750 E44A0004 */  swc1    $f10, 0x0004($v0)          ## 00000004
/* 1A6B4 8002B754 C7A4003C */  lwc1    $f4, 0x003C($sp)
/* 1A6B8 8002B758 460C2182 */  mul.s   $f6, $f4, $f12
/* 1A6BC 8002B75C E4460008 */  swc1    $f6, 0x0008($v0)           ## 00000008
/* 1A6C0 8002B760 C7A8003C */  lwc1    $f8, 0x003C($sp)
/* 1A6C4 8002B764 E4480010 */  swc1    $f8, 0x0010($v0)           ## 00000010
/* 1A6C8 8002B768 C7AA0038 */  lwc1    $f10, 0x0038($sp)
/* 1A6CC 8002B76C E44A0014 */  swc1    $f10, 0x0014($v0)          ## 00000014
/* 1A6D0 8002B770 C7A40034 */  lwc1    $f4, 0x0034($sp)
/* 1A6D4 8002B774 E44C0024 */  swc1    $f12, 0x0024($v0)          ## 00000024
/* 1A6D8 8002B778 E44E0028 */  swc1    $f14, 0x0028($v0)          ## 00000028
/* 1A6DC 8002B77C E440000C */  swc1    $f0, 0x000C($v0)           ## 0000000C
/* 1A6E0 8002B780 E440001C */  swc1    $f0, 0x001C($v0)           ## 0000001C
/* 1A6E4 8002B784 E4400020 */  swc1    $f0, 0x0020($v0)           ## 00000020
/* 1A6E8 8002B788 E440002C */  swc1    $f0, 0x002C($v0)           ## 0000002C
/* 1A6EC 8002B78C E4440018 */  swc1    $f4, 0x0018($v0)           ## 00000018
/* 1A6F0 8002B790 C7A60044 */  lwc1    $f6, 0x0044($sp)
/* 1A6F4 8002B794 E4460030 */  swc1    $f6, 0x0030($v0)           ## 00000030
/* 1A6F8 8002B798 C7A80048 */  lwc1    $f8, 0x0048($sp)
/* 1A6FC 8002B79C E4480034 */  swc1    $f8, 0x0034($v0)           ## 00000034
/* 1A700 8002B7A0 C7AA004C */  lwc1    $f10, 0x004C($sp)
/* 1A704 8002B7A4 E450003C */  swc1    $f16, 0x003C($v0)          ## 0000003C
/* 1A708 8002B7A8 E44A0038 */  swc1    $f10, 0x0038($v0)          ## 00000038
.L8002B7AC:
/* 1A70C 8002B7AC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A710 8002B7B0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1A714 8002B7B4 03E00008 */  jr      $ra
/* 1A718 8002B7B8 00000000 */  nop


glabel func_8002B7BC
/* 1A71C 8002B7BC 848E0008 */  lh      $t6, 0x0008($a0)           ## 00000008
/* 1A720 8002B7C0 848F000A */  lh      $t7, 0x000A($a0)           ## 0000000A
/* 1A724 8002B7C4 C4A80000 */  lwc1    $f8, 0x0000($a1)           ## 00000000
/* 1A728 8002B7C8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 1A72C 8002B7CC 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 1A730 8002B7D0 8498000C */  lh      $t8, 0x000C($a0)           ## 0000000C
/* 1A734 8002B7D4 468021A0 */  cvt.s.w $f6, $f4
/* 1A738 8002B7D8 C4A40004 */  lwc1    $f4, 0x0004($a1)           ## 00000004
/* 1A73C 8002B7DC 8499000E */  lh      $t9, 0x000E($a0)           ## 0000000E
/* 1A740 8002B7E0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1A744 8002B7E4 468084A0 */  cvt.s.w $f18, $f16
/* 1A748 8002B7E8 46083282 */  mul.s   $f10, $f6, $f8
/* 1A74C 8002B7EC 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 1A750 8002B7F0 46049182 */  mul.s   $f6, $f18, $f4
/* 1A754 8002B7F4 C4A40008 */  lwc1    $f4, 0x0008($a1)           ## 00000008
/* 1A758 8002B7F8 468084A0 */  cvt.s.w $f18, $f16
/* 1A75C 8002B7FC C4306A78 */  lwc1    $f16, 0x6A78($at)          ## 80106A78
/* 1A760 8002B800 46065200 */  add.s   $f8, $f10, $f6
/* 1A764 8002B804 46049282 */  mul.s   $f10, $f18, $f4
/* 1A768 8002B808 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 1A76C 8002B80C 460A4180 */  add.s   $f6, $f8, $f10
/* 1A770 8002B810 46802220 */  cvt.s.w $f8, $f4
/* 1A774 8002B814 46103482 */  mul.s   $f18, $f6, $f16
/* 1A778 8002B818 46089000 */  add.s   $f0, $f18, $f8
/* 1A77C 8002B81C 03E00008 */  jr      $ra
/* 1A780 8002B820 00000000 */  nop


glabel func_8002B824
/* 1A784 8002B824 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1A788 8002B828 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A78C 8002B82C AFA40018 */  sw      $a0, 0x0018($sp)
/* 1A790 8002B830 AFA5001C */  sw      $a1, 0x001C($sp)
/* 1A794 8002B834 AFA60020 */  sw      $a2, 0x0020($sp)
/* 1A798 8002B838 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 1A79C 8002B83C 8FA8001C */  lw      $t0, 0x001C($sp)
/* 1A7A0 8002B840 8FA50020 */  lw      $a1, 0x0020($sp)
/* 1A7A4 8002B844 95CF0002 */  lhu     $t7, 0x0002($t6)           ## 00000002
/* 1A7A8 8002B848 31F81FFF */  andi    $t8, $t7, 0x1FFF           ## $t8 = 00000000
/* 1A7AC 8002B84C 0018C880 */  sll     $t9, $t8,  2
/* 1A7B0 8002B850 0338C823 */  subu    $t9, $t9, $t8
/* 1A7B4 8002B854 0019C840 */  sll     $t9, $t9,  1
/* 1A7B8 8002B858 0C00AD37 */  jal     func_8002B4DC
/* 1A7BC 8002B85C 03282021 */  addu    $a0, $t9, $t0
/* 1A7C0 8002B860 8FA90018 */  lw      $t1, 0x0018($sp)
/* 1A7C4 8002B864 8FAD001C */  lw      $t5, 0x001C($sp)
/* 1A7C8 8002B868 8FA50020 */  lw      $a1, 0x0020($sp)
/* 1A7CC 8002B86C 952A0004 */  lhu     $t2, 0x0004($t1)           ## 00000004
/* 1A7D0 8002B870 24A5000C */  addiu   $a1, $a1, 0x000C           ## $a1 = 0000000C
/* 1A7D4 8002B874 314B1FFF */  andi    $t3, $t2, 0x1FFF           ## $t3 = 00000000
/* 1A7D8 8002B878 000B6080 */  sll     $t4, $t3,  2
/* 1A7DC 8002B87C 018B6023 */  subu    $t4, $t4, $t3
/* 1A7E0 8002B880 000C6040 */  sll     $t4, $t4,  1
/* 1A7E4 8002B884 0C00AD37 */  jal     func_8002B4DC
/* 1A7E8 8002B888 018D2021 */  addu    $a0, $t4, $t5
/* 1A7EC 8002B88C 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 1A7F0 8002B890 8FB9001C */  lw      $t9, 0x001C($sp)
/* 1A7F4 8002B894 8FA50020 */  lw      $a1, 0x0020($sp)
/* 1A7F8 8002B898 95CF0006 */  lhu     $t7, 0x0006($t6)           ## 00000006
/* 1A7FC 8002B89C 24A50018 */  addiu   $a1, $a1, 0x0018           ## $a1 = 00000018
/* 1A800 8002B8A0 000FC080 */  sll     $t8, $t7,  2
/* 1A804 8002B8A4 030FC023 */  subu    $t8, $t8, $t7
/* 1A808 8002B8A8 0018C040 */  sll     $t8, $t8,  1
/* 1A80C 8002B8AC 0C00AD37 */  jal     func_8002B4DC
/* 1A810 8002B8B0 03192021 */  addu    $a0, $t8, $t9
/* 1A814 8002B8B4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A818 8002B8B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1A81C 8002B8BC 03E00008 */  jr      $ra
/* 1A820 8002B8C0 00000000 */  nop


glabel func_8002B8C4
/* 1A824 8002B8C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1A828 8002B8C8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1A82C 8002B8CC 10800005 */  beq     $a0, $zero, .L8002B8E4
/* 1A830 8002B8D0 28A10033 */  slti    $at, $a1, 0x0033
/* 1A834 8002B8D4 10200003 */  beq     $at, $zero, .L8002B8E4
/* 1A838 8002B8D8 00000000 */  nop
/* 1A83C 8002B8DC 14E0000D */  bne     $a3, $zero, .L8002B914
/* 1A840 8002B8E0 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
.L8002B8E4:
/* 1A844 8002B8E4 50E00014 */  beql    $a3, $zero, .L8002B938
/* 1A848 8002B8E8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1A84C 8002B8EC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1A850 8002B8F0 00000000 */  nop
/* 1A854 8002B8F4 E4E00020 */  swc1    $f0, 0x0020($a3)           ## 00000020
/* 1A858 8002B8F8 E4E00014 */  swc1    $f0, 0x0014($a3)           ## 00000014
/* 1A85C 8002B8FC E4E00010 */  swc1    $f0, 0x0010($a3)           ## 00000010
/* 1A860 8002B900 E4E0000C */  swc1    $f0, 0x000C($a3)           ## 0000000C
/* 1A864 8002B904 E4E00008 */  swc1    $f0, 0x0008($a3)           ## 00000008
/* 1A868 8002B908 E4E00004 */  swc1    $f0, 0x0004($a3)           ## 00000004
/* 1A86C 8002B90C 10000009 */  beq     $zero, $zero, .L8002B934
/* 1A870 8002B910 E4E00000 */  swc1    $f0, 0x0000($a3)           ## 00000000
.L8002B914:
/* 1A874 8002B914 54A10005 */  bnel    $a1, $at, .L8002B92C
/* 1A878 8002B918 8CC51444 */  lw      $a1, 0x1444($a2)           ## 00001444
/* 1A87C 8002B91C 8CCE0000 */  lw      $t6, 0x0000($a2)           ## 00000000
/* 1A880 8002B920 10000002 */  beq     $zero, $zero, .L8002B92C
/* 1A884 8002B924 8DC50010 */  lw      $a1, 0x0010($t6)           ## 00000010
/* 1A888 8002B928 8CC51444 */  lw      $a1, 0x1444($a2)           ## 00001444
.L8002B92C:
/* 1A88C 8002B92C 0C00AE09 */  jal     func_8002B824
/* 1A890 8002B930 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
.L8002B934:
/* 1A894 8002B934 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8002B938:
/* 1A898 8002B938 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1A89C 8002B93C 03E00008 */  jr      $ra
/* 1A8A0 8002B940 00000000 */  nop


glabel func_8002B944
/* 1A8A4 8002B944 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1A8A8 8002B948 AFB00038 */  sw      $s0, 0x0038($sp)
/* 1A8AC 8002B94C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1A8B0 8002B950 AFBF003C */  sw      $ra, 0x003C($sp)
/* 1A8B4 8002B954 AFA50044 */  sw      $a1, 0x0044($sp)
/* 1A8B8 8002B958 AFA60048 */  sw      $a2, 0x0048($sp)
/* 1A8BC 8002B95C AFA7004C */  sw      $a3, 0x004C($sp)
/* 1A8C0 8002B960 960E0002 */  lhu     $t6, 0x0002($s0)           ## 00000002
/* 1A8C4 8002B964 8FB90044 */  lw      $t9, 0x0044($sp)
/* 1A8C8 8002B968 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1A8CC 8002B96C 31CF1FFF */  andi    $t7, $t6, 0x1FFF           ## $t7 = 00000000
/* 1A8D0 8002B970 000FC080 */  sll     $t8, $t7,  2
/* 1A8D4 8002B974 030FC023 */  subu    $t8, $t8, $t7
/* 1A8D8 8002B978 0018C040 */  sll     $t8, $t8,  1
/* 1A8DC 8002B97C 24848D60 */  addiu   $a0, $a0, 0x8D60           ## $a0 = 80118D60
/* 1A8E0 8002B980 0C018F33 */  jal     Math_Vec3s_ToVec3f              ## Vec3f_CopyVec3s
/* 1A8E4 8002B984 03192821 */  addu    $a1, $t8, $t9
/* 1A8E8 8002B988 96080004 */  lhu     $t0, 0x0004($s0)           ## 00000004
/* 1A8EC 8002B98C 8FAB0044 */  lw      $t3, 0x0044($sp)
/* 1A8F0 8002B990 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1A8F4 8002B994 31091FFF */  andi    $t1, $t0, 0x1FFF           ## $t1 = 00000000
/* 1A8F8 8002B998 00095080 */  sll     $t2, $t1,  2
/* 1A8FC 8002B99C 01495023 */  subu    $t2, $t2, $t1
/* 1A900 8002B9A0 000A5040 */  sll     $t2, $t2,  1
/* 1A904 8002B9A4 24848D6C */  addiu   $a0, $a0, 0x8D6C           ## $a0 = 80118D6C
/* 1A908 8002B9A8 0C018F33 */  jal     Math_Vec3s_ToVec3f              ## Vec3f_CopyVec3s
/* 1A90C 8002B9AC 014B2821 */  addu    $a1, $t2, $t3
/* 1A910 8002B9B0 960C0006 */  lhu     $t4, 0x0006($s0)           ## 00000006
/* 1A914 8002B9B4 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 1A918 8002B9B8 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1A91C 8002B9BC 000C6880 */  sll     $t5, $t4,  2
/* 1A920 8002B9C0 01AC6823 */  subu    $t5, $t5, $t4
/* 1A924 8002B9C4 000D6840 */  sll     $t5, $t5,  1
/* 1A928 8002B9C8 24848D78 */  addiu   $a0, $a0, 0x8D78           ## $a0 = 80118D78
/* 1A92C 8002B9CC 0C018F33 */  jal     Math_Vec3s_ToVec3f              ## Vec3f_CopyVec3s
/* 1A930 8002B9D0 01AE2821 */  addu    $a1, $t5, $t6
/* 1A934 8002B9D4 860F0008 */  lh      $t7, 0x0008($s0)           ## 00000008
/* 1A938 8002B9D8 8618000A */  lh      $t8, 0x000A($s0)           ## 0000000A
/* 1A93C 8002B9DC 8619000C */  lh      $t9, 0x000C($s0)           ## 0000000C
/* 1A940 8002B9E0 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 1A944 8002B9E4 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 1A948 8002B9E8 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1A94C 8002B9EC 468021A0 */  cvt.s.w $f6, $f4
/* 1A950 8002B9F0 C42E6A7C */  lwc1    $f14, 0x6A7C($at)          ## 80106A7C
/* 1A954 8002B9F4 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 1A958 8002B9F8 8FA90050 */  lw      $t1, 0x0050($sp)
/* 1A95C 8002B9FC 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1A960 8002BA00 468042A0 */  cvt.s.w $f10, $f8
/* 1A964 8002BA04 460E3002 */  mul.s   $f0, $f6, $f14
/* 1A968 8002BA08 C7A8004C */  lwc1    $f8, 0x004C($sp)
/* 1A96C 8002BA0C 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1A970 8002BA10 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1A974 8002BA14 24C68D78 */  addiu   $a2, $a2, 0x8D78           ## $a2 = 80118D78
/* 1A978 8002BA18 460E5082 */  mul.s   $f2, $f10, $f14
/* 1A97C 8002BA1C C7AA0048 */  lwc1    $f10, 0x0048($sp)
/* 1A980 8002BA20 44070000 */  mfc1    $a3, $f0
/* 1A984 8002BA24 24A58D6C */  addiu   $a1, $a1, 0x8D6C           ## $a1 = 80118D6C
/* 1A988 8002BA28 24848D60 */  addiu   $a0, $a0, 0x8D60           ## $a0 = 80118D60
/* 1A98C 8002BA2C 468084A0 */  cvt.s.w $f18, $f16
/* 1A990 8002BA30 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 1A994 8002BA34 C7B00054 */  lwc1    $f16, 0x0054($sp)
/* 1A998 8002BA38 460E9302 */  mul.s   $f12, $f18, $f14
/* 1A99C 8002BA3C E7AC0014 */  swc1    $f12, 0x0014($sp)
/* 1A9A0 8002BA40 8608000E */  lh      $t0, 0x000E($s0)           ## 0000000E
/* 1A9A4 8002BA44 AFA90024 */  sw      $t1, 0x0024($sp)
/* 1A9A8 8002BA48 E7A8001C */  swc1    $f8, 0x001C($sp)
/* 1A9AC 8002BA4C 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 1A9B0 8002BA50 E7AA0020 */  swc1    $f10, 0x0020($sp)
/* 1A9B4 8002BA54 E7B00028 */  swc1    $f16, 0x0028($sp)
/* 1A9B8 8002BA58 468021A0 */  cvt.s.w $f6, $f4
/* 1A9BC 8002BA5C 0C029B77 */  jal     func_800A6DDC
/* 1A9C0 8002BA60 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 1A9C4 8002BA64 8FBF003C */  lw      $ra, 0x003C($sp)
/* 1A9C8 8002BA68 8FB00038 */  lw      $s0, 0x0038($sp)
/* 1A9CC 8002BA6C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1A9D0 8002BA70 03E00008 */  jr      $ra
/* 1A9D4 8002BA74 00000000 */  nop


glabel func_8002BA78
/* 1A9D8 8002BA78 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 1A9DC 8002BA7C AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1A9E0 8002BA80 AFA40048 */  sw      $a0, 0x0048($sp)
/* 1A9E4 8002BA84 AFA60050 */  sw      $a2, 0x0050($sp)
/* 1A9E8 8002BA88 AFA70054 */  sw      $a3, 0x0054($sp)
/* 1A9EC 8002BA8C 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1A9F0 8002BA90 24C68C70 */  addiu   $a2, $a2, 0x8C70           ## $a2 = 80118C70
/* 1A9F4 8002BA94 0C00AE09 */  jal     func_8002B824
/* 1A9F8 8002BA98 8FA40048 */  lw      $a0, 0x0048($sp)
/* 1A9FC 8002BA9C 8FA40048 */  lw      $a0, 0x0048($sp)
/* 1AA00 8002BAA0 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFFC
/* 1AA04 8002BAA4 27A60040 */  addiu   $a2, $sp, 0x0040           ## $a2 = FFFFFFF8
/* 1AA08 8002BAA8 0C00AD84 */  jal     func_8002B610
/* 1AA0C 8002BAAC 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFF4
/* 1AA10 8002BAB0 C7A40040 */  lwc1    $f4, 0x0040($sp)
/* 1AA14 8002BAB4 C7A6003C */  lwc1    $f6, 0x003C($sp)
/* 1AA18 8002BAB8 8FAE0048 */  lw      $t6, 0x0048($sp)
/* 1AA1C 8002BABC E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1AA20 8002BAC0 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 1AA24 8002BAC4 85CF000E */  lh      $t7, 0x000E($t6)           ## 0000000E
/* 1AA28 8002BAC8 C7A4005C */  lwc1    $f4, 0x005C($sp)
/* 1AA2C 8002BACC C7B00054 */  lwc1    $f16, 0x0054($sp)
/* 1AA30 8002BAD0 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 1AA34 8002BAD4 C7B20050 */  lwc1    $f18, 0x0050($sp)
/* 1AA38 8002BAD8 8FB80058 */  lw      $t8, 0x0058($sp)
/* 1AA3C 8002BADC 468042A0 */  cvt.s.w $f10, $f8
/* 1AA40 8002BAE0 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1AA44 8002BAE4 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1AA48 8002BAE8 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AA4C 8002BAEC 24C68C88 */  addiu   $a2, $a2, 0x8C88           ## $a2 = 80118C88
/* 1AA50 8002BAF0 24A58C7C */  addiu   $a1, $a1, 0x8C7C           ## $a1 = 80118C7C
/* 1AA54 8002BAF4 24848C70 */  addiu   $a0, $a0, 0x8C70           ## $a0 = 80118C70
/* 1AA58 8002BAF8 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 1AA5C 8002BAFC 8FA70044 */  lw      $a3, 0x0044($sp)
/* 1AA60 8002BB00 E7A40028 */  swc1    $f4, 0x0028($sp)
/* 1AA64 8002BB04 E7B0001C */  swc1    $f16, 0x001C($sp)
/* 1AA68 8002BB08 E7B20020 */  swc1    $f18, 0x0020($sp)
/* 1AA6C 8002BB0C 0C029BA3 */  jal     func_800A6E8C
/* 1AA70 8002BB10 AFB80024 */  sw      $t8, 0x0024($sp)
/* 1AA74 8002BB14 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1AA78 8002BB18 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 1AA7C 8002BB1C 03E00008 */  jr      $ra
/* 1AA80 8002BB20 00000000 */  nop


glabel func_8002BB24
/* 1AA84 8002BB24 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1AA88 8002BB28 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 1AA8C 8002BB2C 44877000 */  mtc1    $a3, $f14                  ## $f14 = 0.00
/* 1AA90 8002BB30 AFBF001C */  sw      $ra, 0x001C($sp)
/* 1AA94 8002BB34 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1AA98 8002BB38 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1AA9C 8002BB3C 8FAE0030 */  lw      $t6, 0x0030($sp)
/* 1AAA0 8002BB40 44066000 */  mfc1    $a2, $f12
/* 1AAA4 8002BB44 44077000 */  mfc1    $a3, $f14
/* 1AAA8 8002BB48 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1AAAC 8002BB4C 0C00AE51 */  jal     func_8002B944
/* 1AAB0 8002BB50 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1AAB4 8002BB54 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1AAB8 8002BB58 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1AABC 8002BB5C 03E00008 */  jr      $ra
/* 1AAC0 8002BB60 00000000 */  nop


glabel func_8002BB64
/* 1AAC4 8002BB64 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1AAC8 8002BB68 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1AACC 8002BB6C AFA40040 */  sw      $a0, 0x0040($sp)
/* 1AAD0 8002BB70 AFA60048 */  sw      $a2, 0x0048($sp)
/* 1AAD4 8002BB74 AFA7004C */  sw      $a3, 0x004C($sp)
/* 1AAD8 8002BB78 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AADC 8002BB7C 24C68C98 */  addiu   $a2, $a2, 0x8C98           ## $a2 = 80118C98
/* 1AAE0 8002BB80 0C00AE09 */  jal     func_8002B824
/* 1AAE4 8002BB84 8FA40040 */  lw      $a0, 0x0040($sp)
/* 1AAE8 8002BB88 8FA40040 */  lw      $a0, 0x0040($sp)
/* 1AAEC 8002BB8C 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 1AAF0 8002BB90 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFF8
/* 1AAF4 8002BB94 0C00AD84 */  jal     func_8002B610
/* 1AAF8 8002BB98 27A70034 */  addiu   $a3, $sp, 0x0034           ## $a3 = FFFFFFF4
/* 1AAFC 8002BB9C C7A40038 */  lwc1    $f4, 0x0038($sp)
/* 1AB00 8002BBA0 C7A60034 */  lwc1    $f6, 0x0034($sp)
/* 1AB04 8002BBA4 8FAE0040 */  lw      $t6, 0x0040($sp)
/* 1AB08 8002BBA8 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1AB0C 8002BBAC E7A60014 */  swc1    $f6, 0x0014($sp)
/* 1AB10 8002BBB0 85CF000E */  lh      $t7, 0x000E($t6)           ## 0000000E
/* 1AB14 8002BBB4 C7B00048 */  lwc1    $f16, 0x0048($sp)
/* 1AB18 8002BBB8 C7B2004C */  lwc1    $f18, 0x004C($sp)
/* 1AB1C 8002BBBC 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 1AB20 8002BBC0 8FB80050 */  lw      $t8, 0x0050($sp)
/* 1AB24 8002BBC4 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1AB28 8002BBC8 468042A0 */  cvt.s.w $f10, $f8
/* 1AB2C 8002BBCC 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1AB30 8002BBD0 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AB34 8002BBD4 24C68CB0 */  addiu   $a2, $a2, 0x8CB0           ## $a2 = 80118CB0
/* 1AB38 8002BBD8 24A58CA4 */  addiu   $a1, $a1, 0x8CA4           ## $a1 = 80118CA4
/* 1AB3C 8002BBDC 24848C98 */  addiu   $a0, $a0, 0x8C98           ## $a0 = 80118C98
/* 1AB40 8002BBE0 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 1AB44 8002BBE4 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1AB48 8002BBE8 E7B0001C */  swc1    $f16, 0x001C($sp)
/* 1AB4C 8002BBEC E7B20020 */  swc1    $f18, 0x0020($sp)
/* 1AB50 8002BBF0 0C029D40 */  jal     func_800A7500
/* 1AB54 8002BBF4 AFB80024 */  sw      $t8, 0x0024($sp)
/* 1AB58 8002BBF8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1AB5C 8002BBFC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1AB60 8002BC00 03E00008 */  jr      $ra
/* 1AB64 8002BC04 00000000 */  nop


glabel func_8002BC08
/* 1AB68 8002BC08 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1AB6C 8002BC0C AFBF002C */  sw      $ra, 0x002C($sp)
/* 1AB70 8002BC10 AFA40040 */  sw      $a0, 0x0040($sp)
/* 1AB74 8002BC14 AFA60048 */  sw      $a2, 0x0048($sp)
/* 1AB78 8002BC18 AFA7004C */  sw      $a3, 0x004C($sp)
/* 1AB7C 8002BC1C 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AB80 8002BC20 24C68CC0 */  addiu   $a2, $a2, 0x8CC0           ## $a2 = 80118CC0
/* 1AB84 8002BC24 0C00AE09 */  jal     func_8002B824
/* 1AB88 8002BC28 8FA40040 */  lw      $a0, 0x0040($sp)
/* 1AB8C 8002BC2C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 1AB90 8002BC30 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 1AB94 8002BC34 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFF8
/* 1AB98 8002BC38 0C00AD84 */  jal     func_8002B610
/* 1AB9C 8002BC3C 27A70034 */  addiu   $a3, $sp, 0x0034           ## $a3 = FFFFFFF4
/* 1ABA0 8002BC40 C7A40038 */  lwc1    $f4, 0x0038($sp)
/* 1ABA4 8002BC44 C7A60034 */  lwc1    $f6, 0x0034($sp)
/* 1ABA8 8002BC48 8FAE0040 */  lw      $t6, 0x0040($sp)
/* 1ABAC 8002BC4C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1ABB0 8002BC50 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 1ABB4 8002BC54 85CF000E */  lh      $t7, 0x000E($t6)           ## 0000000E
/* 1ABB8 8002BC58 C7B00048 */  lwc1    $f16, 0x0048($sp)
/* 1ABBC 8002BC5C C7B2004C */  lwc1    $f18, 0x004C($sp)
/* 1ABC0 8002BC60 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 1ABC4 8002BC64 8FB80050 */  lw      $t8, 0x0050($sp)
/* 1ABC8 8002BC68 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1ABCC 8002BC6C 468042A0 */  cvt.s.w $f10, $f8
/* 1ABD0 8002BC70 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1ABD4 8002BC74 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1ABD8 8002BC78 24C68CD8 */  addiu   $a2, $a2, 0x8CD8           ## $a2 = 80118CD8
/* 1ABDC 8002BC7C 24A58CCC */  addiu   $a1, $a1, 0x8CCC           ## $a1 = 80118CCC
/* 1ABE0 8002BC80 24848CC0 */  addiu   $a0, $a0, 0x8CC0           ## $a0 = 80118CC0
/* 1ABE4 8002BC84 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 1ABE8 8002BC88 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1ABEC 8002BC8C E7B0001C */  swc1    $f16, 0x001C($sp)
/* 1ABF0 8002BC90 E7B20020 */  swc1    $f18, 0x0020($sp)
/* 1ABF4 8002BC94 0C029EEF */  jal     func_800A7BBC
/* 1ABF8 8002BC98 AFB80024 */  sw      $t8, 0x0024($sp)
/* 1ABFC 8002BC9C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1AC00 8002BCA0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1AC04 8002BCA4 03E00008 */  jr      $ra
/* 1AC08 8002BCA8 00000000 */  nop


glabel func_8002BCAC
/* 1AC0C 8002BCAC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1AC10 8002BCB0 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 1AC14 8002BCB4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1AC18 8002BCB8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1AC1C 8002BCBC AFA60040 */  sw      $a2, 0x0040($sp)
/* 1AC20 8002BCC0 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1AC24 8002BCC4 848E000E */  lh      $t6, 0x000E($a0)           ## 0000000E
/* 1AC28 8002BCC8 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 1AC2C 8002BCCC 8FA80040 */  lw      $t0, 0x0040($sp)
/* 1AC30 8002BCD0 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 1AC34 8002BCD4 8FA90044 */  lw      $t1, 0x0044($sp)
/* 1AC38 8002BCD8 468021A0 */  cvt.s.w $f6, $f4
/* 1AC3C 8002BCDC E4268D1C */  swc1    $f6, -0x72E4($at)          ## 80118D1C
/* 1AC40 8002BCE0 848F0008 */  lh      $t7, 0x0008($a0)           ## 00000008
/* 1AC44 8002BCE4 8498000A */  lh      $t8, 0x000A($a0)           ## 0000000A
/* 1AC48 8002BCE8 8499000C */  lh      $t9, 0x000C($a0)           ## 0000000C
/* 1AC4C 8002BCEC 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 1AC50 8002BCF0 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 1AC54 8002BCF4 C5060000 */  lwc1    $f6, 0x0000($t0)           ## 00000000
/* 1AC58 8002BCF8 46804020 */  cvt.s.w $f0, $f8
/* 1AC5C 8002BCFC 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 1AC60 8002BD00 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1AC64 8002BD04 468050A0 */  cvt.s.w $f2, $f10
/* 1AC68 8002BD08 46060202 */  mul.s   $f8, $f0, $f6
/* 1AC6C 8002BD0C C50A0004 */  lwc1    $f10, 0x0004($t0)          ## 00000004
/* 1AC70 8002BD10 46802320 */  cvt.s.w $f12, $f4
/* 1AC74 8002BD14 460A1102 */  mul.s   $f4, $f2, $f10
/* 1AC78 8002BD18 C50A0008 */  lwc1    $f10, 0x0008($t0)          ## 00000008
/* 1AC7C 8002BD1C 46044180 */  add.s   $f6, $f8, $f4
/* 1AC80 8002BD20 460A6202 */  mul.s   $f8, $f12, $f10
/* 1AC84 8002BD24 C42A6A80 */  lwc1    $f10, 0x6A80($at)          ## 80106A80
/* 1AC88 8002BD28 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 1AC8C 8002BD2C 46083100 */  add.s   $f4, $f6, $f8
/* 1AC90 8002BD30 C4288D1C */  lwc1    $f8, -0x72E4($at)          ## 80118D1C
/* 1AC94 8002BD34 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1AC98 8002BD38 460A2182 */  mul.s   $f6, $f4, $f10
/* 1AC9C 8002BD3C C5240000 */  lwc1    $f4, 0x0000($t1)           ## 00000000
/* 1ACA0 8002BD40 46040282 */  mul.s   $f10, $f0, $f4
/* 1ACA4 8002BD44 46083480 */  add.s   $f18, $f6, $f8
/* 1ACA8 8002BD48 C5260004 */  lwc1    $f6, 0x0004($t1)           ## 00000004
/* 1ACAC 8002BD4C 46061102 */  mul.s   $f4, $f2, $f6
/* 1ACB0 8002BD50 4612703E */  c.le.s  $f14, $f18
/* 1ACB4 8002BD54 46045180 */  add.s   $f6, $f10, $f4
/* 1ACB8 8002BD58 C52A0008 */  lwc1    $f10, 0x0008($t1)          ## 00000008
/* 1ACBC 8002BD5C 460A6102 */  mul.s   $f4, $f12, $f10
/* 1ACC0 8002BD60 46043280 */  add.s   $f10, $f6, $f4
/* 1ACC4 8002BD64 C4266A84 */  lwc1    $f6, 0x6A84($at)           ## 80106A84
/* 1ACC8 8002BD68 46065102 */  mul.s   $f4, $f10, $f6
/* 1ACCC 8002BD6C 45000005 */  bc1f    .L8002BD84
/* 1ACD0 8002BD70 46082400 */  add.s   $f16, $f4, $f8
/* 1ACD4 8002BD74 4610703E */  c.le.s  $f14, $f16
/* 1ACD8 8002BD78 00000000 */  nop
/* 1ACDC 8002BD7C 4501001F */  bc1t    .L8002BDFC
/* 1ACE0 8002BD80 00000000 */  nop
.L8002BD84:
/* 1ACE4 8002BD84 460E903C */  c.lt.s  $f18, $f14
/* 1ACE8 8002BD88 8FAA004C */  lw      $t2, 0x004C($sp)
/* 1ACEC 8002BD8C 45000005 */  bc1f    .L8002BDA4
/* 1ACF0 8002BD90 00000000 */  nop
/* 1ACF4 8002BD94 460E803C */  c.lt.s  $f16, $f14
/* 1ACF8 8002BD98 00000000 */  nop
/* 1ACFC 8002BD9C 45010017 */  bc1t    .L8002BDFC
/* 1AD00 8002BDA0 00000000 */  nop
.L8002BDA4:
/* 1AD04 8002BDA4 5140000A */  beql    $t2, $zero, .L8002BDD0
/* 1AD08 8002BDA8 46109081 */  sub.s   $f2, $f18, $f16
/* 1AD0C 8002BDAC 460E903C */  c.lt.s  $f18, $f14
/* 1AD10 8002BDB0 00000000 */  nop
/* 1AD14 8002BDB4 45020006 */  bc1fl   .L8002BDD0
/* 1AD18 8002BDB8 46109081 */  sub.s   $f2, $f18, $f16
/* 1AD1C 8002BDBC 4610703C */  c.lt.s  $f14, $f16
/* 1AD20 8002BDC0 00000000 */  nop
/* 1AD24 8002BDC4 4501000D */  bc1t    .L8002BDFC
/* 1AD28 8002BDC8 00000000 */  nop
/* 1AD2C 8002BDCC 46109081 */  sub.s   $f2, $f18, $f16
.L8002BDD0:
/* 1AD30 8002BDD0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1AD34 8002BDD4 C42A6A88 */  lwc1    $f10, 0x6A88($at)          ## 80106A88
/* 1AD38 8002BDD8 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1AD3C 8002BDDC 46001005 */  abs.s   $f0, $f2
/* 1AD40 8002BDE0 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AD44 8002BDE4 460A003C */  c.lt.s  $f0, $f10
/* 1AD48 8002BDE8 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 1AD4C 8002BDEC 24E78D18 */  addiu   $a3, $a3, 0x8D18           ## $a3 = 80118D18
/* 1AD50 8002BDF0 24C68D14 */  addiu   $a2, $a2, 0x8D14           ## $a2 = 80118D14
/* 1AD54 8002BDF4 45000003 */  bc1f    .L8002BE04
/* 1AD58 8002BDF8 24A58D10 */  addiu   $a1, $a1, 0x8D10           ## $a1 = 80118D10
.L8002BDFC:
/* 1AD5C 8002BDFC 1000005F */  beq     $zero, $zero, .L8002BF7C
/* 1AD60 8002BE00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002BE04:
/* 1AD64 8002BE04 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1AD68 8002BE08 E7A20028 */  swc1    $f2, 0x0028($sp)
/* 1AD6C 8002BE0C 0C00AD84 */  jal     func_8002B610
/* 1AD70 8002BE10 E7B20034 */  swc1    $f18, 0x0034($sp)
/* 1AD74 8002BE14 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AD78 8002BE18 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1AD7C 8002BE1C 24C68CE8 */  addiu   $a2, $a2, 0x8CE8           ## $a2 = 80118CE8
/* 1AD80 8002BE20 0C00AE09 */  jal     func_8002B824
/* 1AD84 8002BE24 8FA5003C */  lw      $a1, 0x003C($sp)
/* 1AD88 8002BE28 C7A20028 */  lwc1    $f2, 0x0028($sp)
/* 1AD8C 8002BE2C C7B20034 */  lwc1    $f18, 0x0034($sp)
/* 1AD90 8002BE30 8FA40040 */  lw      $a0, 0x0040($sp)
/* 1AD94 8002BE34 8FA50044 */  lw      $a1, 0x0044($sp)
/* 1AD98 8002BE38 46029183 */  div.s   $f6, $f18, $f2
/* 1AD9C 8002BE3C 8FA70048 */  lw      $a3, 0x0048($sp)
/* 1ADA0 8002BE40 44063000 */  mfc1    $a2, $f6
/* 1ADA4 8002BE44 0C02939C */  jal     func_800A4E70
/* 1ADA8 8002BE48 00000000 */  nop
/* 1ADAC 8002BE4C 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 1ADB0 8002BE50 C4208D10 */  lwc1    $f0, -0x72F0($at)          ## 80118D10
/* 1ADB4 8002BE54 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 1ADB8 8002BE58 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 1ADBC 8002BE5C 46000005 */  abs.s   $f0, $f0
/* 1ADC0 8002BE60 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1ADC4 8002BE64 4600203C */  c.lt.s  $f4, $f0
/* 1ADC8 8002BE68 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1ADCC 8002BE6C 8FA30048 */  lw      $v1, 0x0048($sp)
/* 1ADD0 8002BE70 24A58CF4 */  addiu   $a1, $a1, 0x8CF4           ## $a1 = 80118CF4
/* 1ADD4 8002BE74 4500000E */  bc1f    .L8002BEB0
/* 1ADD8 8002BE78 24848CE8 */  addiu   $a0, $a0, 0x8CE8           ## $a0 = 80118CE8
/* 1ADDC 8002BE7C C4680004 */  lwc1    $f8, 0x0004($v1)           ## 00000004
/* 1ADE0 8002BE80 C7A60050 */  lwc1    $f6, 0x0050($sp)
/* 1ADE4 8002BE84 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1ADE8 8002BE88 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 1ADEC 8002BE8C C46A0008 */  lwc1    $f10, 0x0008($v1)          ## 00000008
/* 1ADF0 8002BE90 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 1ADF4 8002BE94 24E78D10 */  addiu   $a3, $a3, 0x8D10           ## $a3 = 80118D10
/* 1ADF8 8002BE98 24C68D00 */  addiu   $a2, $a2, 0x8D00           ## $a2 = 80118D00
/* 1ADFC 8002BE9C E7A60018 */  swc1    $f6, 0x0018($sp)
/* 1AE00 8002BEA0 0C029DEE */  jal     func_800A77B8
/* 1AE04 8002BEA4 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 1AE08 8002BEA8 14400031 */  bne     $v0, $zero, .L8002BF70
/* 1AE0C 8002BEAC 8FA30048 */  lw      $v1, 0x0048($sp)
.L8002BEB0:
/* 1AE10 8002BEB0 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 1AE14 8002BEB4 C4208D14 */  lwc1    $f0, -0x72EC($at)          ## 80118D14
/* 1AE18 8002BEB8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 1AE1C 8002BEBC 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 1AE20 8002BEC0 46000005 */  abs.s   $f0, $f0
/* 1AE24 8002BEC4 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1AE28 8002BEC8 4600203C */  c.lt.s  $f4, $f0
/* 1AE2C 8002BECC 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1AE30 8002BED0 24A58CF4 */  addiu   $a1, $a1, 0x8CF4           ## $a1 = 80118CF4
/* 1AE34 8002BED4 24848CE8 */  addiu   $a0, $a0, 0x8CE8           ## $a0 = 80118CE8
/* 1AE38 8002BED8 4500000D */  bc1f    .L8002BF10
/* 1AE3C 8002BEDC 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AE40 8002BEE0 C4680008 */  lwc1    $f8, 0x0008($v1)           ## 00000008
/* 1AE44 8002BEE4 C7A60050 */  lwc1    $f6, 0x0050($sp)
/* 1AE48 8002BEE8 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 1AE4C 8002BEEC E7A80010 */  swc1    $f8, 0x0010($sp)
/* 1AE50 8002BEF0 C46A0000 */  lwc1    $f10, 0x0000($v1)          ## 00000000
/* 1AE54 8002BEF4 24E78D10 */  addiu   $a3, $a3, 0x8D10           ## $a3 = 80118D10
/* 1AE58 8002BEF8 24C68D00 */  addiu   $a2, $a2, 0x8D00           ## $a2 = 80118D00
/* 1AE5C 8002BEFC E7A60018 */  swc1    $f6, 0x0018($sp)
/* 1AE60 8002BF00 0C029C4A */  jal     func_800A7128
/* 1AE64 8002BF04 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 1AE68 8002BF08 14400019 */  bne     $v0, $zero, .L8002BF70
/* 1AE6C 8002BF0C 8FA30048 */  lw      $v1, 0x0048($sp)
.L8002BF10:
/* 1AE70 8002BF10 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 1AE74 8002BF14 C4208D18 */  lwc1    $f0, -0x72E8($at)          ## 80118D18
/* 1AE78 8002BF18 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 1AE7C 8002BF1C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 1AE80 8002BF20 46000005 */  abs.s   $f0, $f0
/* 1AE84 8002BF24 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1AE88 8002BF28 4600203C */  c.lt.s  $f4, $f0
/* 1AE8C 8002BF2C 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1AE90 8002BF30 24A58CF4 */  addiu   $a1, $a1, 0x8CF4           ## $a1 = 80118CF4
/* 1AE94 8002BF34 24848CE8 */  addiu   $a0, $a0, 0x8CE8           ## $a0 = 80118CE8
/* 1AE98 8002BF38 4500000F */  bc1f    .L8002BF78
/* 1AE9C 8002BF3C 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AEA0 8002BF40 C4680000 */  lwc1    $f8, 0x0000($v1)           ## 00000000
/* 1AEA4 8002BF44 C7A60050 */  lwc1    $f6, 0x0050($sp)
/* 1AEA8 8002BF48 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 1AEAC 8002BF4C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 1AEB0 8002BF50 C46A0004 */  lwc1    $f10, 0x0004($v1)          ## 00000004
/* 1AEB4 8002BF54 24E78D10 */  addiu   $a3, $a3, 0x8D10           ## $a3 = 80118D10
/* 1AEB8 8002BF58 24C68D00 */  addiu   $a2, $a2, 0x8D00           ## $a2 = 80118D00
/* 1AEBC 8002BF5C E7A60018 */  swc1    $f6, 0x0018($sp)
/* 1AEC0 8002BF60 0C029F9E */  jal     func_800A7E78
/* 1AEC4 8002BF64 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 1AEC8 8002BF68 50400004 */  beql    $v0, $zero, .L8002BF7C
/* 1AECC 8002BF6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002BF70:
/* 1AED0 8002BF70 10000002 */  beq     $zero, $zero, .L8002BF7C
/* 1AED4 8002BF74 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002BF78:
/* 1AED8 8002BF78 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002BF7C:
/* 1AEDC 8002BF7C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1AEE0 8002BF80 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1AEE4 8002BF84 03E00008 */  jr      $ra
/* 1AEE8 8002BF88 00000000 */  nop


glabel func_8002BF8C
/* 1AEEC 8002BF8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1AEF0 8002BF90 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1AEF4 8002BF94 AFA40028 */  sw      $a0, 0x0028($sp)
/* 1AEF8 8002BF98 AFA60030 */  sw      $a2, 0x0030($sp)
/* 1AEFC 8002BF9C AFA70034 */  sw      $a3, 0x0034($sp)
/* 1AF00 8002BFA0 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AF04 8002BFA4 24C68D28 */  addiu   $a2, $a2, 0x8D28           ## $a2 = 80118D28
/* 1AF08 8002BFA8 0C00AE09 */  jal     func_8002B824
/* 1AF0C 8002BFAC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 1AF10 8002BFB0 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1AF14 8002BFB4 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 1AF18 8002BFB8 3C078012 */  lui     $a3, 0x8012                ## $a3 = 80120000
/* 1AF1C 8002BFBC 24E78D54 */  addiu   $a3, $a3, 0x8D54           ## $a3 = 80118D54
/* 1AF20 8002BFC0 24C68D50 */  addiu   $a2, $a2, 0x8D50           ## $a2 = 80118D50
/* 1AF24 8002BFC4 24A58D4C */  addiu   $a1, $a1, 0x8D4C           ## $a1 = 80118D4C
/* 1AF28 8002BFC8 0C00AD84 */  jal     func_8002B610
/* 1AF2C 8002BFCC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 1AF30 8002BFD0 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 1AF34 8002BFD4 8FA20030 */  lw      $v0, 0x0030($sp)
/* 1AF38 8002BFD8 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 1AF3C 8002BFDC 85CF000E */  lh      $t7, 0x000E($t6)           ## 0000000E
/* 1AF40 8002BFE0 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 1AF44 8002BFE4 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 1AF48 8002BFE8 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 1AF4C 8002BFEC 24A58D28 */  addiu   $a1, $a1, 0x8D28           ## $a1 = 80118D28
/* 1AF50 8002BFF0 24848D20 */  addiu   $a0, $a0, 0x8D20           ## $a0 = 80118D20
/* 1AF54 8002BFF4 468021A0 */  cvt.s.w $f6, $f4
/* 1AF58 8002BFF8 27A6001C */  addiu   $a2, $sp, 0x001C           ## $a2 = FFFFFFF4
/* 1AF5C 8002BFFC E4268D58 */  swc1    $f6, -0x72A8($at)          ## 80118D58
/* 1AF60 8002C000 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000000
/* 1AF64 8002C004 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 1AF68 8002C008 4600428D */  trunc.w.s $f10, $f8
/* 1AF6C 8002C00C C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 1AF70 8002C010 44195000 */  mfc1    $t9, $f10
/* 1AF74 8002C014 4600428D */  trunc.w.s $f10, $f8
/* 1AF78 8002C018 A4398D20 */  sh      $t9, -0x72E0($at)          ## 80118D20
/* 1AF7C 8002C01C C4500004 */  lwc1    $f16, 0x0004($v0)          ## 00000004
/* 1AF80 8002C020 440D5000 */  mfc1    $t5, $f10
/* 1AF84 8002C024 4600848D */  trunc.w.s $f18, $f16
/* 1AF88 8002C028 44099000 */  mfc1    $t1, $f18
/* 1AF8C 8002C02C 00000000 */  nop
/* 1AF90 8002C030 A4298D22 */  sh      $t1, -0x72DE($at)          ## 80118D22
/* 1AF94 8002C034 C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000008
/* 1AF98 8002C038 A42D8D26 */  sh      $t5, -0x72DA($at)          ## 80118D26
/* 1AF9C 8002C03C 4600218D */  trunc.w.s $f6, $f4
/* 1AFA0 8002C040 440B3000 */  mfc1    $t3, $f6
/* 1AFA4 8002C044 0C02A1F1 */  jal     func_800A87C4
/* 1AFA8 8002C048 A42B8D24 */  sh      $t3, -0x72DC($at)          ## 80118D24
/* 1AFAC 8002C04C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1AFB0 8002C050 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1AFB4 8002C054 03E00008 */  jr      $ra
/* 1AFB8 8002C058 00000000 */  nop


glabel func_8002C05C
/* 1AFBC 8002C05C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1AFC0 8002C060 AFB10018 */  sw      $s1, 0x0018($sp)
/* 1AFC4 8002C064 AFB00014 */  sw      $s0, 0x0014($sp)
/* 1AFC8 8002C068 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 1AFCC 8002C06C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 1AFD0 8002C070 AFBF001C */  sw      $ra, 0x001C($sp)
/* 1AFD4 8002C074 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1AFD8 8002C078 340CFFFF */  ori     $t4, $zero, 0xFFFF         ## $t4 = 0000FFFF
/* 1AFDC 8002C07C 8FAE002C */  lw      $t6, 0x002C($sp)
/* 1AFE0 8002C080 87B8003A */  lh      $t8, 0x003A($sp)
/* 1AFE4 8002C084 27A6003A */  addiu   $a2, $sp, 0x003A           ## $a2 = 00000012
/* 1AFE8 8002C088 95CF0000 */  lhu     $t7, 0x0000($t6)           ## 00000000
/* 1AFEC 8002C08C 0018C900 */  sll     $t9, $t8,  4
/* 1AFF0 8002C090 03302021 */  addu    $a0, $t9, $s0
/* 1AFF4 8002C094 158F0006 */  bne     $t4, $t7, .L8002C0B0
/* 1AFF8 8002C098 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 1AFFC 8002C09C 26240044 */  addiu   $a0, $s1, 0x0044           ## $a0 = 00000044
/* 1B000 8002C0A0 0C00ACE3 */  jal     func_8002B38C
/* 1B004 8002C0A4 01C02825 */  or      $a1, $t6, $zero            ## $a1 = 00000000
/* 1B008 8002C0A8 10000070 */  beq     $zero, $zero, .L8002C26C
/* 1B00C 8002C0AC 8FBF001C */  lw      $ra, 0x001C($sp)
.L8002C0B0:
/* 1B010 8002C0B0 0C00AD59 */  jal     func_8002B564
/* 1B014 8002C0B4 AFA70034 */  sw      $a3, 0x0034($sp)
/* 1B018 8002C0B8 8FAD002C */  lw      $t5, 0x002C($sp)
/* 1B01C 8002C0BC 8E2A0048 */  lw      $t2, 0x0048($s1)           ## 00000048
/* 1B020 8002C0C0 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 1B024 8002C0C4 95AF0000 */  lhu     $t7, 0x0000($t5)           ## 00000000
/* 1B028 8002C0C8 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1B02C 8002C0CC 340CFFFF */  ori     $t4, $zero, 0xFFFF         ## $t4 = 0000FFFF
/* 1B030 8002C0D0 000F7080 */  sll     $t6, $t7,  2
/* 1B034 8002C0D4 014E4821 */  addu    $t1, $t2, $t6
/* 1B038 8002C0D8 85260000 */  lh      $a2, 0x0000($t1)           ## 00000000
/* 1B03C 8002C0DC 0006C100 */  sll     $t8, $a2,  4
/* 1B040 8002C0E0 02182821 */  addu    $a1, $s0, $t8
/* 1B044 8002C0E4 94B90002 */  lhu     $t9, 0x0002($a1)           ## 00000002
/* 1B048 8002C0E8 332F1FFF */  andi    $t7, $t9, 0x1FFF           ## $t7 = 00000000
/* 1B04C 8002C0EC 01E80019 */  multu   $t7, $t0
/* 1B050 8002C0F0 00007012 */  mflo    $t6
/* 1B054 8002C0F4 00EEC021 */  addu    $t8, $a3, $t6
/* 1B058 8002C0F8 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 1B05C 8002C0FC 0059082A */  slt     $at, $v0, $t9
/* 1B060 8002C100 5020001A */  beql    $at, $zero, .L8002C16C
/* 1B064 8002C104 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 1B068 8002C108 94AF0004 */  lhu     $t7, 0x0004($a1)           ## 00000004
/* 1B06C 8002C10C 31EE1FFF */  andi    $t6, $t7, 0x1FFF           ## $t6 = 00000000
/* 1B070 8002C110 01C80019 */  multu   $t6, $t0
/* 1B074 8002C114 0000C012 */  mflo    $t8
/* 1B078 8002C118 00F8C821 */  addu    $t9, $a3, $t8
/* 1B07C 8002C11C 872F0002 */  lh      $t7, 0x0002($t9)           ## 00000002
/* 1B080 8002C120 004F082A */  slt     $at, $v0, $t7
/* 1B084 8002C124 50200011 */  beql    $at, $zero, .L8002C16C
/* 1B088 8002C128 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 1B08C 8002C12C 94AE0006 */  lhu     $t6, 0x0006($a1)           ## 00000006
/* 1B090 8002C130 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 1B094 8002C134 01A02825 */  or      $a1, $t5, $zero            ## $a1 = 00000000
/* 1B098 8002C138 01CB0019 */  multu   $t6, $t3
/* 1B09C 8002C13C 26240044 */  addiu   $a0, $s1, 0x0044           ## $a0 = 00000044
/* 1B0A0 8002C140 0000C012 */  mflo    $t8
/* 1B0A4 8002C144 00F8C821 */  addu    $t9, $a3, $t8
/* 1B0A8 8002C148 872F0002 */  lh      $t7, 0x0002($t9)           ## 00000002
/* 1B0AC 8002C14C 004F082A */  slt     $at, $v0, $t7
/* 1B0B0 8002C150 50200006 */  beql    $at, $zero, .L8002C16C
/* 1B0B4 8002C154 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 1B0B8 8002C158 0C00ACE3 */  jal     func_8002B38C
/* 1B0BC 8002C15C 27A6003A */  addiu   $a2, $sp, 0x003A           ## $a2 = 00000012
/* 1B0C0 8002C160 10000042 */  beq     $zero, $zero, .L8002C26C
/* 1B0C4 8002C164 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1B0C8 8002C168 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
.L8002C16C:
/* 1B0CC 8002C16C 95230002 */  lhu     $v1, 0x0002($t1)           ## 00000002
/* 1B0D0 8002C170 26240044 */  addiu   $a0, $s1, 0x0044           ## $a0 = 00000044
/* 1B0D4 8002C174 5583000E */  bnel    $t4, $v1, .L8002C1B0
/* 1B0D8 8002C178 0003C880 */  sll     $t9, $v1,  2
/* 1B0DC 8002C17C 0C00C396 */  jal     func_80030E58
/* 1B0E0 8002C180 AFA90024 */  sw      $t1, 0x0024($sp)
/* 1B0E4 8002C184 8E2E0048 */  lw      $t6, 0x0048($s1)           ## 00000048
/* 1B0E8 8002C188 0002C080 */  sll     $t8, $v0,  2
/* 1B0EC 8002C18C 3050FFFF */  andi    $s0, $v0, 0xFFFF           ## $s0 = 00000000
/* 1B0F0 8002C190 27A5003A */  addiu   $a1, $sp, 0x003A           ## $a1 = 00000012
/* 1B0F4 8002C194 3406FFFF */  ori     $a2, $zero, 0xFFFF         ## $a2 = 0000FFFF
/* 1B0F8 8002C198 0C00ACD8 */  jal     func_8002B360
/* 1B0FC 8002C19C 01D82021 */  addu    $a0, $t6, $t8
/* 1B100 8002C1A0 8FA90024 */  lw      $t1, 0x0024($sp)
/* 1B104 8002C1A4 10000030 */  beq     $zero, $zero, .L8002C268
/* 1B108 8002C1A8 A5300002 */  sh      $s0, 0x0002($t1)           ## 00000002
/* 1B10C 8002C1AC 0003C880 */  sll     $t9, $v1,  2
.L8002C1B0:
/* 1B110 8002C1B0 01592021 */  addu    $a0, $t2, $t9
/* 1B114 8002C1B4 84860000 */  lh      $a2, 0x0000($a0)           ## 00000000
/* 1B118 8002C1B8 00067900 */  sll     $t7, $a2,  4
/* 1B11C 8002C1BC 020F2821 */  addu    $a1, $s0, $t7
/* 1B120 8002C1C0 94AD0002 */  lhu     $t5, 0x0002($a1)           ## 00000002
/* 1B124 8002C1C4 31AE1FFF */  andi    $t6, $t5, 0x1FFF           ## $t6 = 00000000
/* 1B128 8002C1C8 01C80019 */  multu   $t6, $t0
/* 1B12C 8002C1CC 0000C012 */  mflo    $t8
/* 1B130 8002C1D0 00F8C821 */  addu    $t9, $a3, $t8
/* 1B134 8002C1D4 872F0002 */  lh      $t7, 0x0002($t9)           ## 00000002
/* 1B138 8002C1D8 004F082A */  slt     $at, $v0, $t7
/* 1B13C 8002C1DC 10200020 */  beq     $at, $zero, .L8002C260
/* 1B140 8002C1E0 00000000 */  nop
/* 1B144 8002C1E4 94AD0004 */  lhu     $t5, 0x0004($a1)           ## 00000004
/* 1B148 8002C1E8 31AE1FFF */  andi    $t6, $t5, 0x1FFF           ## $t6 = 00000000
/* 1B14C 8002C1EC 01C80019 */  multu   $t6, $t0
/* 1B150 8002C1F0 0000C012 */  mflo    $t8
/* 1B154 8002C1F4 00F8C821 */  addu    $t9, $a3, $t8
/* 1B158 8002C1F8 872F0002 */  lh      $t7, 0x0002($t9)           ## 00000002
/* 1B15C 8002C1FC 004F082A */  slt     $at, $v0, $t7
/* 1B160 8002C200 10200017 */  beq     $at, $zero, .L8002C260
/* 1B164 8002C204 00000000 */  nop
/* 1B168 8002C208 94AD0006 */  lhu     $t5, 0x0006($a1)           ## 00000006
/* 1B16C 8002C20C 01AB0019 */  multu   $t5, $t3
/* 1B170 8002C210 00007012 */  mflo    $t6
/* 1B174 8002C214 00EEC021 */  addu    $t8, $a3, $t6
/* 1B178 8002C218 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 1B17C 8002C21C 0059082A */  slt     $at, $v0, $t9
/* 1B180 8002C220 1020000F */  beq     $at, $zero, .L8002C260
/* 1B184 8002C224 00000000 */  nop
/* 1B188 8002C228 26240044 */  addiu   $a0, $s1, 0x0044           ## $a0 = 00000044
/* 1B18C 8002C22C 0C00C396 */  jal     func_80030E58
/* 1B190 8002C230 AFA90024 */  sw      $t1, 0x0024($sp)
/* 1B194 8002C234 8FA90024 */  lw      $t1, 0x0024($sp)
/* 1B198 8002C238 8E2F0048 */  lw      $t7, 0x0048($s1)           ## 00000048
/* 1B19C 8002C23C 00026880 */  sll     $t5, $v0,  2
/* 1B1A0 8002C240 3050FFFF */  andi    $s0, $v0, 0xFFFF           ## $s0 = 00000000
/* 1B1A4 8002C244 27A5003A */  addiu   $a1, $sp, 0x003A           ## $a1 = 00000012
/* 1B1A8 8002C248 95260002 */  lhu     $a2, 0x0002($t1)           ## 00000002
/* 1B1AC 8002C24C 0C00ACD8 */  jal     func_8002B360
/* 1B1B0 8002C250 01ED2021 */  addu    $a0, $t7, $t5
/* 1B1B4 8002C254 8FA90024 */  lw      $t1, 0x0024($sp)
/* 1B1B8 8002C258 10000003 */  beq     $zero, $zero, .L8002C268
/* 1B1BC 8002C25C A5300002 */  sh      $s0, 0x0002($t1)           ## 00000002
.L8002C260:
/* 1B1C0 8002C260 1000FFC2 */  beq     $zero, $zero, .L8002C16C
/* 1B1C4 8002C264 00804825 */  or      $t1, $a0, $zero            ## $t1 = 00000000
.L8002C268:
/* 1B1C8 8002C268 8FBF001C */  lw      $ra, 0x001C($sp)
.L8002C26C:
/* 1B1CC 8002C26C 8FB00014 */  lw      $s0, 0x0014($sp)
/* 1B1D0 8002C270 8FB10018 */  lw      $s1, 0x0018($sp)
/* 1B1D4 8002C274 03E00008 */  jr      $ra
/* 1B1D8 8002C278 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


glabel func_8002C27C
/* 1B1DC 8002C27C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1B1E0 8002C280 AFBF001C */  sw      $ra, 0x001C($sp)
/* 1B1E4 8002C284 AFA40020 */  sw      $a0, 0x0020($sp)
/* 1B1E8 8002C288 AFA50024 */  sw      $a1, 0x0024($sp)
/* 1B1EC 8002C28C 87AE0032 */  lh      $t6, 0x0032($sp)
/* 1B1F0 8002C290 8FA40024 */  lw      $a0, 0x0024($sp)
/* 1B1F4 8002C294 8FA50020 */  lw      $a1, 0x0020($sp)
/* 1B1F8 8002C298 000E7900 */  sll     $t7, $t6,  4
/* 1B1FC 8002C29C 00CFC021 */  addu    $t8, $a2, $t7
/* 1B200 8002C2A0 8702000A */  lh      $v0, 0x000A($t8)           ## 0000000A
/* 1B204 8002C2A4 28414000 */  slti    $at, $v0, 0x4000
/* 1B208 8002C2A8 54200006 */  bnel    $at, $zero, .L8002C2C4
/* 1B20C 8002C2AC 2841999B */  slti    $at, $v0, 0x999B
/* 1B210 8002C2B0 0C00B017 */  jal     func_8002C05C
/* 1B214 8002C2B4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1B218 8002C2B8 10000012 */  beq     $zero, $zero, .L8002C304
/* 1B21C 8002C2BC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1B220 8002C2C0 2841999B */  slti    $at, $v0, 0x999B
.L8002C2C4:
/* 1B224 8002C2C4 10200009 */  beq     $at, $zero, .L8002C2EC
/* 1B228 8002C2C8 8FA50020 */  lw      $a1, 0x0020($sp)
/* 1B22C 8002C2CC 8FA50020 */  lw      $a1, 0x0020($sp)
/* 1B230 8002C2D0 87B90032 */  lh      $t9, 0x0032($sp)
/* 1B234 8002C2D4 8FA40024 */  lw      $a0, 0x0024($sp)
/* 1B238 8002C2D8 24A50004 */  addiu   $a1, $a1, 0x0004           ## $a1 = 00000004
/* 1B23C 8002C2DC 0C00B017 */  jal     func_8002C05C
/* 1B240 8002C2E0 AFB90010 */  sw      $t9, 0x0010($sp)
/* 1B244 8002C2E4 10000007 */  beq     $zero, $zero, .L8002C304
/* 1B248 8002C2E8 8FBF001C */  lw      $ra, 0x001C($sp)
.L8002C2EC:
/* 1B24C 8002C2EC 87A80032 */  lh      $t0, 0x0032($sp)
/* 1B250 8002C2F0 8FA40024 */  lw      $a0, 0x0024($sp)
/* 1B254 8002C2F4 24A50002 */  addiu   $a1, $a1, 0x0002           ## $a1 = 00000002
/* 1B258 8002C2F8 0C00B017 */  jal     func_8002C05C
/* 1B25C 8002C2FC AFA80010 */  sw      $t0, 0x0010($sp)
/* 1B260 8002C300 8FBF001C */  lw      $ra, 0x001C($sp)
.L8002C304:
/* 1B264 8002C304 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1B268 8002C308 03E00008 */  jr      $ra
/* 1B26C 8002C30C 00000000 */  nop


glabel func_8002C310
/* 1B270 8002C310 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 1B274 8002C314 AFB50044 */  sw      $s5, 0x0044($sp)
/* 1B278 8002C318 AFB3003C */  sw      $s3, 0x003C($sp)
/* 1B27C 8002C31C AFB00030 */  sw      $s0, 0x0030($sp)
/* 1B280 8002C320 30B0FFFF */  andi    $s0, $a1, 0xFFFF           ## $s0 = 00000000
/* 1B284 8002C324 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 1B288 8002C328 3415FFFF */  ori     $s5, $zero, 0xFFFF         ## $s5 = 0000FFFF
/* 1B28C 8002C32C AFBF0054 */  sw      $ra, 0x0054($sp)
/* 1B290 8002C330 AFBE0050 */  sw      $s8, 0x0050($sp)
/* 1B294 8002C334 AFB7004C */  sw      $s7, 0x004C($sp)
/* 1B298 8002C338 AFB60048 */  sw      $s6, 0x0048($sp)
/* 1B29C 8002C33C AFB40040 */  sw      $s4, 0x0040($sp)
/* 1B2A0 8002C340 AFB20038 */  sw      $s2, 0x0038($sp)
/* 1B2A4 8002C344 AFB10034 */  sw      $s1, 0x0034($sp)
/* 1B2A8 8002C348 F7B60028 */  sdc1    $f22, 0x0028($sp)
/* 1B2AC 8002C34C F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 1B2B0 8002C350 AFA5008C */  sw      $a1, 0x008C($sp)
/* 1B2B4 8002C354 AFA70094 */  sw      $a3, 0x0094($sp)
/* 1B2B8 8002C358 C7AC009C */  lwc1    $f12, 0x009C($sp)
/* 1B2BC 8002C35C 94C20000 */  lhu     $v0, 0x0000($a2)           ## 00000000
/* 1B2C0 8002C360 46006506 */  mov.s   $f20, $f12
/* 1B2C4 8002C364 32090007 */  andi    $t1, $s0, 0x0007           ## $t1 = 00000000
/* 1B2C8 8002C368 16A20003 */  bne     $s5, $v0, .L8002C378
/* 1B2CC 8002C36C 00027080 */  sll     $t6, $v0,  2
/* 1B2D0 8002C370 10000068 */  beq     $zero, $zero, .L8002C514
/* 1B2D4 8002C374 46006006 */  mov.s   $f0, $f12
.L8002C378:
/* 1B2D8 8002C378 8E650048 */  lw      $a1, 0x0048($s3)           ## 00000048
/* 1B2DC 8002C37C 8E660000 */  lw      $a2, 0x0000($s3)           ## 00000000
/* 1B2E0 8002C380 00094B40 */  sll     $t1, $t1, 13
/* 1B2E4 8002C384 C7B600A0 */  lwc1    $f22, 0x00A0($sp)
/* 1B2E8 8002C388 27BE0078 */  addiu   $s8, $sp, 0x0078           ## $s8 = FFFFFFF0
/* 1B2EC 8002C38C 24170006 */  addiu   $s7, $zero, 0x0006         ## $s7 = 00000006
/* 1B2F0 8002C390 8FB600A4 */  lw      $s6, 0x00A4($sp)
/* 1B2F4 8002C394 24140006 */  addiu   $s4, $zero, 0x0006         ## $s4 = 00000006
/* 1B2F8 8002C398 8FB20098 */  lw      $s2, 0x0098($sp)
/* 1B2FC 8002C39C 00AE8821 */  addu    $s1, $a1, $t6
/* 1B300 8002C3A0 8CC80018 */  lw      $t0, 0x0018($a2)           ## 00000018
.L8002C3A4:
/* 1B304 8002C3A4 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 1B308 8002C3A8 32D80001 */  andi    $t8, $s6, 0x0001           ## $t8 = 00000000
/* 1B30C 8002C3AC 00028100 */  sll     $s0, $v0,  4
/* 1B310 8002C3B0 01101821 */  addu    $v1, $t0, $s0
/* 1B314 8002C3B4 94640002 */  lhu     $a0, 0x0002($v1)           ## 00000002
/* 1B318 8002C3B8 00897824 */  and     $t7, $a0, $t1
/* 1B31C 8002C3BC 55E00007 */  bnel    $t7, $zero, .L8002C3DC
/* 1B320 8002C3C0 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1B324 8002C3C4 13000009 */  beq     $t8, $zero, .L8002C3EC
/* 1B328 8002C3C8 308B1FFF */  andi    $t3, $a0, 0x1FFF           ## $t3 = 00000000
/* 1B32C 8002C3CC 8479000A */  lh      $t9, 0x000A($v1)           ## 0000000A
/* 1B330 8002C3D0 07210006 */  bgez    $t9, .L8002C3EC
/* 1B334 8002C3D4 00000000 */  nop
/* 1B338 8002C3D8 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002C3DC:
/* 1B33C 8002C3DC 12A2004C */  beq     $s5, $v0, .L8002C510
/* 1B340 8002C3E0 00025080 */  sll     $t2, $v0,  2
/* 1B344 8002C3E4 1000FFEF */  beq     $zero, $zero, .L8002C3A4
/* 1B348 8002C3E8 00AA8821 */  addu    $s1, $a1, $t2
.L8002C3EC:
/* 1B34C 8002C3EC 01740019 */  multu   $t3, $s4
/* 1B350 8002C3F0 8CC50010 */  lw      $a1, 0x0010($a2)           ## 00000010
/* 1B354 8002C3F4 C6400004 */  lwc1    $f0, 0x0004($s2)           ## 00000004
/* 1B358 8002C3F8 01102021 */  addu    $a0, $t0, $s0
/* 1B35C 8002C3FC 00006012 */  mflo    $t4
/* 1B360 8002C400 00AC6821 */  addu    $t5, $a1, $t4
/* 1B364 8002C404 85AE0002 */  lh      $t6, 0x0002($t5)           ## 00000002
/* 1B368 8002C408 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 1B36C 8002C40C 00000000 */  nop
/* 1B370 8002C410 468021A0 */  cvt.s.w $f6, $f4
/* 1B374 8002C414 4606003C */  c.lt.s  $f0, $f6
/* 1B378 8002C418 00000000 */  nop
/* 1B37C 8002C41C 4502001B */  bc1fl   .L8002C48C
/* 1B380 8002C420 8E460000 */  lw      $a2, 0x0000($s2)           ## 00000000
/* 1B384 8002C424 946F0004 */  lhu     $t7, 0x0004($v1)           ## 00000004
/* 1B388 8002C428 31F81FFF */  andi    $t8, $t7, 0x1FFF           ## $t8 = 00000000
/* 1B38C 8002C42C 03140019 */  multu   $t8, $s4
/* 1B390 8002C430 0000C812 */  mflo    $t9
/* 1B394 8002C434 00B95021 */  addu    $t2, $a1, $t9
/* 1B398 8002C438 854B0002 */  lh      $t3, 0x0002($t2)           ## 00000002
/* 1B39C 8002C43C 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 1B3A0 8002C440 00000000 */  nop
/* 1B3A4 8002C444 468042A0 */  cvt.s.w $f10, $f8
/* 1B3A8 8002C448 460A003C */  c.lt.s  $f0, $f10
/* 1B3AC 8002C44C 00000000 */  nop
/* 1B3B0 8002C450 4502000E */  bc1fl   .L8002C48C
/* 1B3B4 8002C454 8E460000 */  lw      $a2, 0x0000($s2)           ## 00000000
/* 1B3B8 8002C458 946C0006 */  lhu     $t4, 0x0006($v1)           ## 00000006
/* 1B3BC 8002C45C 01970019 */  multu   $t4, $s7
/* 1B3C0 8002C460 00006812 */  mflo    $t5
/* 1B3C4 8002C464 00AD7021 */  addu    $t6, $a1, $t5
/* 1B3C8 8002C468 85CF0002 */  lh      $t7, 0x0002($t6)           ## 00000002
/* 1B3CC 8002C46C 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 1B3D0 8002C470 00000000 */  nop
/* 1B3D4 8002C474 468084A0 */  cvt.s.w $f18, $f16
/* 1B3D8 8002C478 4612003C */  c.lt.s  $f0, $f18
/* 1B3DC 8002C47C 00000000 */  nop
/* 1B3E0 8002C480 45030024 */  bc1tl   .L8002C514
/* 1B3E4 8002C484 4600A006 */  mov.s   $f0, $f20
/* 1B3E8 8002C488 8E460000 */  lw      $a2, 0x0000($s2)           ## 00000000
.L8002C48C:
/* 1B3EC 8002C48C 8E470008 */  lw      $a3, 0x0008($s2)           ## 00000008
/* 1B3F0 8002C490 AFA9005C */  sw      $t1, 0x005C($sp)
/* 1B3F4 8002C494 E7B60014 */  swc1    $f22, 0x0014($sp)
/* 1B3F8 8002C498 0C00AE9E */  jal     func_8002BA78
/* 1B3FC 8002C49C AFBE0010 */  sw      $s8, 0x0010($sp)
/* 1B400 8002C4A0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1B404 8002C4A4 14410011 */  bne     $v0, $at, .L8002C4EC
/* 1B408 8002C4A8 8FA9005C */  lw      $t1, 0x005C($sp)
/* 1B40C 8002C4AC C7A40078 */  lwc1    $f4, 0x0078($sp)
/* 1B410 8002C4B0 C6460004 */  lwc1    $f6, 0x0004($s2)           ## 00000004
/* 1B414 8002C4B4 4606203C */  c.lt.s  $f4, $f6
/* 1B418 8002C4B8 00000000 */  nop
/* 1B41C 8002C4BC 4502000C */  bc1fl   .L8002C4F0
/* 1B420 8002C4C0 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1B424 8002C4C4 4604A03C */  c.lt.s  $f20, $f4
/* 1B428 8002C4C8 00000000 */  nop
/* 1B42C 8002C4CC 45020008 */  bc1fl   .L8002C4F0
/* 1B430 8002C4D0 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1B434 8002C4D4 8E780000 */  lw      $t8, 0x0000($s3)           ## 00000000
/* 1B438 8002C4D8 8FAB0094 */  lw      $t3, 0x0094($sp)
/* 1B43C 8002C4DC 46002506 */  mov.s   $f20, $f4
/* 1B440 8002C4E0 8F190018 */  lw      $t9, 0x0018($t8)           ## 00000018
/* 1B444 8002C4E4 03305021 */  addu    $t2, $t9, $s0
/* 1B448 8002C4E8 AD6A0000 */  sw      $t2, 0x0000($t3)           ## 00000000
.L8002C4EC:
/* 1B44C 8002C4EC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002C4F0:
/* 1B450 8002C4F0 52A20008 */  beql    $s5, $v0, .L8002C514
/* 1B454 8002C4F4 4600A006 */  mov.s   $f0, $f20
/* 1B458 8002C4F8 8E660000 */  lw      $a2, 0x0000($s3)           ## 00000000
/* 1B45C 8002C4FC 8E650048 */  lw      $a1, 0x0048($s3)           ## 00000048
/* 1B460 8002C500 00026080 */  sll     $t4, $v0,  2
/* 1B464 8002C504 8CC80018 */  lw      $t0, 0x0018($a2)           ## 00000018
/* 1B468 8002C508 1000FFA6 */  beq     $zero, $zero, .L8002C3A4
/* 1B46C 8002C50C 00AC8821 */  addu    $s1, $a1, $t4
.L8002C510:
/* 1B470 8002C510 4600A006 */  mov.s   $f0, $f20
.L8002C514:
/* 1B474 8002C514 8FBF0054 */  lw      $ra, 0x0054($sp)
/* 1B478 8002C518 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 1B47C 8002C51C D7B60028 */  ldc1    $f22, 0x0028($sp)
/* 1B480 8002C520 8FB00030 */  lw      $s0, 0x0030($sp)
/* 1B484 8002C524 8FB10034 */  lw      $s1, 0x0034($sp)
/* 1B488 8002C528 8FB20038 */  lw      $s2, 0x0038($sp)
/* 1B48C 8002C52C 8FB3003C */  lw      $s3, 0x003C($sp)
/* 1B490 8002C530 8FB40040 */  lw      $s4, 0x0040($sp)
/* 1B494 8002C534 8FB50044 */  lw      $s5, 0x0044($sp)
/* 1B498 8002C538 8FB60048 */  lw      $s6, 0x0048($sp)
/* 1B49C 8002C53C 8FB7004C */  lw      $s7, 0x004C($sp)
/* 1B4A0 8002C540 8FBE0050 */  lw      $s8, 0x0050($sp)
/* 1B4A4 8002C544 03E00008 */  jr      $ra
/* 1B4A8 8002C548 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000


glabel func_8002C54C
/* 1B4AC 8002C54C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1B4B0 8002C550 AFB00028 */  sw      $s0, 0x0028($sp)
/* 1B4B4 8002C554 8FB00044 */  lw      $s0, 0x0044($sp)
/* 1B4B8 8002C558 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1B4BC 8002C55C AFA40030 */  sw      $a0, 0x0030($sp)
/* 1B4C0 8002C560 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1B4C4 8002C564 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1B4C8 8002C568 AFA7003C */  sw      $a3, 0x003C($sp)
/* 1B4CC 8002C56C C7AC004C */  lwc1    $f12, 0x004C($sp)
/* 1B4D0 8002C570 320E0004 */  andi    $t6, $s0, 0x0004           ## $t6 = 00000000
/* 1B4D4 8002C574 11C0000D */  beq     $t6, $zero, .L8002C5AC
/* 1B4D8 8002C578 46006086 */  mov.s   $f2, $f12
/* 1B4DC 8002C57C 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1B4E0 8002C580 C7A40048 */  lwc1    $f4, 0x0048($sp)
/* 1B4E4 8002C584 8FA40034 */  lw      $a0, 0x0034($sp)
/* 1B4E8 8002C588 97A5003A */  lhu     $a1, 0x003A($sp)
/* 1B4EC 8002C58C 8FA60030 */  lw      $a2, 0x0030($sp)
/* 1B4F0 8002C590 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1B4F4 8002C594 E7AC0014 */  swc1    $f12, 0x0014($sp)
/* 1B4F8 8002C598 AFA0001C */  sw      $zero, 0x001C($sp)
/* 1B4FC 8002C59C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1B500 8002C5A0 0C00B0C4 */  jal     func_8002C310
/* 1B504 8002C5A4 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 1B508 8002C5A8 46000086 */  mov.s   $f2, $f0
.L8002C5AC:
/* 1B50C 8002C5AC 32180002 */  andi    $t8, $s0, 0x0002           ## $t8 = 00000000
/* 1B510 8002C5B0 17000002 */  bne     $t8, $zero, .L8002C5BC
/* 1B514 8002C5B4 32190008 */  andi    $t9, $s0, 0x0008           ## $t9 = 00000000
/* 1B518 8002C5B8 13200011 */  beq     $t9, $zero, .L8002C600
.L8002C5BC:
/* 1B51C 8002C5BC 32080010 */  andi    $t0, $s0, 0x0010           ## $t0 = 00000000
/* 1B520 8002C5C0 11000002 */  beq     $t0, $zero, .L8002C5CC
/* 1B524 8002C5C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1B528 8002C5C8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002C5CC:
/* 1B52C 8002C5CC 8FA60030 */  lw      $a2, 0x0030($sp)
/* 1B530 8002C5D0 8FA90040 */  lw      $t1, 0x0040($sp)
/* 1B534 8002C5D4 C7A60048 */  lwc1    $f6, 0x0048($sp)
/* 1B538 8002C5D8 8FA40034 */  lw      $a0, 0x0034($sp)
/* 1B53C 8002C5DC 97A5003A */  lhu     $a1, 0x003A($sp)
/* 1B540 8002C5E0 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1B544 8002C5E4 E7A20014 */  swc1    $f2, 0x0014($sp)
/* 1B548 8002C5E8 AFA2001C */  sw      $v0, 0x001C($sp)
/* 1B54C 8002C5EC 24C60002 */  addiu   $a2, $a2, 0x0002           ## $a2 = 00000002
/* 1B550 8002C5F0 AFA90010 */  sw      $t1, 0x0010($sp)
/* 1B554 8002C5F4 0C00B0C4 */  jal     func_8002C310
/* 1B558 8002C5F8 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 1B55C 8002C5FC 46000086 */  mov.s   $f2, $f0
.L8002C600:
/* 1B560 8002C600 320A0001 */  andi    $t2, $s0, 0x0001           ## $t2 = 00000000
/* 1B564 8002C604 11400011 */  beq     $t2, $zero, .L8002C64C
/* 1B568 8002C608 320B0010 */  andi    $t3, $s0, 0x0010           ## $t3 = 00000000
/* 1B56C 8002C60C 11600002 */  beq     $t3, $zero, .L8002C618
/* 1B570 8002C610 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1B574 8002C614 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002C618:
/* 1B578 8002C618 8FA60030 */  lw      $a2, 0x0030($sp)
/* 1B57C 8002C61C 8FAC0040 */  lw      $t4, 0x0040($sp)
/* 1B580 8002C620 C7A80048 */  lwc1    $f8, 0x0048($sp)
/* 1B584 8002C624 8FA40034 */  lw      $a0, 0x0034($sp)
/* 1B588 8002C628 97A5003A */  lhu     $a1, 0x003A($sp)
/* 1B58C 8002C62C 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1B590 8002C630 E7A20014 */  swc1    $f2, 0x0014($sp)
/* 1B594 8002C634 AFA2001C */  sw      $v0, 0x001C($sp)
/* 1B598 8002C638 24C60004 */  addiu   $a2, $a2, 0x0004           ## $a2 = 00000004
/* 1B59C 8002C63C AFAC0010 */  sw      $t4, 0x0010($sp)
/* 1B5A0 8002C640 0C00B0C4 */  jal     func_8002C310
/* 1B5A4 8002C644 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 1B5A8 8002C648 46000086 */  mov.s   $f2, $f0
.L8002C64C:
/* 1B5AC 8002C64C 46001006 */  mov.s   $f0, $f2
/* 1B5B0 8002C650 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1B5B4 8002C654 8FB00028 */  lw      $s0, 0x0028($sp)
/* 1B5B8 8002C658 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1B5BC 8002C65C 03E00008 */  jr      $ra
/* 1B5C0 8002C660 00000000 */  nop


glabel func_8002C664
/* 1B5C4 8002C664 C7A40024 */  lwc1    $f4, 0x0024($sp)
/* 1B5C8 8002C668 C7A60020 */  lwc1    $f6, 0x0020($sp)
/* 1B5CC 8002C66C C7AA001C */  lwc1    $f10, 0x001C($sp)
/* 1B5D0 8002C670 C7B20010 */  lwc1    $f18, 0x0010($sp)
/* 1B5D4 8002C674 46062201 */  sub.s   $f8, $f4, $f6
/* 1B5D8 8002C678 C4D00000 */  lwc1    $f16, 0x0000($a2)          ## 00000000
/* 1B5DC 8002C67C 460A4002 */  mul.s   $f0, $f8, $f10
/* 1B5E0 8002C680 00000000 */  nop
/* 1B5E4 8002C684 46120102 */  mul.s   $f4, $f0, $f18
/* 1B5E8 8002C688 46048180 */  add.s   $f6, $f16, $f4
/* 1B5EC 8002C68C E4C60000 */  swc1    $f6, 0x0000($a2)           ## 00000000
/* 1B5F0 8002C690 C7AA0018 */  lwc1    $f10, 0x0018($sp)
/* 1B5F4 8002C694 C4E80000 */  lwc1    $f8, 0x0000($a3)           ## 00000000
/* 1B5F8 8002C698 460A0482 */  mul.s   $f18, $f0, $f10
/* 1B5FC 8002C69C 46124400 */  add.s   $f16, $f8, $f18
/* 1B600 8002C6A0 E4F00000 */  swc1    $f16, 0x0000($a3)          ## 00000000
/* 1B604 8002C6A4 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 1B608 8002C6A8 8DC20000 */  lw      $v0, 0x0000($t6)           ## 00000000
/* 1B60C 8002C6AC 14400004 */  bne     $v0, $zero, .L8002C6C0
/* 1B610 8002C6B0 00000000 */  nop
/* 1B614 8002C6B4 ADC50000 */  sw      $a1, 0x0000($t6)           ## 00000000
/* 1B618 8002C6B8 03E00008 */  jr      $ra
/* 1B61C 8002C6BC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002C6C0:
/* 1B620 8002C6C0 8C8F0000 */  lw      $t7, 0x0000($a0)           ## 00000000
/* 1B624 8002C6C4 94590000 */  lhu     $t9, 0x0000($v0)           ## 00000001
/* 1B628 8002C6C8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1B62C 8002C6CC 8DF8001C */  lw      $t8, 0x001C($t7)           ## 0000001C
/* 1B630 8002C6D0 001940C0 */  sll     $t0, $t9,  3
/* 1B634 8002C6D4 8FAB0028 */  lw      $t3, 0x0028($sp)
/* 1B638 8002C6D8 03084821 */  addu    $t1, $t8, $t0
/* 1B63C 8002C6DC 8D230004 */  lw      $v1, 0x0004($t1)           ## 00000004
/* 1B640 8002C6E0 00035100 */  sll     $t2, $v1,  4
/* 1B644 8002C6E4 05410003 */  bgez    $t2, .L8002C6F4
/* 1B648 8002C6E8 00000000 */  nop
/* 1B64C 8002C6EC 10000001 */  beq     $zero, $zero, .L8002C6F4
/* 1B650 8002C6F0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002C6F4:
/* 1B654 8002C6F4 54400005 */  bnel    $v0, $zero, .L8002C70C
/* 1B658 8002C6F8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1B65C 8002C6FC AD650000 */  sw      $a1, 0x0000($t3)           ## 00000000
/* 1B660 8002C700 03E00008 */  jr      $ra
/* 1B664 8002C704 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002C708:
/* 1B668 8002C708 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002C70C:
/* 1B66C 8002C70C 03E00008 */  jr      $ra
/* 1B670 8002C710 00000000 */  nop


glabel func_8002C714
/* 1B674 8002C714 27BDFEF8 */  addiu   $sp, $sp, 0xFEF8           ## $sp = FFFFFEF8
/* 1B678 8002C718 AFB5007C */  sw      $s5, 0x007C($sp)
/* 1B67C 8002C71C AFB30074 */  sw      $s3, 0x0074($sp)
/* 1B680 8002C720 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 1B684 8002C724 3415FFFF */  ori     $s5, $zero, 0xFFFF         ## $s5 = 0000FFFF
/* 1B688 8002C728 AFBF008C */  sw      $ra, 0x008C($sp)
/* 1B68C 8002C72C AFBE0088 */  sw      $s8, 0x0088($sp)
/* 1B690 8002C730 AFB70084 */  sw      $s7, 0x0084($sp)
/* 1B694 8002C734 AFB60080 */  sw      $s6, 0x0080($sp)
/* 1B698 8002C738 AFB40078 */  sw      $s4, 0x0078($sp)
/* 1B69C 8002C73C AFB20070 */  sw      $s2, 0x0070($sp)
/* 1B6A0 8002C740 AFB1006C */  sw      $s1, 0x006C($sp)
/* 1B6A4 8002C744 AFB00068 */  sw      $s0, 0x0068($sp)
/* 1B6A8 8002C748 F7BE0060 */  sdc1    $f30, 0x0060($sp)
/* 1B6AC 8002C74C F7BC0058 */  sdc1    $f28, 0x0058($sp)
/* 1B6B0 8002C750 F7BA0050 */  sdc1    $f26, 0x0050($sp)
/* 1B6B4 8002C754 F7B80048 */  sdc1    $f24, 0x0048($sp)
/* 1B6B8 8002C758 F7B60040 */  sdc1    $f22, 0x0040($sp)
/* 1B6BC 8002C75C F7B40038 */  sdc1    $f20, 0x0038($sp)
/* 1B6C0 8002C760 AFA40108 */  sw      $a0, 0x0108($sp)
/* 1B6C4 8002C764 AFA60110 */  sw      $a2, 0x0110($sp)
/* 1B6C8 8002C768 AFA70114 */  sw      $a3, 0x0114($sp)
/* 1B6CC 8002C76C 8FAE0108 */  lw      $t6, 0x0108($sp)
/* 1B6D0 8002C770 AFA000E8 */  sw      $zero, 0x00E8($sp)
/* 1B6D4 8002C774 8FB6011C */  lw      $s6, 0x011C($sp)
/* 1B6D8 8002C778 95CF0002 */  lhu     $t7, 0x0002($t6)           ## 00000002
/* 1B6DC 8002C77C 56AF0004 */  bnel    $s5, $t7, .L8002C790
/* 1B6E0 8002C780 8ED90000 */  lw      $t9, 0x0000($s6)           ## 00000000
/* 1B6E4 8002C784 100001F6 */  beq     $zero, $zero, .L8002CF60
/* 1B6E8 8002C788 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1B6EC 8002C78C 8ED90000 */  lw      $t9, 0x0000($s6)           ## 00000000
.L8002C790:
/* 1B6F0 8002C790 27B700FC */  addiu   $s7, $sp, 0x00FC           ## $s7 = FFFFFFF4
/* 1B6F4 8002C794 241E0006 */  addiu   $s8, $zero, 0x0006         ## $s8 = 00000006
/* 1B6F8 8002C798 AEF90000 */  sw      $t9, 0x0000($s7)           ## FFFFFFF4
/* 1B6FC 8002C79C 8ED80004 */  lw      $t8, 0x0004($s6)           ## 00000004
/* 1B700 8002C7A0 24140006 */  addiu   $s4, $zero, 0x0006         ## $s4 = 00000006
/* 1B704 8002C7A4 AEF80004 */  sw      $t8, 0x0004($s7)           ## FFFFFFF8
/* 1B708 8002C7A8 8ED90008 */  lw      $t9, 0x0008($s6)           ## 00000008
/* 1B70C 8002C7AC AEF90008 */  sw      $t9, 0x0008($s7)           ## FFFFFFFC
/* 1B710 8002C7B0 8E620000 */  lw      $v0, 0x0000($s3)           ## 00000000
/* 1B714 8002C7B4 8FA90108 */  lw      $t1, 0x0108($sp)
/* 1B718 8002C7B8 C7BC0120 */  lwc1    $f28, 0x0120($sp)
/* 1B71C 8002C7BC 8C480018 */  lw      $t0, 0x0018($v0)           ## 00000018
/* 1B720 8002C7C0 AFA800E0 */  sw      $t0, 0x00E0($sp)
/* 1B724 8002C7C4 952A0002 */  lhu     $t2, 0x0002($t1)           ## 00000002
/* 1B728 8002C7C8 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
/* 1B72C 8002C7CC 8C520010 */  lw      $s2, 0x0010($v0)           ## 00000010
/* 1B730 8002C7D0 000A5880 */  sll     $t3, $t2,  2
/* 1B734 8002C7D4 006B8821 */  addu    $s1, $v1, $t3
.L8002C7D8:
/* 1B738 8002C7D8 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 1B73C 8002C7DC 8FAD00E0 */  lw      $t5, 0x00E0($sp)
/* 1B740 8002C7E0 C6C00004 */  lwc1    $f0, 0x0004($s6)           ## 00000004
/* 1B744 8002C7E4 00026100 */  sll     $t4, $v0,  4
/* 1B748 8002C7E8 018D8021 */  addu    $s0, $t4, $t5
/* 1B74C 8002C7EC 960E0002 */  lhu     $t6, 0x0002($s0)           ## 00000002
/* 1B750 8002C7F0 31CF1FFF */  andi    $t7, $t6, 0x1FFF           ## $t7 = 00000000
/* 1B754 8002C7F4 01F40019 */  multu   $t7, $s4
/* 1B758 8002C7F8 0000C012 */  mflo    $t8
/* 1B75C 8002C7FC 0258C821 */  addu    $t9, $s2, $t8
/* 1B760 8002C800 87280002 */  lh      $t0, 0x0002($t9)           ## 00000002
/* 1B764 8002C804 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 1B768 8002C808 00000000 */  nop
/* 1B76C 8002C80C 468021A0 */  cvt.s.w $f6, $f4
/* 1B770 8002C810 4606003C */  c.lt.s  $f0, $f6
/* 1B774 8002C814 00000000 */  nop
/* 1B778 8002C818 45020020 */  bc1fl   .L8002C89C
/* 1B77C 8002C81C 860B0008 */  lh      $t3, 0x0008($s0)           ## 00000008
/* 1B780 8002C820 96090004 */  lhu     $t1, 0x0004($s0)           ## 00000004
/* 1B784 8002C824 312A1FFF */  andi    $t2, $t1, 0x1FFF           ## $t2 = 00000000
/* 1B788 8002C828 01540019 */  multu   $t2, $s4
/* 1B78C 8002C82C 00005812 */  mflo    $t3
/* 1B790 8002C830 024B6021 */  addu    $t4, $s2, $t3
/* 1B794 8002C834 858D0002 */  lh      $t5, 0x0002($t4)           ## 00000002
/* 1B798 8002C838 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 1B79C 8002C83C 00000000 */  nop
/* 1B7A0 8002C840 468042A0 */  cvt.s.w $f10, $f8
/* 1B7A4 8002C844 460A003C */  c.lt.s  $f0, $f10
/* 1B7A8 8002C848 00000000 */  nop
/* 1B7AC 8002C84C 45020013 */  bc1fl   .L8002C89C
/* 1B7B0 8002C850 860B0008 */  lh      $t3, 0x0008($s0)           ## 00000008
/* 1B7B4 8002C854 960E0006 */  lhu     $t6, 0x0006($s0)           ## 00000006
/* 1B7B8 8002C858 01DE0019 */  multu   $t6, $s8
/* 1B7BC 8002C85C 00007812 */  mflo    $t7
/* 1B7C0 8002C860 024FC021 */  addu    $t8, $s2, $t7
/* 1B7C4 8002C864 87190002 */  lh      $t9, 0x0002($t8)           ## 00000002
/* 1B7C8 8002C868 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 1B7CC 8002C86C 00000000 */  nop
/* 1B7D0 8002C870 468021A0 */  cvt.s.w $f6, $f4
/* 1B7D4 8002C874 4606003C */  c.lt.s  $f0, $f6
/* 1B7D8 8002C878 00000000 */  nop
/* 1B7DC 8002C87C 45020007 */  bc1fl   .L8002C89C
/* 1B7E0 8002C880 860B0008 */  lh      $t3, 0x0008($s0)           ## 00000008
/* 1B7E4 8002C884 8FA80108 */  lw      $t0, 0x0108($sp)
/* 1B7E8 8002C888 95090002 */  lhu     $t1, 0x0002($t0)           ## 00000002
/* 1B7EC 8002C88C 00095080 */  sll     $t2, $t1,  2
/* 1B7F0 8002C890 100000CF */  beq     $zero, $zero, .L8002CBD0
/* 1B7F4 8002C894 006A8821 */  addu    $s1, $v1, $t2
/* 1B7F8 8002C898 860B0008 */  lh      $t3, 0x0008($s0)           ## 00000008
.L8002C89C:
/* 1B7FC 8002C89C 860C000A */  lh      $t4, 0x000A($s0)           ## 0000000A
/* 1B800 8002C8A0 860D000C */  lh      $t5, 0x000C($s0)           ## 0000000C
/* 1B804 8002C8A4 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 1B808 8002C8A8 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 1B80C 8002C8AC 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1B810 8002C8B0 468042A0 */  cvt.s.w $f10, $f8
/* 1B814 8002C8B4 C4226A8C */  lwc1    $f2, 0x6A8C($at)           ## 80106A8C
/* 1B818 8002C8B8 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 1B81C 8002C8BC 860E000E */  lh      $t6, 0x000E($s0)           ## 0000000E
/* 1B820 8002C8C0 AFB70010 */  sw      $s7, 0x0010($sp)
/* 1B824 8002C8C4 468021A0 */  cvt.s.w $f6, $f4
/* 1B828 8002C8C8 46025582 */  mul.s   $f22, $f10, $f2
/* 1B82C 8002C8CC 468042A0 */  cvt.s.w $f10, $f8
/* 1B830 8002C8D0 46023682 */  mul.s   $f26, $f6, $f2
/* 1B834 8002C8D4 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 1B838 8002C8D8 4600B306 */  mov.s   $f12, $f22
/* 1B83C 8002C8DC 46025602 */  mul.s   $f24, $f10, $f2
/* 1B840 8002C8E0 4600D386 */  mov.s   $f14, $f26
/* 1B844 8002C8E4 4616B102 */  mul.s   $f4, $f22, $f22
/* 1B848 8002C8E8 00000000 */  nop
/* 1B84C 8002C8EC 4618C182 */  mul.s   $f6, $f24, $f24
/* 1B850 8002C8F0 4406C000 */  mfc1    $a2, $f24
/* 1B854 8002C8F4 46804220 */  cvt.s.w $f8, $f8
/* 1B858 8002C8F8 46062000 */  add.s   $f0, $f4, $f6
/* 1B85C 8002C8FC 44074000 */  mfc1    $a3, $f8
/* 1B860 8002C900 0C029A69 */  jal     func_800A69A4
/* 1B864 8002C904 46000504 */  sqrt.s  $f20, $f0
/* 1B868 8002C908 46000786 */  mov.s   $f30, $f0
/* 1B86C 8002C90C 46000005 */  abs.s   $f0, $f0
/* 1B870 8002C910 97AF0112 */  lhu     $t7, 0x0112($sp)
/* 1B874 8002C914 4600E03C */  c.lt.s  $f28, $f0
/* 1B878 8002C918 00000000 */  nop
/* 1B87C 8002C91C 45030008 */  bc1tl   .L8002C940
/* 1B880 8002C920 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1B884 8002C924 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 1B888 8002C928 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 1B88C 8002C92C 0018CB40 */  sll     $t9, $t8, 13
/* 1B890 8002C930 00594024 */  and     $t0, $v0, $t9
/* 1B894 8002C934 1100000F */  beq     $t0, $zero, .L8002C974
/* 1B898 8002C938 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1B89C 8002C93C 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002C940:
/* 1B8A0 8002C940 56A20009 */  bnel    $s5, $v0, .L8002C968
/* 1B8A4 8002C944 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
/* 1B8A8 8002C948 8FAA0108 */  lw      $t2, 0x0108($sp)
/* 1B8AC 8002C94C 8E690048 */  lw      $t1, 0x0048($s3)           ## 00000048
/* 1B8B0 8002C950 C6C00004 */  lwc1    $f0, 0x0004($s6)           ## 00000004
/* 1B8B4 8002C954 954B0002 */  lhu     $t3, 0x0002($t2)           ## 00000002
/* 1B8B8 8002C958 000B6080 */  sll     $t4, $t3,  2
/* 1B8BC 8002C95C 1000009C */  beq     $zero, $zero, .L8002CBD0
/* 1B8C0 8002C960 012C8821 */  addu    $s1, $t1, $t4
/* 1B8C4 8002C964 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
.L8002C968:
/* 1B8C8 8002C968 00026880 */  sll     $t5, $v0,  2
/* 1B8CC 8002C96C 1000FF9A */  beq     $zero, $zero, .L8002C7D8
/* 1B8D0 8002C970 006D8821 */  addu    $s1, $v1, $t5
.L8002C974:
/* 1B8D4 8002C974 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 1B8D8 8002C978 4600C005 */  abs.s   $f0, $f24
/* 1B8DC 8002C97C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1B8E0 8002C980 46145383 */  div.s   $f14, $f10, $f20
/* 1B8E4 8002C984 C4246A90 */  lwc1    $f4, 0x6A90($at)           ## 80106A90
/* 1B8E8 8002C988 304A1FFF */  andi    $t2, $v0, 0x1FFF           ## $t2 = 00000000
/* 1B8EC 8002C98C 460E0402 */  mul.s   $f16, $f0, $f14
/* 1B8F0 8002C990 4604803C */  c.lt.s  $f16, $f4
/* 1B8F4 8002C994 00000000 */  nop
/* 1B8F8 8002C998 4500000F */  bc1f    .L8002C9D8
/* 1B8FC 8002C99C 00000000 */  nop
/* 1B900 8002C9A0 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1B904 8002C9A4 56A20009 */  bnel    $s5, $v0, .L8002C9CC
/* 1B908 8002C9A8 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
/* 1B90C 8002C9AC 8FAF0108 */  lw      $t7, 0x0108($sp)
/* 1B910 8002C9B0 8E6E0048 */  lw      $t6, 0x0048($s3)           ## 00000048
/* 1B914 8002C9B4 C6C00004 */  lwc1    $f0, 0x0004($s6)           ## 00000004
/* 1B918 8002C9B8 95F80002 */  lhu     $t8, 0x0002($t7)           ## 00000002
/* 1B91C 8002C9BC 0018C880 */  sll     $t9, $t8,  2
/* 1B920 8002C9C0 10000083 */  beq     $zero, $zero, .L8002CBD0
/* 1B924 8002C9C4 01D98821 */  addu    $s1, $t6, $t9
/* 1B928 8002C9C8 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
.L8002C9CC:
/* 1B92C 8002C9CC 00024080 */  sll     $t0, $v0,  2
/* 1B930 8002C9D0 1000FF81 */  beq     $zero, $zero, .L8002C7D8
/* 1B934 8002C9D4 00688821 */  addu    $s1, $v1, $t0
.L8002C9D8:
/* 1B938 8002C9D8 01540019 */  multu   $t2, $s4
/* 1B93C 8002C9DC 960D0004 */  lhu     $t5, 0x0004($s0)           ## 00000004
/* 1B940 8002C9E0 31AF1FFF */  andi    $t7, $t5, 0x1FFF           ## $t7 = 00000000
/* 1B944 8002C9E4 00005812 */  mflo    $t3
/* 1B948 8002C9E8 024B4821 */  addu    $t1, $s2, $t3
/* 1B94C 8002C9EC 852C0004 */  lh      $t4, 0x0004($t1)           ## 00000004
/* 1B950 8002C9F0 01F40019 */  multu   $t7, $s4
/* 1B954 8002C9F4 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 1B958 8002C9F8 00000000 */  nop
/* 1B95C 8002C9FC 46803320 */  cvt.s.w $f12, $f6
/* 1B960 8002CA00 0000C012 */  mflo    $t8
/* 1B964 8002CA04 02587021 */  addu    $t6, $s2, $t8
/* 1B968 8002CA08 85D90004 */  lh      $t9, 0x0004($t6)           ## 00000004
/* 1B96C 8002CA0C 46006086 */  mov.s   $f2, $f12
/* 1B970 8002CA10 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 1B974 8002CA14 00000000 */  nop
/* 1B978 8002CA18 46804020 */  cvt.s.w $f0, $f8
/* 1B97C 8002CA1C 4602003C */  c.lt.s  $f0, $f2
/* 1B980 8002CA20 00000000 */  nop
/* 1B984 8002CA24 45020004 */  bc1fl   .L8002CA38
/* 1B988 8002CA28 4600603C */  c.lt.s  $f12, $f0
/* 1B98C 8002CA2C 10000006 */  beq     $zero, $zero, .L8002CA48
/* 1B990 8002CA30 46000086 */  mov.s   $f2, $f0
/* 1B994 8002CA34 4600603C */  c.lt.s  $f12, $f0
.L8002CA38:
/* 1B998 8002CA38 00000000 */  nop
/* 1B99C 8002CA3C 45020003 */  bc1fl   .L8002CA4C
/* 1B9A0 8002CA40 96080006 */  lhu     $t0, 0x0006($s0)           ## 00000006
/* 1B9A4 8002CA44 46000306 */  mov.s   $f12, $f0
.L8002CA48:
/* 1B9A8 8002CA48 96080006 */  lhu     $t0, 0x0006($s0)           ## 00000006
.L8002CA4C:
/* 1B9AC 8002CA4C 011E0019 */  multu   $t0, $s8
/* 1B9B0 8002CA50 00005012 */  mflo    $t2
/* 1B9B4 8002CA54 024A5821 */  addu    $t3, $s2, $t2
/* 1B9B8 8002CA58 85690004 */  lh      $t1, 0x0004($t3)           ## 00000004
/* 1B9BC 8002CA5C 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 1B9C0 8002CA60 00000000 */  nop
/* 1B9C4 8002CA64 46805020 */  cvt.s.w $f0, $f10
/* 1B9C8 8002CA68 4602003C */  c.lt.s  $f0, $f2
/* 1B9CC 8002CA6C 00000000 */  nop
/* 1B9D0 8002CA70 45020004 */  bc1fl   .L8002CA84
/* 1B9D4 8002CA74 4600603C */  c.lt.s  $f12, $f0
/* 1B9D8 8002CA78 10000006 */  beq     $zero, $zero, .L8002CA94
/* 1B9DC 8002CA7C 46000086 */  mov.s   $f2, $f0
/* 1B9E0 8002CA80 4600603C */  c.lt.s  $f12, $f0
.L8002CA84:
/* 1B9E4 8002CA84 00000000 */  nop
/* 1B9E8 8002CA88 45020003 */  bc1fl   .L8002CA98
/* 1B9EC 8002CA8C 461C1081 */  sub.s   $f2, $f2, $f28
/* 1B9F0 8002CA90 46000306 */  mov.s   $f12, $f0
.L8002CA94:
/* 1B9F4 8002CA94 461C1081 */  sub.s   $f2, $f2, $f28
.L8002CA98:
/* 1B9F8 8002CA98 C7B20104 */  lwc1    $f18, 0x0104($sp)
/* 1B9FC 8002CA9C 461C6300 */  add.s   $f12, $f12, $f28
/* 1BA00 8002CAA0 4602903C */  c.lt.s  $f18, $f2
/* 1BA04 8002CAA4 00000000 */  nop
/* 1BA08 8002CAA8 45030008 */  bc1tl   .L8002CACC
/* 1BA0C 8002CAAC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BA10 8002CAB0 4612603C */  c.lt.s  $f12, $f18
/* 1BA14 8002CAB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BA18 8002CAB8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 1BA1C 8002CABC 8FA600FC */  lw      $a2, 0x00FC($sp)
/* 1BA20 8002CAC0 4500000F */  bc1f    .L8002CB00
/* 1BA24 8002CAC4 27B900EC */  addiu   $t9, $sp, 0x00EC           ## $t9 = FFFFFFE4
/* 1BA28 8002CAC8 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002CACC:
/* 1BA2C 8002CACC 56A20009 */  bnel    $s5, $v0, .L8002CAF4
/* 1BA30 8002CAD0 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
/* 1BA34 8002CAD4 8FAD0108 */  lw      $t5, 0x0108($sp)
/* 1BA38 8002CAD8 8E6C0048 */  lw      $t4, 0x0048($s3)           ## 00000048
/* 1BA3C 8002CADC C6C00004 */  lwc1    $f0, 0x0004($s6)           ## 00000004
/* 1BA40 8002CAE0 95AF0002 */  lhu     $t7, 0x0002($t5)           ## 00000002
/* 1BA44 8002CAE4 000FC080 */  sll     $t8, $t7,  2
/* 1BA48 8002CAE8 10000039 */  beq     $zero, $zero, .L8002CBD0
/* 1BA4C 8002CAEC 01988821 */  addu    $s1, $t4, $t8
/* 1BA50 8002CAF0 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
.L8002CAF4:
/* 1BA54 8002CAF4 00027080 */  sll     $t6, $v0,  2
/* 1BA58 8002CAF8 1000FF37 */  beq     $zero, $zero, .L8002C7D8
/* 1BA5C 8002CAFC 006E8821 */  addu    $s1, $v1, $t6
.L8002CB00:
/* 1BA60 8002CB00 8EC70004 */  lw      $a3, 0x0004($s6)           ## 00000004
/* 1BA64 8002CB04 E7B000B8 */  swc1    $f16, 0x00B8($sp)
/* 1BA68 8002CB08 E7AE0094 */  swc1    $f14, 0x0094($sp)
/* 1BA6C 8002CB0C 0C00AF02 */  jal     func_8002BC08
/* 1BA70 8002CB10 AFB90010 */  sw      $t9, 0x0010($sp)
/* 1BA74 8002CB14 C7AE0094 */  lwc1    $f14, 0x0094($sp)
/* 1BA78 8002CB18 1040001F */  beq     $v0, $zero, .L8002CB98
/* 1BA7C 8002CB1C C7B000B8 */  lwc1    $f16, 0x00B8($sp)
/* 1BA80 8002CB20 C7B20104 */  lwc1    $f18, 0x0104($sp)
/* 1BA84 8002CB24 4610E183 */  div.s   $f6, $f28, $f16
/* 1BA88 8002CB28 C7A400EC */  lwc1    $f4, 0x00EC($sp)
/* 1BA8C 8002CB2C 46122081 */  sub.s   $f2, $f4, $f18
/* 1BA90 8002CB30 46001005 */  abs.s   $f0, $f2
/* 1BA94 8002CB34 4606003E */  c.le.s  $f0, $f6
/* 1BA98 8002CB38 00000000 */  nop
/* 1BA9C 8002CB3C 45020017 */  bc1fl   .L8002CB9C
/* 1BAA0 8002CB40 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BAA4 8002CB44 46181282 */  mul.s   $f10, $f2, $f24
/* 1BAA8 8002CB48 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 1BAAC 8002CB4C 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 1BAB0 8002CB50 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 1BAB4 8002CB54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BAB8 8002CB58 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFF4
/* 1BABC 8002CB5C 27A70104 */  addiu   $a3, $sp, 0x0104           ## $a3 = FFFFFFFC
/* 1BAC0 8002CB60 4608503E */  c.le.s  $f10, $f8
/* 1BAC4 8002CB64 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 1BAC8 8002CB68 4502000C */  bc1fl   .L8002CB9C
/* 1BACC 8002CB6C 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BAD0 8002CB70 8FA80124 */  lw      $t0, 0x0124($sp)
/* 1BAD4 8002CB74 E7B60010 */  swc1    $f22, 0x0010($sp)
/* 1BAD8 8002CB78 E7BA0014 */  swc1    $f26, 0x0014($sp)
/* 1BADC 8002CB7C E7B80018 */  swc1    $f24, 0x0018($sp)
/* 1BAE0 8002CB80 E7AE001C */  swc1    $f14, 0x001C($sp)
/* 1BAE4 8002CB84 E7BE0020 */  swc1    $f30, 0x0020($sp)
/* 1BAE8 8002CB88 E7BC0024 */  swc1    $f28, 0x0024($sp)
/* 1BAEC 8002CB8C AFAA00E8 */  sw      $t2, 0x00E8($sp)
/* 1BAF0 8002CB90 0C00B199 */  jal     func_8002C664
/* 1BAF4 8002CB94 AFA80028 */  sw      $t0, 0x0028($sp)
.L8002CB98:
/* 1BAF8 8002CB98 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002CB9C:
/* 1BAFC 8002CB9C 56A20009 */  bnel    $s5, $v0, .L8002CBC4
/* 1BB00 8002CBA0 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
/* 1BB04 8002CBA4 8FA90108 */  lw      $t1, 0x0108($sp)
/* 1BB08 8002CBA8 8E6B0048 */  lw      $t3, 0x0048($s3)           ## 00000048
/* 1BB0C 8002CBAC C6C00004 */  lwc1    $f0, 0x0004($s6)           ## 00000004
/* 1BB10 8002CBB0 952D0002 */  lhu     $t5, 0x0002($t1)           ## 00000002
/* 1BB14 8002CBB4 000D7880 */  sll     $t7, $t5,  2
/* 1BB18 8002CBB8 10000005 */  beq     $zero, $zero, .L8002CBD0
/* 1BB1C 8002CBBC 016F8821 */  addu    $s1, $t3, $t7
/* 1BB20 8002CBC0 8E630048 */  lw      $v1, 0x0048($s3)           ## 00000048
.L8002CBC4:
/* 1BB24 8002CBC4 00026080 */  sll     $t4, $v0,  2
/* 1BB28 8002CBC8 1000FF03 */  beq     $zero, $zero, .L8002C7D8
/* 1BB2C 8002CBCC 006C8821 */  addu    $s1, $v1, $t4
.L8002CBD0:
/* 1BB30 8002CBD0 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 1BB34 8002CBD4 8FAE00E0 */  lw      $t6, 0x00E0($sp)
/* 1BB38 8002CBD8 0002C100 */  sll     $t8, $v0,  4
/* 1BB3C 8002CBDC 030E8021 */  addu    $s0, $t8, $t6
/* 1BB40 8002CBE0 96190002 */  lhu     $t9, 0x0002($s0)           ## 00000002
/* 1BB44 8002CBE4 33281FFF */  andi    $t0, $t9, 0x1FFF           ## $t0 = 00000000
/* 1BB48 8002CBE8 01140019 */  multu   $t0, $s4
/* 1BB4C 8002CBEC 00005012 */  mflo    $t2
/* 1BB50 8002CBF0 024A4821 */  addu    $t1, $s2, $t2
/* 1BB54 8002CBF4 852D0002 */  lh      $t5, 0x0002($t1)           ## 00000002
/* 1BB58 8002CBF8 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 1BB5C 8002CBFC 00000000 */  nop
/* 1BB60 8002CC00 468021A0 */  cvt.s.w $f6, $f4
/* 1BB64 8002CC04 4606003C */  c.lt.s  $f0, $f6
/* 1BB68 8002CC08 00000000 */  nop
/* 1BB6C 8002CC0C 4502001B */  bc1fl   .L8002CC7C
/* 1BB70 8002CC10 860D0008 */  lh      $t5, 0x0008($s0)           ## 00000008
/* 1BB74 8002CC14 960B0004 */  lhu     $t3, 0x0004($s0)           ## 00000004
/* 1BB78 8002CC18 316F1FFF */  andi    $t7, $t3, 0x1FFF           ## $t7 = 00000000
/* 1BB7C 8002CC1C 01F40019 */  multu   $t7, $s4
/* 1BB80 8002CC20 00006012 */  mflo    $t4
/* 1BB84 8002CC24 024CC021 */  addu    $t8, $s2, $t4
/* 1BB88 8002CC28 870E0002 */  lh      $t6, 0x0002($t8)           ## 00000002
/* 1BB8C 8002CC2C 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 1BB90 8002CC30 00000000 */  nop
/* 1BB94 8002CC34 468042A0 */  cvt.s.w $f10, $f8
/* 1BB98 8002CC38 460A003C */  c.lt.s  $f0, $f10
/* 1BB9C 8002CC3C 00000000 */  nop
/* 1BBA0 8002CC40 4502000E */  bc1fl   .L8002CC7C
/* 1BBA4 8002CC44 860D0008 */  lh      $t5, 0x0008($s0)           ## 00000008
/* 1BBA8 8002CC48 96190006 */  lhu     $t9, 0x0006($s0)           ## 00000006
/* 1BBAC 8002CC4C 033E0019 */  multu   $t9, $s8
/* 1BBB0 8002CC50 00004012 */  mflo    $t0
/* 1BBB4 8002CC54 02485021 */  addu    $t2, $s2, $t0
/* 1BBB8 8002CC58 85490002 */  lh      $t1, 0x0002($t2)           ## 00000002
/* 1BBBC 8002CC5C 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 1BBC0 8002CC60 00000000 */  nop
/* 1BBC4 8002CC64 468021A0 */  cvt.s.w $f6, $f4
/* 1BBC8 8002CC68 4606003C */  c.lt.s  $f0, $f6
/* 1BBCC 8002CC6C 00000000 */  nop
/* 1BBD0 8002CC70 450300B5 */  bc1tl   .L8002CF48
/* 1BBD4 8002CC74 C7A400FC */  lwc1    $f4, 0x00FC($sp)
/* 1BBD8 8002CC78 860D0008 */  lh      $t5, 0x0008($s0)           ## 00000008
.L8002CC7C:
/* 1BBDC 8002CC7C 860B000A */  lh      $t3, 0x000A($s0)           ## 0000000A
/* 1BBE0 8002CC80 860F000C */  lh      $t7, 0x000C($s0)           ## 0000000C
/* 1BBE4 8002CC84 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 1BBE8 8002CC88 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 1BBEC 8002CC8C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1BBF0 8002CC90 468042A0 */  cvt.s.w $f10, $f8
/* 1BBF4 8002CC94 C4226A94 */  lwc1    $f2, 0x6A94($at)           ## 80106A94
/* 1BBF8 8002CC98 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 1BBFC 8002CC9C 860C000E */  lh      $t4, 0x000E($s0)           ## 0000000E
/* 1BC00 8002CCA0 AFB70010 */  sw      $s7, 0x0010($sp)
/* 1BC04 8002CCA4 468021A0 */  cvt.s.w $f6, $f4
/* 1BC08 8002CCA8 46025582 */  mul.s   $f22, $f10, $f2
/* 1BC0C 8002CCAC 468042A0 */  cvt.s.w $f10, $f8
/* 1BC10 8002CCB0 46023682 */  mul.s   $f26, $f6, $f2
/* 1BC14 8002CCB4 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 1BC18 8002CCB8 4600B306 */  mov.s   $f12, $f22
/* 1BC1C 8002CCBC 46025602 */  mul.s   $f24, $f10, $f2
/* 1BC20 8002CCC0 4600D386 */  mov.s   $f14, $f26
/* 1BC24 8002CCC4 4616B102 */  mul.s   $f4, $f22, $f22
/* 1BC28 8002CCC8 00000000 */  nop
/* 1BC2C 8002CCCC 4618C182 */  mul.s   $f6, $f24, $f24
/* 1BC30 8002CCD0 4406C000 */  mfc1    $a2, $f24
/* 1BC34 8002CCD4 46804220 */  cvt.s.w $f8, $f8
/* 1BC38 8002CCD8 46062000 */  add.s   $f0, $f4, $f6
/* 1BC3C 8002CCDC 44074000 */  mfc1    $a3, $f8
/* 1BC40 8002CCE0 0C029A69 */  jal     func_800A69A4
/* 1BC44 8002CCE4 46000504 */  sqrt.s  $f20, $f0
/* 1BC48 8002CCE8 46000786 */  mov.s   $f30, $f0
/* 1BC4C 8002CCEC 46000005 */  abs.s   $f0, $f0
/* 1BC50 8002CCF0 97B80112 */  lhu     $t8, 0x0112($sp)
/* 1BC54 8002CCF4 4600E03C */  c.lt.s  $f28, $f0
/* 1BC58 8002CCF8 00000000 */  nop
/* 1BC5C 8002CCFC 45030008 */  bc1tl   .L8002CD20
/* 1BC60 8002CD00 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BC64 8002CD04 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 1BC68 8002CD08 330E0007 */  andi    $t6, $t8, 0x0007           ## $t6 = 00000000
/* 1BC6C 8002CD0C 000ECB40 */  sll     $t9, $t6, 13
/* 1BC70 8002CD10 00594024 */  and     $t0, $v0, $t9
/* 1BC74 8002CD14 11000008 */  beq     $t0, $zero, .L8002CD38
/* 1BC78 8002CD18 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1BC7C 8002CD1C 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002CD20:
/* 1BC80 8002CD20 52A20089 */  beql    $s5, $v0, .L8002CF48
/* 1BC84 8002CD24 C7A400FC */  lwc1    $f4, 0x00FC($sp)
/* 1BC88 8002CD28 8E6A0048 */  lw      $t2, 0x0048($s3)           ## 00000048
/* 1BC8C 8002CD2C 00024880 */  sll     $t1, $v0,  2
/* 1BC90 8002CD30 10000082 */  beq     $zero, $zero, .L8002CF3C
/* 1BC94 8002CD34 01498821 */  addu    $s1, $t2, $t1
.L8002CD38:
/* 1BC98 8002CD38 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 1BC9C 8002CD3C 4600B005 */  abs.s   $f0, $f22
/* 1BCA0 8002CD40 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1BCA4 8002CD44 46145383 */  div.s   $f14, $f10, $f20
/* 1BCA8 8002CD48 C4246A98 */  lwc1    $f4, 0x6A98($at)           ## 80106A98
/* 1BCAC 8002CD4C 304F1FFF */  andi    $t7, $v0, 0x1FFF           ## $t7 = 00000000
/* 1BCB0 8002CD50 460E0402 */  mul.s   $f16, $f0, $f14
/* 1BCB4 8002CD54 4604803C */  c.lt.s  $f16, $f4
/* 1BCB8 8002CD58 00000000 */  nop
/* 1BCBC 8002CD5C 45000008 */  bc1f    .L8002CD80
/* 1BCC0 8002CD60 00000000 */  nop
/* 1BCC4 8002CD64 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BCC8 8002CD68 52A20077 */  beql    $s5, $v0, .L8002CF48
/* 1BCCC 8002CD6C C7A400FC */  lwc1    $f4, 0x00FC($sp)
/* 1BCD0 8002CD70 8E6D0048 */  lw      $t5, 0x0048($s3)           ## 00000048
/* 1BCD4 8002CD74 00025880 */  sll     $t3, $v0,  2
/* 1BCD8 8002CD78 10000070 */  beq     $zero, $zero, .L8002CF3C
/* 1BCDC 8002CD7C 01AB8821 */  addu    $s1, $t5, $t3
.L8002CD80:
/* 1BCE0 8002CD80 01F40019 */  multu   $t7, $s4
/* 1BCE4 8002CD84 96190004 */  lhu     $t9, 0x0004($s0)           ## 00000004
/* 1BCE8 8002CD88 33281FFF */  andi    $t0, $t9, 0x1FFF           ## $t0 = 00000000
/* 1BCEC 8002CD8C 00006012 */  mflo    $t4
/* 1BCF0 8002CD90 024CC021 */  addu    $t8, $s2, $t4
/* 1BCF4 8002CD94 870E0000 */  lh      $t6, 0x0000($t8)           ## 00000000
/* 1BCF8 8002CD98 01140019 */  multu   $t0, $s4
/* 1BCFC 8002CD9C 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 1BD00 8002CDA0 00000000 */  nop
/* 1BD04 8002CDA4 46803320 */  cvt.s.w $f12, $f6
/* 1BD08 8002CDA8 00005012 */  mflo    $t2
/* 1BD0C 8002CDAC 024A4821 */  addu    $t1, $s2, $t2
/* 1BD10 8002CDB0 852D0000 */  lh      $t5, 0x0000($t1)           ## 00000000
/* 1BD14 8002CDB4 46006086 */  mov.s   $f2, $f12
/* 1BD18 8002CDB8 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 1BD1C 8002CDBC 00000000 */  nop
/* 1BD20 8002CDC0 46804020 */  cvt.s.w $f0, $f8
/* 1BD24 8002CDC4 4602003C */  c.lt.s  $f0, $f2
/* 1BD28 8002CDC8 00000000 */  nop
/* 1BD2C 8002CDCC 45020004 */  bc1fl   .L8002CDE0
/* 1BD30 8002CDD0 4600603C */  c.lt.s  $f12, $f0
/* 1BD34 8002CDD4 10000006 */  beq     $zero, $zero, .L8002CDF0
/* 1BD38 8002CDD8 46000086 */  mov.s   $f2, $f0
/* 1BD3C 8002CDDC 4600603C */  c.lt.s  $f12, $f0
.L8002CDE0:
/* 1BD40 8002CDE0 00000000 */  nop
/* 1BD44 8002CDE4 45020003 */  bc1fl   .L8002CDF4
/* 1BD48 8002CDE8 960B0006 */  lhu     $t3, 0x0006($s0)           ## 00000006
/* 1BD4C 8002CDEC 46000306 */  mov.s   $f12, $f0
.L8002CDF0:
/* 1BD50 8002CDF0 960B0006 */  lhu     $t3, 0x0006($s0)           ## 00000006
.L8002CDF4:
/* 1BD54 8002CDF4 017E0019 */  multu   $t3, $s8
/* 1BD58 8002CDF8 00007812 */  mflo    $t7
/* 1BD5C 8002CDFC 024F6021 */  addu    $t4, $s2, $t7
/* 1BD60 8002CE00 85980000 */  lh      $t8, 0x0000($t4)           ## 00000000
/* 1BD64 8002CE04 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 1BD68 8002CE08 00000000 */  nop
/* 1BD6C 8002CE0C 46805020 */  cvt.s.w $f0, $f10
/* 1BD70 8002CE10 4602003C */  c.lt.s  $f0, $f2
/* 1BD74 8002CE14 00000000 */  nop
/* 1BD78 8002CE18 45020004 */  bc1fl   .L8002CE2C
/* 1BD7C 8002CE1C 4600603C */  c.lt.s  $f12, $f0
/* 1BD80 8002CE20 10000006 */  beq     $zero, $zero, .L8002CE3C
/* 1BD84 8002CE24 46000086 */  mov.s   $f2, $f0
/* 1BD88 8002CE28 4600603C */  c.lt.s  $f12, $f0
.L8002CE2C:
/* 1BD8C 8002CE2C 00000000 */  nop
/* 1BD90 8002CE30 45020003 */  bc1fl   .L8002CE40
/* 1BD94 8002CE34 461C1081 */  sub.s   $f2, $f2, $f28
/* 1BD98 8002CE38 46000306 */  mov.s   $f12, $f0
.L8002CE3C:
/* 1BD9C 8002CE3C 461C1081 */  sub.s   $f2, $f2, $f28
.L8002CE40:
/* 1BDA0 8002CE40 C7B200FC */  lwc1    $f18, 0x00FC($sp)
/* 1BDA4 8002CE44 461C6300 */  add.s   $f12, $f12, $f28
/* 1BDA8 8002CE48 4602903C */  c.lt.s  $f18, $f2
/* 1BDAC 8002CE4C 00000000 */  nop
/* 1BDB0 8002CE50 45030008 */  bc1tl   .L8002CE74
/* 1BDB4 8002CE54 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BDB8 8002CE58 4612603C */  c.lt.s  $f12, $f18
/* 1BDBC 8002CE5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BDC0 8002CE60 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 1BDC4 8002CE64 8FA70104 */  lw      $a3, 0x0104($sp)
/* 1BDC8 8002CE68 45000008 */  bc1f    .L8002CE8C
/* 1BDCC 8002CE6C 27A800EC */  addiu   $t0, $sp, 0x00EC           ## $t0 = FFFFFFE4
/* 1BDD0 8002CE70 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002CE74:
/* 1BDD4 8002CE74 52A20034 */  beql    $s5, $v0, .L8002CF48
/* 1BDD8 8002CE78 C7A400FC */  lwc1    $f4, 0x00FC($sp)
/* 1BDDC 8002CE7C 8E6E0048 */  lw      $t6, 0x0048($s3)           ## 00000048
/* 1BDE0 8002CE80 0002C880 */  sll     $t9, $v0,  2
/* 1BDE4 8002CE84 1000002D */  beq     $zero, $zero, .L8002CF3C
/* 1BDE8 8002CE88 01D98821 */  addu    $s1, $t6, $t9
.L8002CE8C:
/* 1BDEC 8002CE8C 8EC60004 */  lw      $a2, 0x0004($s6)           ## 00000004
/* 1BDF0 8002CE90 E7B000B8 */  swc1    $f16, 0x00B8($sp)
/* 1BDF4 8002CE94 E7AE0094 */  swc1    $f14, 0x0094($sp)
/* 1BDF8 8002CE98 0C00AED9 */  jal     func_8002BB64
/* 1BDFC 8002CE9C AFA80010 */  sw      $t0, 0x0010($sp)
/* 1BE00 8002CEA0 C7AE0094 */  lwc1    $f14, 0x0094($sp)
/* 1BE04 8002CEA4 1040001F */  beq     $v0, $zero, .L8002CF24
/* 1BE08 8002CEA8 C7B000B8 */  lwc1    $f16, 0x00B8($sp)
/* 1BE0C 8002CEAC C7B200FC */  lwc1    $f18, 0x00FC($sp)
/* 1BE10 8002CEB0 4610E183 */  div.s   $f6, $f28, $f16
/* 1BE14 8002CEB4 C7A400EC */  lwc1    $f4, 0x00EC($sp)
/* 1BE18 8002CEB8 46122081 */  sub.s   $f2, $f4, $f18
/* 1BE1C 8002CEBC 46001005 */  abs.s   $f0, $f2
/* 1BE20 8002CEC0 4606003E */  c.le.s  $f0, $f6
/* 1BE24 8002CEC4 00000000 */  nop
/* 1BE28 8002CEC8 45020017 */  bc1fl   .L8002CF28
/* 1BE2C 8002CECC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BE30 8002CED0 46161282 */  mul.s   $f10, $f2, $f22
/* 1BE34 8002CED4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 1BE38 8002CED8 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 1BE3C 8002CEDC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 1BE40 8002CEE0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1BE44 8002CEE4 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFF4
/* 1BE48 8002CEE8 27A70104 */  addiu   $a3, $sp, 0x0104           ## $a3 = FFFFFFFC
/* 1BE4C 8002CEEC 4608503E */  c.le.s  $f10, $f8
/* 1BE50 8002CEF0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 1BE54 8002CEF4 4502000C */  bc1fl   .L8002CF28
/* 1BE58 8002CEF8 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BE5C 8002CEFC 8FAA0124 */  lw      $t2, 0x0124($sp)
/* 1BE60 8002CF00 E7B60010 */  swc1    $f22, 0x0010($sp)
/* 1BE64 8002CF04 E7BA0014 */  swc1    $f26, 0x0014($sp)
/* 1BE68 8002CF08 E7B80018 */  swc1    $f24, 0x0018($sp)
/* 1BE6C 8002CF0C E7AE001C */  swc1    $f14, 0x001C($sp)
/* 1BE70 8002CF10 E7BE0020 */  swc1    $f30, 0x0020($sp)
/* 1BE74 8002CF14 E7BC0024 */  swc1    $f28, 0x0024($sp)
/* 1BE78 8002CF18 AFA900E8 */  sw      $t1, 0x00E8($sp)
/* 1BE7C 8002CF1C 0C00B199 */  jal     func_8002C664
/* 1BE80 8002CF20 AFAA0028 */  sw      $t2, 0x0028($sp)
.L8002CF24:
/* 1BE84 8002CF24 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002CF28:
/* 1BE88 8002CF28 52A20007 */  beql    $s5, $v0, .L8002CF48
/* 1BE8C 8002CF2C C7A400FC */  lwc1    $f4, 0x00FC($sp)
/* 1BE90 8002CF30 8E6D0048 */  lw      $t5, 0x0048($s3)           ## 00000048
/* 1BE94 8002CF34 00025880 */  sll     $t3, $v0,  2
/* 1BE98 8002CF38 01AB8821 */  addu    $s1, $t5, $t3
.L8002CF3C:
/* 1BE9C 8002CF3C 1000FF24 */  beq     $zero, $zero, .L8002CBD0
/* 1BEA0 8002CF40 C6C00004 */  lwc1    $f0, 0x0004($s6)           ## 00000004
/* 1BEA4 8002CF44 C7A400FC */  lwc1    $f4, 0x00FC($sp)
.L8002CF48:
/* 1BEA8 8002CF48 8FAF0114 */  lw      $t7, 0x0114($sp)
/* 1BEAC 8002CF4C E5E40000 */  swc1    $f4, 0x0000($t7)           ## 00000000
/* 1BEB0 8002CF50 8FAC0118 */  lw      $t4, 0x0118($sp)
/* 1BEB4 8002CF54 C7A60104 */  lwc1    $f6, 0x0104($sp)
/* 1BEB8 8002CF58 E5860000 */  swc1    $f6, 0x0000($t4)           ## 00000000
/* 1BEBC 8002CF5C 8FA200E8 */  lw      $v0, 0x00E8($sp)
.L8002CF60:
/* 1BEC0 8002CF60 8FBF008C */  lw      $ra, 0x008C($sp)
/* 1BEC4 8002CF64 D7B40038 */  ldc1    $f20, 0x0038($sp)
/* 1BEC8 8002CF68 D7B60040 */  ldc1    $f22, 0x0040($sp)
/* 1BECC 8002CF6C D7B80048 */  ldc1    $f24, 0x0048($sp)
/* 1BED0 8002CF70 D7BA0050 */  ldc1    $f26, 0x0050($sp)
/* 1BED4 8002CF74 D7BC0058 */  ldc1    $f28, 0x0058($sp)
/* 1BED8 8002CF78 D7BE0060 */  ldc1    $f30, 0x0060($sp)
/* 1BEDC 8002CF7C 8FB00068 */  lw      $s0, 0x0068($sp)
/* 1BEE0 8002CF80 8FB1006C */  lw      $s1, 0x006C($sp)
/* 1BEE4 8002CF84 8FB20070 */  lw      $s2, 0x0070($sp)
/* 1BEE8 8002CF88 8FB30074 */  lw      $s3, 0x0074($sp)
/* 1BEEC 8002CF8C 8FB40078 */  lw      $s4, 0x0078($sp)
/* 1BEF0 8002CF90 8FB5007C */  lw      $s5, 0x007C($sp)
/* 1BEF4 8002CF94 8FB60080 */  lw      $s6, 0x0080($sp)
/* 1BEF8 8002CF98 8FB70084 */  lw      $s7, 0x0084($sp)
/* 1BEFC 8002CF9C 8FBE0088 */  lw      $s8, 0x0088($sp)
/* 1BF00 8002CFA0 03E00008 */  jr      $ra
/* 1BF04 8002CFA4 27BD0108 */  addiu   $sp, $sp, 0x0108           ## $sp = 00000000


glabel func_8002CFA8
/* 1BF08 8002CFA8 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 1BF0C 8002CFAC AFB50054 */  sw      $s5, 0x0054($sp)
/* 1BF10 8002CFB0 AFB40050 */  sw      $s4, 0x0050($sp)
/* 1BF14 8002CFB4 AFB20048 */  sw      $s2, 0x0048($sp)
/* 1BF18 8002CFB8 AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 1BF1C 8002CFBC 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 1BF20 8002CFC0 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 1BF24 8002CFC4 00E0A025 */  or      $s4, $a3, $zero            ## $s4 = 00000000
/* 1BF28 8002CFC8 3415FFFF */  ori     $s5, $zero, 0xFFFF         ## $s5 = 0000FFFF
/* 1BF2C 8002CFCC AFBF0064 */  sw      $ra, 0x0064($sp)
/* 1BF30 8002CFD0 AFBE0060 */  sw      $s8, 0x0060($sp)
/* 1BF34 8002CFD4 AFB7005C */  sw      $s7, 0x005C($sp)
/* 1BF38 8002CFD8 AFB60058 */  sw      $s6, 0x0058($sp)
/* 1BF3C 8002CFDC AFB3004C */  sw      $s3, 0x004C($sp)
/* 1BF40 8002CFE0 AFB10044 */  sw      $s1, 0x0044($sp)
/* 1BF44 8002CFE4 AFB00040 */  sw      $s0, 0x0040($sp)
/* 1BF48 8002CFE8 F7BA0038 */  sdc1    $f26, 0x0038($sp)
/* 1BF4C 8002CFEC F7B80030 */  sdc1    $f24, 0x0030($sp)
/* 1BF50 8002CFF0 F7B60028 */  sdc1    $f22, 0x0028($sp)
/* 1BF54 8002CFF4 F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 1BF58 8002CFF8 94830004 */  lhu     $v1, 0x0004($a0)           ## 00000004
/* 1BF5C 8002CFFC 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 1BF60 8002D000 8FB300B0 */  lw      $s3, 0x00B0($sp)
/* 1BF64 8002D004 16A30003 */  bne     $s5, $v1, .L8002D014
/* 1BF68 8002D008 00037880 */  sll     $t7, $v1,  2
/* 1BF6C 8002D00C 1000004C */  beq     $zero, $zero, .L8002D140
/* 1BF70 8002D010 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002D014:
/* 1BF74 8002D014 8E420000 */  lw      $v0, 0x0000($s2)           ## 00000000
/* 1BF78 8002D018 C6640004 */  lwc1    $f4, 0x0004($s3)           ## 00000004
/* 1BF7C 8002D01C 8E4E0048 */  lw      $t6, 0x0048($s2)           ## 00000048
/* 1BF80 8002D020 8C560018 */  lw      $s6, 0x0018($v0)           ## 00000018
/* 1BF84 8002D024 8C570010 */  lw      $s7, 0x0010($v0)           ## 00000010
/* 1BF88 8002D028 E6840000 */  swc1    $f4, 0x0000($s4)           ## 00000000
/* 1BF8C 8002D02C 8E580000 */  lw      $t8, 0x0000($s2)           ## 00000000
/* 1BF90 8002D030 30BE0007 */  andi    $s8, $a1, 0x0007           ## $s8 = 00000000
/* 1BF94 8002D034 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1BF98 8002D038 4480D000 */  mtc1    $zero, $f26                ## $f26 = 0.00
/* 1BF9C 8002D03C 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 1BFA0 8002D040 C4366A9C */  lwc1    $f22, 0x6A9C($at)          ## 80106A9C
/* 1BFA4 8002D044 001EF340 */  sll     $s8, $s8, 13
/* 1BFA8 8002D048 C7B400B4 */  lwc1    $f20, 0x00B4($sp)
/* 1BFAC 8002D04C 01CF8821 */  addu    $s1, $t6, $t7
/* 1BFB0 8002D050 8F040018 */  lw      $a0, 0x0018($t8)           ## 00000018
.L8002D054:
/* 1BFB4 8002D054 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 1BFB8 8002D058 02E02825 */  or      $a1, $s7, $zero            ## $a1 = 00000000
/* 1BFBC 8002D05C 27AD008C */  addiu   $t5, $sp, 0x008C           ## $t5 = FFFFFFEC
/* 1BFC0 8002D060 00021900 */  sll     $v1, $v0,  4
/* 1BFC4 8002D064 0083C821 */  addu    $t9, $a0, $v1
/* 1BFC8 8002D068 97290002 */  lhu     $t1, 0x0002($t9)           ## 00000002
/* 1BFCC 8002D06C 00768021 */  addu    $s0, $v1, $s6
/* 1BFD0 8002D070 013E5024 */  and     $t2, $t1, $s8
/* 1BFD4 8002D074 51400009 */  beql    $t2, $zero, .L8002D09C
/* 1BFD8 8002D078 8E660000 */  lw      $a2, 0x0000($s3)           ## 00000000
/* 1BFDC 8002D07C 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1BFE0 8002D080 52A2002F */  beql    $s5, $v0, .L8002D140
/* 1BFE4 8002D084 01001025 */  or      $v0, $t0, $zero            ## $v0 = 00000000
/* 1BFE8 8002D088 8E4B0048 */  lw      $t3, 0x0048($s2)           ## 00000048
/* 1BFEC 8002D08C 00026080 */  sll     $t4, $v0,  2
/* 1BFF0 8002D090 1000FFF0 */  beq     $zero, $zero, .L8002D054
/* 1BFF4 8002D094 016C8821 */  addu    $s1, $t3, $t4
/* 1BFF8 8002D098 8E660000 */  lw      $a2, 0x0000($s3)           ## 00000000
.L8002D09C:
/* 1BFFC 8002D09C 8E670008 */  lw      $a3, 0x0008($s3)           ## 00000008
/* 1C000 8002D0A0 AFA8009C */  sw      $t0, 0x009C($sp)
/* 1C004 8002D0A4 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 1C008 8002D0A8 0C00AEC9 */  jal     func_8002BB24
/* 1C00C 8002D0AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1C010 8002D0B0 10400019 */  beq     $v0, $zero, .L8002D118
/* 1C014 8002D0B4 8FA8009C */  lw      $t0, 0x009C($sp)
/* 1C018 8002D0B8 860E000A */  lh      $t6, 0x000A($s0)           ## 0000000A
/* 1C01C 8002D0BC C7A6008C */  lwc1    $f6, 0x008C($sp)
/* 1C020 8002D0C0 C6880000 */  lwc1    $f8, 0x0000($s4)           ## 00000000
/* 1C024 8002D0C4 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 1C028 8002D0C8 46083001 */  sub.s   $f0, $f6, $f8
/* 1C02C 8002D0CC 46805420 */  cvt.s.w $f16, $f10
/* 1C030 8002D0D0 4600C03C */  c.lt.s  $f24, $f0
/* 1C034 8002D0D4 46168082 */  mul.s   $f2, $f16, $f22
/* 1C038 8002D0D8 45020010 */  bc1fl   .L8002D11C
/* 1C03C 8002D0DC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1C040 8002D0E0 4614003C */  c.lt.s  $f0, $f20
/* 1C044 8002D0E4 00000000 */  nop
/* 1C048 8002D0E8 4502000C */  bc1fl   .L8002D11C
/* 1C04C 8002D0EC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1C050 8002D0F0 46020482 */  mul.s   $f18, $f0, $f2
/* 1C054 8002D0F4 461A903E */  c.le.s  $f18, $f26
/* 1C058 8002D0F8 00000000 */  nop
/* 1C05C 8002D0FC 45020007 */  bc1fl   .L8002D11C
/* 1C060 8002D100 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1C064 8002D104 46143101 */  sub.s   $f4, $f6, $f20
/* 1C068 8002D108 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 1C06C 8002D10C E6840000 */  swc1    $f4, 0x0000($s4)           ## 00000000
/* 1C070 8002D110 8FAF00B8 */  lw      $t7, 0x00B8($sp)
/* 1C074 8002D114 ADF00000 */  sw      $s0, 0x0000($t7)           ## 00000000
.L8002D118:
/* 1C078 8002D118 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002D11C:
/* 1C07C 8002D11C 52A20008 */  beql    $s5, $v0, .L8002D140
/* 1C080 8002D120 01001025 */  or      $v0, $t0, $zero            ## $v0 = 00000001
/* 1C084 8002D124 8E580048 */  lw      $t8, 0x0048($s2)           ## 00000048
/* 1C088 8002D128 8E490000 */  lw      $t1, 0x0000($s2)           ## 00000000
/* 1C08C 8002D12C 0002C880 */  sll     $t9, $v0,  2
/* 1C090 8002D130 03198821 */  addu    $s1, $t8, $t9
/* 1C094 8002D134 1000FFC7 */  beq     $zero, $zero, .L8002D054
/* 1C098 8002D138 8D240018 */  lw      $a0, 0x0018($t1)           ## 00000018
/* 1C09C 8002D13C 01001025 */  or      $v0, $t0, $zero            ## $v0 = 00000001
.L8002D140:
/* 1C0A0 8002D140 8FBF0064 */  lw      $ra, 0x0064($sp)
/* 1C0A4 8002D144 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 1C0A8 8002D148 D7B60028 */  ldc1    $f22, 0x0028($sp)
/* 1C0AC 8002D14C D7B80030 */  ldc1    $f24, 0x0030($sp)
/* 1C0B0 8002D150 D7BA0038 */  ldc1    $f26, 0x0038($sp)
/* 1C0B4 8002D154 8FB00040 */  lw      $s0, 0x0040($sp)
/* 1C0B8 8002D158 8FB10044 */  lw      $s1, 0x0044($sp)
/* 1C0BC 8002D15C 8FB20048 */  lw      $s2, 0x0048($sp)
/* 1C0C0 8002D160 8FB3004C */  lw      $s3, 0x004C($sp)
/* 1C0C4 8002D164 8FB40050 */  lw      $s4, 0x0050($sp)
/* 1C0C8 8002D168 8FB50054 */  lw      $s5, 0x0054($sp)
/* 1C0CC 8002D16C 8FB60058 */  lw      $s6, 0x0058($sp)
/* 1C0D0 8002D170 8FB7005C */  lw      $s7, 0x005C($sp)
/* 1C0D4 8002D174 8FBE0060 */  lw      $s8, 0x0060($sp)
/* 1C0D8 8002D178 03E00008 */  jr      $ra
/* 1C0DC 8002D17C 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


glabel func_8002D180
/* 1C0E0 8002D180 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 1C0E4 8002D184 AFBE0050 */  sw      $s8, 0x0050($sp)
/* 1C0E8 8002D188 AFB20038 */  sw      $s2, 0x0038($sp)
/* 1C0EC 8002D18C 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 1C0F0 8002D190 341EFFFF */  ori     $s8, $zero, 0xFFFF         ## $s8 = 0000FFFF
/* 1C0F4 8002D194 AFBF0054 */  sw      $ra, 0x0054($sp)
/* 1C0F8 8002D198 AFB7004C */  sw      $s7, 0x004C($sp)
/* 1C0FC 8002D19C AFB60048 */  sw      $s6, 0x0048($sp)
/* 1C100 8002D1A0 AFB50044 */  sw      $s5, 0x0044($sp)
/* 1C104 8002D1A4 AFB40040 */  sw      $s4, 0x0040($sp)
/* 1C108 8002D1A8 AFB3003C */  sw      $s3, 0x003C($sp)
/* 1C10C 8002D1AC AFB10034 */  sw      $s1, 0x0034($sp)
/* 1C110 8002D1B0 AFB00030 */  sw      $s0, 0x0030($sp)
/* 1C114 8002D1B4 F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 1C118 8002D1B8 AFA600A0 */  sw      $a2, 0x00A0($sp)
/* 1C11C 8002D1BC AFA700A4 */  sw      $a3, 0x00A4($sp)
/* 1C120 8002D1C0 AFA00078 */  sw      $zero, 0x0078($sp)
/* 1C124 8002D1C4 94820000 */  lhu     $v0, 0x0000($a0)           ## 00000000
/* 1C128 8002D1C8 8E4E0000 */  lw      $t6, 0x0000($s2)           ## 00000000
/* 1C12C 8002D1CC C7B400BC */  lwc1    $f20, 0x00BC($sp)
/* 1C130 8002D1D0 17C20003 */  bne     $s8, $v0, .L8002D1E0
/* 1C134 8002D1D4 8DD60018 */  lw      $s6, 0x0018($t6)           ## 00000018
/* 1C138 8002D1D8 10000065 */  beq     $zero, $zero, .L8002D370
/* 1C13C 8002D1DC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002D1E0:
/* 1C140 8002D1E0 8E450048 */  lw      $a1, 0x0048($s2)           ## 00000048
/* 1C144 8002D1E4 00027880 */  sll     $t7, $v0,  2
/* 1C148 8002D1E8 8E47004C */  lw      $a3, 0x004C($s2)           ## 0000004C
/* 1C14C 8002D1EC 8FB700B8 */  lw      $s7, 0x00B8($sp)
/* 1C150 8002D1F0 8FB500AC */  lw      $s5, 0x00AC($sp)
/* 1C154 8002D1F4 8FB400A8 */  lw      $s4, 0x00A8($sp)
/* 1C158 8002D1F8 27B30084 */  addiu   $s3, $sp, 0x0084           ## $s3 = FFFFFFEC
/* 1C15C 8002D1FC 00AF8821 */  addu    $s1, $a1, $t7
.L8002D200:
/* 1C160 8002D200 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 1C164 8002D204 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1C168 8002D208 97A800A2 */  lhu     $t0, 0x00A2($sp)
/* 1C16C 8002D20C 00E21821 */  addu    $v1, $a3, $v0
/* 1C170 8002D210 90780000 */  lbu     $t8, 0x0000($v1)           ## 00000000
/* 1C174 8002D214 00023100 */  sll     $a2, $v0,  4
/* 1C178 8002D218 1301000D */  beq     $t8, $at, .L8002D250
/* 1C17C 8002D21C 02C6C821 */  addu    $t9, $s6, $a2
/* 1C180 8002D220 97240002 */  lhu     $a0, 0x0002($t9)           ## 00000002
/* 1C184 8002D224 31090007 */  andi    $t1, $t0, 0x0007           ## $t1 = 00000000
/* 1C188 8002D228 00095340 */  sll     $t2, $t1, 13
/* 1C18C 8002D22C 008A5824 */  and     $t3, $a0, $t2
/* 1C190 8002D230 15600007 */  bne     $t3, $zero, .L8002D250
/* 1C194 8002D234 97A200A6 */  lhu     $v0, 0x00A6($sp)
/* 1C198 8002D238 1040000A */  beq     $v0, $zero, .L8002D264
/* 1C19C 8002D23C 304C0007 */  andi    $t4, $v0, 0x0007           ## $t4 = 00000000
/* 1C1A0 8002D240 000C6B40 */  sll     $t5, $t4, 13
/* 1C1A4 8002D244 008D7024 */  and     $t6, $a0, $t5
/* 1C1A8 8002D248 55C00007 */  bnel    $t6, $zero, .L8002D268
/* 1C1AC 8002D24C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
.L8002D250:
/* 1C1B0 8002D250 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1C1B4 8002D254 13C20045 */  beq     $s8, $v0, .L8002D36C
/* 1C1B8 8002D258 00027880 */  sll     $t7, $v0,  2
/* 1C1BC 8002D25C 1000FFE8 */  beq     $zero, $zero, .L8002D200
/* 1C1C0 8002D260 00AF8821 */  addu    $s1, $a1, $t7
.L8002D264:
/* 1C1C4 8002D264 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
.L8002D268:
/* 1C1C8 8002D268 A0780000 */  sb      $t8, 0x0000($v1)           ## 00000000
/* 1C1CC 8002D26C 8E590000 */  lw      $t9, 0x0000($s2)           ## 00000000
/* 1C1D0 8002D270 00D68021 */  addu    $s0, $a2, $s6
/* 1C1D4 8002D274 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1C1D8 8002D278 0C00AD59 */  jal     func_8002B564
/* 1C1DC 8002D27C 8F250010 */  lw      $a1, 0x0010($t9)           ## 00000010
/* 1C1E0 8002D280 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 1C1E4 8002D284 C6860004 */  lwc1    $f6, 0x0004($s4)           ## 00000004
/* 1C1E8 8002D288 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1C1EC 8002D28C 46802020 */  cvt.s.w $f0, $f4
/* 1C1F0 8002D290 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 1C1F4 8002D294 4600303C */  c.lt.s  $f6, $f0
/* 1C1F8 8002D298 00000000 */  nop
/* 1C1FC 8002D29C 45020007 */  bc1fl   .L8002D2BC
/* 1C200 8002D2A0 8E480000 */  lw      $t0, 0x0000($s2)           ## 00000000
/* 1C204 8002D2A4 C6A80004 */  lwc1    $f8, 0x0004($s5)           ## 00000004
/* 1C208 8002D2A8 4600403C */  c.lt.s  $f8, $f0
/* 1C20C 8002D2AC 00000000 */  nop
/* 1C210 8002D2B0 4503002F */  bc1tl   .L8002D370
/* 1C214 8002D2B4 8FA20078 */  lw      $v0, 0x0078($sp)
/* 1C218 8002D2B8 8E480000 */  lw      $t0, 0x0000($s2)           ## 00000000
.L8002D2BC:
/* 1C21C 8002D2BC 8FA900C0 */  lw      $t1, 0x00C0($sp)
/* 1C220 8002D2C0 02A03825 */  or      $a3, $s5, $zero            ## $a3 = 00000000
/* 1C224 8002D2C4 8D050010 */  lw      $a1, 0x0010($t0)           ## 00000010
/* 1C228 8002D2C8 312A0008 */  andi    $t2, $t1, 0x0008           ## $t2 = 00000000
/* 1C22C 8002D2CC 000A582B */  sltu    $t3, $zero, $t2
/* 1C230 8002D2D0 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 1C234 8002D2D4 E7B40018 */  swc1    $f20, 0x0018($sp)
/* 1C238 8002D2D8 0C00AF2B */  jal     func_8002BCAC
/* 1C23C 8002D2DC AFB30010 */  sw      $s3, 0x0010($sp)
/* 1C240 8002D2E0 1040001A */  beq     $v0, $zero, .L8002D34C
/* 1C244 8002D2E4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 1C248 8002D2E8 0C02954E */  jal     func_800A5538
/* 1C24C 8002D2EC 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFEC
/* 1C250 8002D2F0 C6EA0000 */  lwc1    $f10, 0x0000($s7)          ## 00000000
/* 1C254 8002D2F4 460A003C */  c.lt.s  $f0, $f10
/* 1C258 8002D2F8 00000000 */  nop
/* 1C25C 8002D2FC 45020014 */  bc1fl   .L8002D350
/* 1C260 8002D300 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1C264 8002D304 E6E00000 */  swc1    $f0, 0x0000($s7)           ## 00000000
/* 1C268 8002D308 8E6E0000 */  lw      $t6, 0x0000($s3)           ## FFFFFFEC
/* 1C26C 8002D30C 8FAC00B0 */  lw      $t4, 0x00B0($sp)
/* 1C270 8002D310 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 1C274 8002D314 AD8E0000 */  sw      $t6, 0x0000($t4)           ## 00000000
/* 1C278 8002D318 8E6D0004 */  lw      $t5, 0x0004($s3)           ## FFFFFFF0
/* 1C27C 8002D31C AD8D0004 */  sw      $t5, 0x0004($t4)           ## 00000004
/* 1C280 8002D320 8E6E0008 */  lw      $t6, 0x0008($s3)           ## FFFFFFF4
/* 1C284 8002D324 AD8E0008 */  sw      $t6, 0x0008($t4)           ## 00000008
/* 1C288 8002D328 8E780000 */  lw      $t8, 0x0000($s3)           ## FFFFFFEC
/* 1C28C 8002D32C AEB80000 */  sw      $t8, 0x0000($s5)           ## 00000000
/* 1C290 8002D330 8E6F0004 */  lw      $t7, 0x0004($s3)           ## FFFFFFF0
/* 1C294 8002D334 AEAF0004 */  sw      $t7, 0x0004($s5)           ## 00000004
/* 1C298 8002D338 8E780008 */  lw      $t8, 0x0008($s3)           ## FFFFFFF4
/* 1C29C 8002D33C AEB80008 */  sw      $t8, 0x0008($s5)           ## 00000008
/* 1C2A0 8002D340 8FB900B4 */  lw      $t9, 0x00B4($sp)
/* 1C2A4 8002D344 AF300000 */  sw      $s0, 0x0000($t9)           ## 00000000
/* 1C2A8 8002D348 AFA80078 */  sw      $t0, 0x0078($sp)
.L8002D34C:
/* 1C2AC 8002D34C 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002D350:
/* 1C2B0 8002D350 53C20007 */  beql    $s8, $v0, .L8002D370
/* 1C2B4 8002D354 8FA20078 */  lw      $v0, 0x0078($sp)
/* 1C2B8 8002D358 8E450048 */  lw      $a1, 0x0048($s2)           ## 00000048
/* 1C2BC 8002D35C 00024880 */  sll     $t1, $v0,  2
/* 1C2C0 8002D360 00A98821 */  addu    $s1, $a1, $t1
/* 1C2C4 8002D364 1000FFA6 */  beq     $zero, $zero, .L8002D200
/* 1C2C8 8002D368 8E47004C */  lw      $a3, 0x004C($s2)           ## 0000004C
.L8002D36C:
/* 1C2CC 8002D36C 8FA20078 */  lw      $v0, 0x0078($sp)
.L8002D370:
/* 1C2D0 8002D370 8FBF0054 */  lw      $ra, 0x0054($sp)
/* 1C2D4 8002D374 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 1C2D8 8002D378 8FB00030 */  lw      $s0, 0x0030($sp)
/* 1C2DC 8002D37C 8FB10034 */  lw      $s1, 0x0034($sp)
/* 1C2E0 8002D380 8FB20038 */  lw      $s2, 0x0038($sp)
/* 1C2E4 8002D384 8FB3003C */  lw      $s3, 0x003C($sp)
/* 1C2E8 8002D388 8FB40040 */  lw      $s4, 0x0040($sp)
/* 1C2EC 8002D38C 8FB50044 */  lw      $s5, 0x0044($sp)
/* 1C2F0 8002D390 8FB60048 */  lw      $s6, 0x0048($sp)
/* 1C2F4 8002D394 8FB7004C */  lw      $s7, 0x004C($sp)
/* 1C2F8 8002D398 8FBE0050 */  lw      $s8, 0x0050($sp)
/* 1C2FC 8002D39C 03E00008 */  jr      $ra
/* 1C300 8002D3A0 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


glabel func_8002D3A4
/* 1C304 8002D3A4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 1C308 8002D3A8 AFB10038 */  sw      $s1, 0x0038($sp)
/* 1C30C 8002D3AC AFB00034 */  sw      $s0, 0x0034($sp)
/* 1C310 8002D3B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1C314 8002D3B4 8FB10070 */  lw      $s1, 0x0070($sp)
/* 1C318 8002D3B8 AFBF003C */  sw      $ra, 0x003C($sp)
/* 1C31C 8002D3BC AFA5004C */  sw      $a1, 0x004C($sp)
/* 1C320 8002D3C0 AFA60050 */  sw      $a2, 0x0050($sp)
/* 1C324 8002D3C4 AFA70054 */  sw      $a3, 0x0054($sp)
/* 1C328 8002D3C8 322E0002 */  andi    $t6, $s1, 0x0002           ## $t6 = 00000000
/* 1C32C 8002D3CC 11C0001A */  beq     $t6, $zero, .L8002D438
/* 1C330 8002D3D0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 1C334 8002D3D4 960F0000 */  lhu     $t7, 0x0000($s0)           ## 00000000
/* 1C338 8002D3D8 3401FFFF */  ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
/* 1C33C 8002D3DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1C340 8002D3E0 11E10015 */  beq     $t7, $at, .L8002D438
/* 1C344 8002D3E4 8FA5004C */  lw      $a1, 0x004C($sp)
/* 1C348 8002D3E8 8FB80058 */  lw      $t8, 0x0058($sp)
/* 1C34C 8002D3EC 8FB9005C */  lw      $t9, 0x005C($sp)
/* 1C350 8002D3F0 8FA80060 */  lw      $t0, 0x0060($sp)
/* 1C354 8002D3F4 8FA90064 */  lw      $t1, 0x0064($sp)
/* 1C358 8002D3F8 8FAA006C */  lw      $t2, 0x006C($sp)
/* 1C35C 8002D3FC C7A40068 */  lwc1    $f4, 0x0068($sp)
/* 1C360 8002D400 97A60052 */  lhu     $a2, 0x0052($sp)
/* 1C364 8002D404 97A70056 */  lhu     $a3, 0x0056($sp)
/* 1C368 8002D408 AFB10028 */  sw      $s1, 0x0028($sp)
/* 1C36C 8002D40C AFA00044 */  sw      $zero, 0x0044($sp)
/* 1C370 8002D410 AFB80010 */  sw      $t8, 0x0010($sp)
/* 1C374 8002D414 AFB90014 */  sw      $t9, 0x0014($sp)
/* 1C378 8002D418 AFA80018 */  sw      $t0, 0x0018($sp)
/* 1C37C 8002D41C AFA9001C */  sw      $t1, 0x001C($sp)
/* 1C380 8002D420 AFAA0020 */  sw      $t2, 0x0020($sp)
/* 1C384 8002D424 0C00B460 */  jal     func_8002D180
/* 1C388 8002D428 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1C38C 8002D42C 10400002 */  beq     $v0, $zero, .L8002D438
/* 1C390 8002D430 8FA30044 */  lw      $v1, 0x0044($sp)
/* 1C394 8002D434 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L8002D438:
/* 1C398 8002D438 322B0001 */  andi    $t3, $s1, 0x0001           ## $t3 = 00000000
/* 1C39C 8002D43C 5160001B */  beql    $t3, $zero, .L8002D4AC
/* 1C3A0 8002D440 32280004 */  andi    $t0, $s1, 0x0004           ## $t0 = 00000000
/* 1C3A4 8002D444 960C0002 */  lhu     $t4, 0x0002($s0)           ## 00000002
/* 1C3A8 8002D448 3401FFFF */  ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
/* 1C3AC 8002D44C 26040002 */  addiu   $a0, $s0, 0x0002           ## $a0 = 00000002
/* 1C3B0 8002D450 11810015 */  beq     $t4, $at, .L8002D4A8
/* 1C3B4 8002D454 8FA5004C */  lw      $a1, 0x004C($sp)
/* 1C3B8 8002D458 8FAD0058 */  lw      $t5, 0x0058($sp)
/* 1C3BC 8002D45C 8FAE005C */  lw      $t6, 0x005C($sp)
/* 1C3C0 8002D460 8FAF0060 */  lw      $t7, 0x0060($sp)
/* 1C3C4 8002D464 8FB80064 */  lw      $t8, 0x0064($sp)
/* 1C3C8 8002D468 8FB9006C */  lw      $t9, 0x006C($sp)
/* 1C3CC 8002D46C C7A60068 */  lwc1    $f6, 0x0068($sp)
/* 1C3D0 8002D470 97A60052 */  lhu     $a2, 0x0052($sp)
/* 1C3D4 8002D474 97A70056 */  lhu     $a3, 0x0056($sp)
/* 1C3D8 8002D478 AFB10028 */  sw      $s1, 0x0028($sp)
/* 1C3DC 8002D47C AFA30044 */  sw      $v1, 0x0044($sp)
/* 1C3E0 8002D480 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 1C3E4 8002D484 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 1C3E8 8002D488 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 1C3EC 8002D48C AFB8001C */  sw      $t8, 0x001C($sp)
/* 1C3F0 8002D490 AFB90020 */  sw      $t9, 0x0020($sp)
/* 1C3F4 8002D494 0C00B460 */  jal     func_8002D180
/* 1C3F8 8002D498 E7A60024 */  swc1    $f6, 0x0024($sp)
/* 1C3FC 8002D49C 10400002 */  beq     $v0, $zero, .L8002D4A8
/* 1C400 8002D4A0 8FA30044 */  lw      $v1, 0x0044($sp)
/* 1C404 8002D4A4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L8002D4A8:
/* 1C408 8002D4A8 32280004 */  andi    $t0, $s1, 0x0004           ## $t0 = 00000000
.L8002D4AC:
/* 1C40C 8002D4AC 5100001B */  beql    $t0, $zero, .L8002D51C
/* 1C410 8002D4B0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
/* 1C414 8002D4B4 96090004 */  lhu     $t1, 0x0004($s0)           ## 00000004
/* 1C418 8002D4B8 3401FFFF */  ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
/* 1C41C 8002D4BC 26040004 */  addiu   $a0, $s0, 0x0004           ## $a0 = 00000004
/* 1C420 8002D4C0 11210015 */  beq     $t1, $at, .L8002D518
/* 1C424 8002D4C4 8FA5004C */  lw      $a1, 0x004C($sp)
/* 1C428 8002D4C8 8FAA0058 */  lw      $t2, 0x0058($sp)
/* 1C42C 8002D4CC 8FAB005C */  lw      $t3, 0x005C($sp)
/* 1C430 8002D4D0 8FAC0060 */  lw      $t4, 0x0060($sp)
/* 1C434 8002D4D4 8FAD0064 */  lw      $t5, 0x0064($sp)
/* 1C438 8002D4D8 8FAE006C */  lw      $t6, 0x006C($sp)
/* 1C43C 8002D4DC C7A80068 */  lwc1    $f8, 0x0068($sp)
/* 1C440 8002D4E0 97A60052 */  lhu     $a2, 0x0052($sp)
/* 1C444 8002D4E4 97A70056 */  lhu     $a3, 0x0056($sp)
/* 1C448 8002D4E8 AFB10028 */  sw      $s1, 0x0028($sp)
/* 1C44C 8002D4EC AFA30044 */  sw      $v1, 0x0044($sp)
/* 1C450 8002D4F0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 1C454 8002D4F4 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 1C458 8002D4F8 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 1C45C 8002D4FC AFAD001C */  sw      $t5, 0x001C($sp)
/* 1C460 8002D500 AFAE0020 */  sw      $t6, 0x0020($sp)
/* 1C464 8002D504 0C00B460 */  jal     func_8002D180
/* 1C468 8002D508 E7A80024 */  swc1    $f8, 0x0024($sp)
/* 1C46C 8002D50C 10400002 */  beq     $v0, $zero, .L8002D518
/* 1C470 8002D510 8FA30044 */  lw      $v1, 0x0044($sp)
/* 1C474 8002D514 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L8002D518:
/* 1C478 8002D518 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
.L8002D51C:
/* 1C47C 8002D51C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 1C480 8002D520 8FB00034 */  lw      $s0, 0x0034($sp)
/* 1C484 8002D524 8FB10038 */  lw      $s1, 0x0038($sp)
/* 1C488 8002D528 03E00008 */  jr      $ra
/* 1C48C 8002D52C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


glabel func_8002D530
/* 1C490 8002D530 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 1C494 8002D534 AFB40030 */  sw      $s4, 0x0030($sp)
/* 1C498 8002D538 AFB3002C */  sw      $s3, 0x002C($sp)
/* 1C49C 8002D53C AFB10024 */  sw      $s1, 0x0024($sp)
/* 1C4A0 8002D540 AFA5004C */  sw      $a1, 0x004C($sp)
/* 1C4A4 8002D544 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 1C4A8 8002D548 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 1C4AC 8002D54C 00C09825 */  or      $s3, $a2, $zero            ## $s3 = 00000000
/* 1C4B0 8002D550 00E0A025 */  or      $s4, $a3, $zero            ## $s4 = 00000000
/* 1C4B4 8002D554 AFBF0044 */  sw      $ra, 0x0044($sp)
/* 1C4B8 8002D558 AFBE0040 */  sw      $s8, 0x0040($sp)
/* 1C4BC 8002D55C AFB7003C */  sw      $s7, 0x003C($sp)
/* 1C4C0 8002D560 AFB60038 */  sw      $s6, 0x0038($sp)
/* 1C4C4 8002D564 AFB50034 */  sw      $s5, 0x0034($sp)
/* 1C4C8 8002D568 AFB20028 */  sw      $s2, 0x0028($sp)
/* 1C4CC 8002D56C AFB00020 */  sw      $s0, 0x0020($sp)
/* 1C4D0 8002D570 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 1C4D4 8002D574 8E620000 */  lw      $v0, 0x0000($s3)           ## 00000000
/* 1C4D8 8002D578 30BE0007 */  andi    $s8, $a1, 0x0007           ## $s8 = 00000000
/* 1C4DC 8002D57C 001EF340 */  sll     $s8, $s8, 13
/* 1C4E0 8002D580 8C480018 */  lw      $t0, 0x0018($v0)           ## 00000018
/* 1C4E4 8002D584 C7B40058 */  lwc1    $f20, 0x0058($sp)
/* 1C4E8 8002D588 24160006 */  addiu   $s6, $zero, 0x0006         ## $s6 = 00000006
/* 1C4EC 8002D58C 3415FFFF */  ori     $s5, $zero, 0xFFFF         ## $s5 = 0000FFFF
/* 1C4F0 8002D590 8C520010 */  lw      $s2, 0x0010($v0)           ## 00000010
/* 1C4F4 8002D594 0100B825 */  or      $s7, $t0, $zero            ## $s7 = 00000000
.L8002D598:
/* 1C4F8 8002D598 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 1C4FC 8002D59C 00021900 */  sll     $v1, $v0,  4
/* 1C500 8002D5A0 01037021 */  addu    $t6, $t0, $v1
/* 1C504 8002D5A4 95CF0002 */  lhu     $t7, 0x0002($t6)           ## 00000002
/* 1C508 8002D5A8 00778021 */  addu    $s0, $v1, $s7
/* 1C50C 8002D5AC 01FEC024 */  and     $t8, $t7, $s8
/* 1C510 8002D5B0 53000009 */  beql    $t8, $zero, .L8002D5D8
/* 1C514 8002D5B4 960A0002 */  lhu     $t2, 0x0002($s0)           ## 00000002
/* 1C518 8002D5B8 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1C51C 8002D5BC 52A20043 */  beql    $s5, $v0, .L8002D6CC
/* 1C520 8002D5C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1C524 8002D5C4 8E790048 */  lw      $t9, 0x0048($s3)           ## 00000048
/* 1C528 8002D5C8 00024880 */  sll     $t1, $v0,  2
/* 1C52C 8002D5CC 1000FFF2 */  beq     $zero, $zero, .L8002D598
/* 1C530 8002D5D0 03298821 */  addu    $s1, $t9, $t1
/* 1C534 8002D5D4 960A0002 */  lhu     $t2, 0x0002($s0)           ## 00000002
.L8002D5D8:
/* 1C538 8002D5D8 C6840004 */  lwc1    $f4, 0x0004($s4)           ## 00000004
/* 1C53C 8002D5DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1C540 8002D5E0 314B1FFF */  andi    $t3, $t2, 0x1FFF           ## $t3 = 00000000
/* 1C544 8002D5E4 01760019 */  multu   $t3, $s6
/* 1C548 8002D5E8 46142000 */  add.s   $f0, $f4, $f20
/* 1C54C 8002D5EC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 1C550 8002D5F0 00006012 */  mflo    $t4
/* 1C554 8002D5F4 024C6821 */  addu    $t5, $s2, $t4
/* 1C558 8002D5F8 85AE0002 */  lh      $t6, 0x0002($t5)           ## 00000002
/* 1C55C 8002D5FC 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 1C560 8002D600 00000000 */  nop
/* 1C564 8002D604 46803220 */  cvt.s.w $f8, $f6
/* 1C568 8002D608 4608003C */  c.lt.s  $f0, $f8
/* 1C56C 8002D60C 00000000 */  nop
/* 1C570 8002D610 4502001C */  bc1fl   .L8002D684
/* 1C574 8002D614 4407A000 */  mfc1    $a3, $f20
/* 1C578 8002D618 960F0004 */  lhu     $t7, 0x0004($s0)           ## 00000004
/* 1C57C 8002D61C 31F81FFF */  andi    $t8, $t7, 0x1FFF           ## $t8 = 00000000
/* 1C580 8002D620 03160019 */  multu   $t8, $s6
/* 1C584 8002D624 0000C812 */  mflo    $t9
/* 1C588 8002D628 02594821 */  addu    $t1, $s2, $t9
/* 1C58C 8002D62C 852A0002 */  lh      $t2, 0x0002($t1)           ## 00000002
/* 1C590 8002D630 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 1C594 8002D634 00000000 */  nop
/* 1C598 8002D638 46805420 */  cvt.s.w $f16, $f10
/* 1C59C 8002D63C 4610003C */  c.lt.s  $f0, $f16
/* 1C5A0 8002D640 00000000 */  nop
/* 1C5A4 8002D644 4502000F */  bc1fl   .L8002D684
/* 1C5A8 8002D648 4407A000 */  mfc1    $a3, $f20
/* 1C5AC 8002D64C 960B0006 */  lhu     $t3, 0x0006($s0)           ## 00000006
/* 1C5B0 8002D650 000B6080 */  sll     $t4, $t3,  2
/* 1C5B4 8002D654 018B6023 */  subu    $t4, $t4, $t3
/* 1C5B8 8002D658 000C6040 */  sll     $t4, $t4,  1
/* 1C5BC 8002D65C 024C6821 */  addu    $t5, $s2, $t4
/* 1C5C0 8002D660 85AE0002 */  lh      $t6, 0x0002($t5)           ## 00000002
/* 1C5C4 8002D664 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 1C5C8 8002D668 00000000 */  nop
/* 1C5CC 8002D66C 46809120 */  cvt.s.w $f4, $f18
/* 1C5D0 8002D670 4604003C */  c.lt.s  $f0, $f4
/* 1C5D4 8002D674 00000000 */  nop
/* 1C5D8 8002D678 45030014 */  bc1tl   .L8002D6CC
/* 1C5DC 8002D67C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1C5E0 8002D680 4407A000 */  mfc1    $a3, $f20
.L8002D684:
/* 1C5E4 8002D684 0C00AFE3 */  jal     func_8002BF8C
/* 1C5E8 8002D688 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 1C5EC 8002D68C 50400006 */  beql    $v0, $zero, .L8002D6A8
/* 1C5F0 8002D690 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 1C5F4 8002D694 8FAF005C */  lw      $t7, 0x005C($sp)
/* 1C5F8 8002D698 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1C5FC 8002D69C 1000000B */  beq     $zero, $zero, .L8002D6CC
/* 1C600 8002D6A0 ADF00000 */  sw      $s0, 0x0000($t7)           ## 00000000
/* 1C604 8002D6A4 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8002D6A8:
/* 1C608 8002D6A8 52A20008 */  beql    $s5, $v0, .L8002D6CC
/* 1C60C 8002D6AC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1C610 8002D6B0 8E780048 */  lw      $t8, 0x0048($s3)           ## 00000048
/* 1C614 8002D6B4 0002C880 */  sll     $t9, $v0,  2
/* 1C618 8002D6B8 03198821 */  addu    $s1, $t8, $t9
/* 1C61C 8002D6BC 8E690000 */  lw      $t1, 0x0000($s3)           ## 00000000
/* 1C620 8002D6C0 1000FFB5 */  beq     $zero, $zero, .L8002D598
/* 1C624 8002D6C4 8D280018 */  lw      $t0, 0x0018($t1)           ## 00000018
/* 1C628 8002D6C8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002D6CC:
/* 1C62C 8002D6CC 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 1C630 8002D6D0 D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 1C634 8002D6D4 8FB00020 */  lw      $s0, 0x0020($sp)
/* 1C638 8002D6D8 8FB10024 */  lw      $s1, 0x0024($sp)
/* 1C63C 8002D6DC 8FB20028 */  lw      $s2, 0x0028($sp)
/* 1C640 8002D6E0 8FB3002C */  lw      $s3, 0x002C($sp)
/* 1C644 8002D6E4 8FB40030 */  lw      $s4, 0x0030($sp)
/* 1C648 8002D6E8 8FB50034 */  lw      $s5, 0x0034($sp)
/* 1C64C 8002D6EC 8FB60038 */  lw      $s6, 0x0038($sp)
/* 1C650 8002D6F0 8FB7003C */  lw      $s7, 0x003C($sp)
/* 1C654 8002D6F4 8FBE0040 */  lw      $s8, 0x0040($sp)
/* 1C658 8002D6F8 03E00008 */  jr      $ra
/* 1C65C 8002D6FC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


glabel func_8002D700
/* 1C660 8002D700 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1C664 8002D704 AFBF001C */  sw      $ra, 0x001C($sp)
/* 1C668 8002D708 AFA40020 */  sw      $a0, 0x0020($sp)
/* 1C66C 8002D70C AFA50024 */  sw      $a1, 0x0024($sp)
/* 1C670 8002D710 AFA7002C */  sw      $a3, 0x002C($sp)
/* 1C674 8002D714 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 1C678 8002D718 97AF003A */  lhu     $t7, 0x003A($sp)
/* 1C67C 8002D71C 3401FFFF */  ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
/* 1C680 8002D720 95C20000 */  lhu     $v0, 0x0000($t6)           ## 00000000
/* 1C684 8002D724 31F80004 */  andi    $t8, $t7, 0x0004           ## $t8 = 00000000
/* 1C688 8002D728 50410012 */  beql    $v0, $at, .L8002D774
/* 1C68C 8002D72C 8FAA0020 */  lw      $t2, 0x0020($sp)
/* 1C690 8002D730 1700000F */  bne     $t8, $zero, .L8002D770
/* 1C694 8002D734 00024080 */  sll     $t0, $v0,  2
/* 1C698 8002D738 8CD90048 */  lw      $t9, 0x0048($a2)           ## 00000048
/* 1C69C 8002D73C C7A40030 */  lwc1    $f4, 0x0030($sp)
/* 1C6A0 8002D740 8FA90034 */  lw      $t1, 0x0034($sp)
/* 1C6A4 8002D744 AFA60028 */  sw      $a2, 0x0028($sp)
/* 1C6A8 8002D748 97A50026 */  lhu     $a1, 0x0026($sp)
/* 1C6AC 8002D74C 8FA7002C */  lw      $a3, 0x002C($sp)
/* 1C6B0 8002D750 03282021 */  addu    $a0, $t9, $t0
/* 1C6B4 8002D754 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1C6B8 8002D758 0C00B54C */  jal     func_8002D530
/* 1C6BC 8002D75C AFA90014 */  sw      $t1, 0x0014($sp)
/* 1C6C0 8002D760 10400003 */  beq     $v0, $zero, .L8002D770
/* 1C6C4 8002D764 8FA60028 */  lw      $a2, 0x0028($sp)
/* 1C6C8 8002D768 1000002F */  beq     $zero, $zero, .L8002D828
/* 1C6CC 8002D76C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002D770:
/* 1C6D0 8002D770 8FAA0020 */  lw      $t2, 0x0020($sp)
.L8002D774:
/* 1C6D4 8002D774 97AB003A */  lhu     $t3, 0x003A($sp)
/* 1C6D8 8002D778 3401FFFF */  ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
/* 1C6DC 8002D77C 95420002 */  lhu     $v0, 0x0002($t2)           ## 00000002
/* 1C6E0 8002D780 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 1C6E4 8002D784 50410012 */  beql    $v0, $at, .L8002D7D0
/* 1C6E8 8002D788 8FB80020 */  lw      $t8, 0x0020($sp)
/* 1C6EC 8002D78C 1580000F */  bne     $t4, $zero, .L8002D7CC
/* 1C6F0 8002D790 00027080 */  sll     $t6, $v0,  2
/* 1C6F4 8002D794 8CCD0048 */  lw      $t5, 0x0048($a2)           ## 00000048
/* 1C6F8 8002D798 C7A60030 */  lwc1    $f6, 0x0030($sp)
/* 1C6FC 8002D79C 8FAF0034 */  lw      $t7, 0x0034($sp)
/* 1C700 8002D7A0 AFA60028 */  sw      $a2, 0x0028($sp)
/* 1C704 8002D7A4 97A50026 */  lhu     $a1, 0x0026($sp)
/* 1C708 8002D7A8 8FA7002C */  lw      $a3, 0x002C($sp)
/* 1C70C 8002D7AC 01AE2021 */  addu    $a0, $t5, $t6
/* 1C710 8002D7B0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 1C714 8002D7B4 0C00B54C */  jal     func_8002D530
/* 1C718 8002D7B8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1C71C 8002D7BC 10400003 */  beq     $v0, $zero, .L8002D7CC
/* 1C720 8002D7C0 8FA60028 */  lw      $a2, 0x0028($sp)
/* 1C724 8002D7C4 10000018 */  beq     $zero, $zero, .L8002D828
/* 1C728 8002D7C8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002D7CC:
/* 1C72C 8002D7CC 8FB80020 */  lw      $t8, 0x0020($sp)
.L8002D7D0:
/* 1C730 8002D7D0 97B9003A */  lhu     $t9, 0x003A($sp)
/* 1C734 8002D7D4 3401FFFF */  ori     $at, $zero, 0xFFFF         ## $at = 0000FFFF
/* 1C738 8002D7D8 97020004 */  lhu     $v0, 0x0004($t8)           ## 00000004
/* 1C73C 8002D7DC 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 1C740 8002D7E0 50410011 */  beql    $v0, $at, .L8002D828
/* 1C744 8002D7E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1C748 8002D7E8 1500000E */  bne     $t0, $zero, .L8002D824
/* 1C74C 8002D7EC 00025080 */  sll     $t2, $v0,  2
/* 1C750 8002D7F0 8CC90048 */  lw      $t1, 0x0048($a2)           ## 00000048
/* 1C754 8002D7F4 C7A80030 */  lwc1    $f8, 0x0030($sp)
/* 1C758 8002D7F8 8FAB0034 */  lw      $t3, 0x0034($sp)
/* 1C75C 8002D7FC 97A50026 */  lhu     $a1, 0x0026($sp)
/* 1C760 8002D800 8FA7002C */  lw      $a3, 0x002C($sp)
/* 1C764 8002D804 012A2021 */  addu    $a0, $t1, $t2
/* 1C768 8002D808 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 1C76C 8002D80C 0C00B54C */  jal     func_8002D530
/* 1C770 8002D810 AFAB0014 */  sw      $t3, 0x0014($sp)
/* 1C774 8002D814 50400004 */  beql    $v0, $zero, .L8002D828
/* 1C778 8002D818 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1C77C 8002D81C 10000002 */  beq     $zero, $zero, .L8002D828
/* 1C780 8002D820 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002D824:
/* 1C784 8002D824 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002D828:
/* 1C788 8002D828 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1C78C 8002D82C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1C790 8002D830 03E00008 */  jr      $ra
/* 1C794 8002D834 00000000 */  nop


glabel func_8002D838
/* 1C798 8002D838 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1C79C 8002D83C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1C7A0 8002D840 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1C7A4 8002D844 AFA60030 */  sw      $a2, 0x0030($sp)
/* 1C7A8 8002D848 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 1C7AC 8002D84C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1C7B0 8002D850 8FA50030 */  lw      $a1, 0x0030($sp)
/* 1C7B4 8002D854 27A6001C */  addiu   $a2, $sp, 0x001C           ## $a2 = FFFFFFF4
/* 1C7B8 8002D858 0C00B66E */  jal     func_8002D9B8
/* 1C7BC 8002D85C AFA70028 */  sw      $a3, 0x0028($sp)
/* 1C7C0 8002D860 8FA70028 */  lw      $a3, 0x0028($sp)
/* 1C7C4 8002D864 8FAE0024 */  lw      $t6, 0x0024($sp)
/* 1C7C8 8002D868 24040006 */  addiu   $a0, $zero, 0x0006         ## $a0 = 00000006
/* 1C7CC 8002D86C 8CE3001C */  lw      $v1, 0x001C($a3)           ## 0000001C
/* 1C7D0 8002D870 8CF80020 */  lw      $t8, 0x0020($a3)           ## 00000020
/* 1C7D4 8002D874 8FAB001C */  lw      $t3, 0x001C($sp)
/* 1C7D8 8002D878 01C30019 */  multu   $t6, $v1
/* 1C7DC 8002D87C 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 1C7E0 8002D880 8FA9002C */  lw      $t1, 0x002C($sp)
/* 1C7E4 8002D884 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1C7E8 8002D888 00007812 */  mflo    $t7
/* 1C7EC 8002D88C 00000000 */  nop
/* 1C7F0 8002D890 00000000 */  nop
/* 1C7F4 8002D894 01F80019 */  multu   $t7, $t8
/* 1C7F8 8002D898 0000C812 */  mflo    $t9
/* 1C7FC 8002D89C 00000000 */  nop
/* 1C800 8002D8A0 00000000 */  nop
/* 1C804 8002D8A4 03240019 */  multu   $t9, $a0
/* 1C808 8002D8A8 00004012 */  mflo    $t0
/* 1C80C 8002D8AC 01095021 */  addu    $t2, $t0, $t1
/* 1C810 8002D8B0 00000000 */  nop
/* 1C814 8002D8B4 01640019 */  multu   $t3, $a0
/* 1C818 8002D8B8 00006012 */  mflo    $t4
/* 1C81C 8002D8BC 014C6821 */  addu    $t5, $t2, $t4
/* 1C820 8002D8C0 00000000 */  nop
/* 1C824 8002D8C4 01C30019 */  multu   $t6, $v1
/* 1C828 8002D8C8 00007812 */  mflo    $t7
/* 1C82C 8002D8CC 00000000 */  nop
/* 1C830 8002D8D0 00000000 */  nop
/* 1C834 8002D8D4 01E40019 */  multu   $t7, $a0
/* 1C838 8002D8D8 0000C012 */  mflo    $t8
/* 1C83C 8002D8DC 01B81021 */  addu    $v0, $t5, $t8
/* 1C840 8002D8E0 00000000 */  nop
/* 1C844 8002D8E4 03E00008 */  jr      $ra
/* 1C848 8002D8E8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


glabel func_8002D8EC
/* 1C84C 8002D8EC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1C850 8002D8F0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1C854 8002D8F4 AFA40028 */  sw      $a0, 0x0028($sp)
/* 1C858 8002D8F8 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1C85C 8002D8FC AFA60030 */  sw      $a2, 0x0030($sp)
/* 1C860 8002D900 8FA40028 */  lw      $a0, 0x0028($sp)
/* 1C864 8002D904 0C00BC2F */  jal     func_8002F0BC
/* 1C868 8002D908 8FA50030 */  lw      $a1, 0x0030($sp)
/* 1C86C 8002D90C 14400003 */  bne     $v0, $zero, .L8002D91C
/* 1C870 8002D910 8FA40028 */  lw      $a0, 0x0028($sp)
/* 1C874 8002D914 10000024 */  beq     $zero, $zero, .L8002D9A8
/* 1C878 8002D918 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002D91C:
/* 1C87C 8002D91C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 1C880 8002D920 0C00B66E */  jal     func_8002D9B8
/* 1C884 8002D924 27A6001C */  addiu   $a2, $sp, 0x001C           ## $a2 = FFFFFFF4
/* 1C888 8002D928 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 1C88C 8002D92C 8FAF0024 */  lw      $t7, 0x0024($sp)
/* 1C890 8002D930 24040006 */  addiu   $a0, $zero, 0x0006         ## $a0 = 00000006
/* 1C894 8002D934 8DC3001C */  lw      $v1, 0x001C($t6)           ## 0000001C
/* 1C898 8002D938 8DD90020 */  lw      $t9, 0x0020($t6)           ## 00000020
/* 1C89C 8002D93C 8FAC001C */  lw      $t4, 0x001C($sp)
/* 1C8A0 8002D940 01E30019 */  multu   $t7, $v1
/* 1C8A4 8002D944 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 1C8A8 8002D948 8FAA002C */  lw      $t2, 0x002C($sp)
/* 1C8AC 8002D94C 0000C012 */  mflo    $t8
/* 1C8B0 8002D950 00000000 */  nop
/* 1C8B4 8002D954 00000000 */  nop
/* 1C8B8 8002D958 03190019 */  multu   $t8, $t9
/* 1C8BC 8002D95C 00004012 */  mflo    $t0
/* 1C8C0 8002D960 00000000 */  nop
/* 1C8C4 8002D964 00000000 */  nop
/* 1C8C8 8002D968 01040019 */  multu   $t0, $a0
/* 1C8CC 8002D96C 00004812 */  mflo    $t1
/* 1C8D0 8002D970 012A5821 */  addu    $t3, $t1, $t2
/* 1C8D4 8002D974 00000000 */  nop
/* 1C8D8 8002D978 01840019 */  multu   $t4, $a0
/* 1C8DC 8002D97C 00006812 */  mflo    $t5
/* 1C8E0 8002D980 016D7821 */  addu    $t7, $t3, $t5
/* 1C8E4 8002D984 00000000 */  nop
/* 1C8E8 8002D988 01C30019 */  multu   $t6, $v1
/* 1C8EC 8002D98C 0000C012 */  mflo    $t8
/* 1C8F0 8002D990 00000000 */  nop
/* 1C8F4 8002D994 00000000 */  nop
/* 1C8F8 8002D998 03040019 */  multu   $t8, $a0
/* 1C8FC 8002D99C 0000C812 */  mflo    $t9
/* 1C900 8002D9A0 01F91021 */  addu    $v0, $t7, $t9
/* 1C904 8002D9A4 00000000 */  nop
.L8002D9A8:
/* 1C908 8002D9A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1C90C 8002D9AC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1C910 8002D9B0 03E00008 */  jr      $ra
/* 1C914 8002D9B4 00000000 */  nop


glabel func_8002D9B8
/* 1C918 8002D9B8 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 1C91C 8002D9BC C4860004 */  lwc1    $f6, 0x0004($a0)           ## 00000004
/* 1C920 8002D9C0 C48A0034 */  lwc1    $f10, 0x0034($a0)          ## 00000034
/* 1C924 8002D9C4 46062201 */  sub.s   $f8, $f4, $f6
/* 1C928 8002D9C8 460A4402 */  mul.s   $f16, $f8, $f10
/* 1C92C 8002D9CC 4600848D */  trunc.w.s $f18, $f16
/* 1C930 8002D9D0 44029000 */  mfc1    $v0, $f18
/* 1C934 8002D9D4 00000000 */  nop
/* 1C938 8002D9D8 ACC20000 */  sw      $v0, 0x0000($a2)           ## 00000000
/* 1C93C 8002D9DC C4860008 */  lwc1    $f6, 0x0008($a0)           ## 00000008
/* 1C940 8002D9E0 C4A40004 */  lwc1    $f4, 0x0004($a1)           ## 00000004
/* 1C944 8002D9E4 C48A0038 */  lwc1    $f10, 0x0038($a0)          ## 00000038
/* 1C948 8002D9E8 46062201 */  sub.s   $f8, $f4, $f6
/* 1C94C 8002D9EC 460A4402 */  mul.s   $f16, $f8, $f10
/* 1C950 8002D9F0 4600848D */  trunc.w.s $f18, $f16
/* 1C954 8002D9F4 44199000 */  mfc1    $t9, $f18
/* 1C958 8002D9F8 00000000 */  nop
/* 1C95C 8002D9FC ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
/* 1C960 8002DA00 C486000C */  lwc1    $f6, 0x000C($a0)           ## 0000000C
/* 1C964 8002DA04 C4A40008 */  lwc1    $f4, 0x0008($a1)           ## 00000008
/* 1C968 8002DA08 C48A003C */  lwc1    $f10, 0x003C($a0)          ## 0000003C
/* 1C96C 8002DA0C 46062201 */  sub.s   $f8, $f4, $f6
/* 1C970 8002DA10 460A4402 */  mul.s   $f16, $f8, $f10
/* 1C974 8002DA14 4600848D */  trunc.w.s $f18, $f16
/* 1C978 8002DA18 44099000 */  mfc1    $t1, $f18
/* 1C97C 8002DA1C 04410003 */  bgez    $v0, .L8002DA2C
/* 1C980 8002DA20 ACC90008 */  sw      $t1, 0x0008($a2)           ## 00000008
/* 1C984 8002DA24 10000006 */  beq     $zero, $zero, .L8002DA40
/* 1C988 8002DA28 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L8002DA2C:
/* 1C98C 8002DA2C 8C83001C */  lw      $v1, 0x001C($a0)           ## 0000001C
/* 1C990 8002DA30 0043082A */  slt     $at, $v0, $v1
/* 1C994 8002DA34 14200002 */  bne     $at, $zero, .L8002DA40
/* 1C998 8002DA38 246AFFFF */  addiu   $t2, $v1, 0xFFFF           ## $t2 = FFFFFFFF
/* 1C99C 8002DA3C ACCA0000 */  sw      $t2, 0x0000($a2)           ## 00000000
.L8002DA40:
/* 1C9A0 8002DA40 8CC20004 */  lw      $v0, 0x0004($a2)           ## 00000004
/* 1C9A4 8002DA44 04430004 */  bgezl   $v0, .L8002DA58
/* 1C9A8 8002DA48 8C830020 */  lw      $v1, 0x0020($a0)           ## 00000020
/* 1C9AC 8002DA4C 10000006 */  beq     $zero, $zero, .L8002DA68
/* 1C9B0 8002DA50 ACC00004 */  sw      $zero, 0x0004($a2)         ## 00000004
/* 1C9B4 8002DA54 8C830020 */  lw      $v1, 0x0020($a0)           ## 00000020
.L8002DA58:
/* 1C9B8 8002DA58 0043082A */  slt     $at, $v0, $v1
/* 1C9BC 8002DA5C 14200002 */  bne     $at, $zero, .L8002DA68
/* 1C9C0 8002DA60 246BFFFF */  addiu   $t3, $v1, 0xFFFF           ## $t3 = FFFFFFFF
/* 1C9C4 8002DA64 ACCB0004 */  sw      $t3, 0x0004($a2)           ## 00000004
.L8002DA68:
/* 1C9C8 8002DA68 8CC20008 */  lw      $v0, 0x0008($a2)           ## 00000008
/* 1C9CC 8002DA6C 04430004 */  bgezl   $v0, .L8002DA80
/* 1C9D0 8002DA70 8C830024 */  lw      $v1, 0x0024($a0)           ## 00000024
/* 1C9D4 8002DA74 03E00008 */  jr      $ra
/* 1C9D8 8002DA78 ACC00008 */  sw      $zero, 0x0008($a2)         ## 00000008
.L8002DA7C:
/* 1C9DC 8002DA7C 8C830024 */  lw      $v1, 0x0024($a0)           ## 00000024
.L8002DA80:
/* 1C9E0 8002DA80 0043082A */  slt     $at, $v0, $v1
/* 1C9E4 8002DA84 14200002 */  bne     $at, $zero, .L8002DA90
/* 1C9E8 8002DA88 246CFFFF */  addiu   $t4, $v1, 0xFFFF           ## $t4 = FFFFFFFF
/* 1C9EC 8002DA8C ACCC0008 */  sw      $t4, 0x0008($a2)           ## 00000008
.L8002DA90:
/* 1C9F0 8002DA90 03E00008 */  jr      $ra
/* 1C9F4 8002DA94 00000000 */  nop


glabel func_8002DA98
/* 1C9F8 8002DA98 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 1C9FC 8002DA9C C4860004 */  lwc1    $f6, 0x0004($a0)           ## 00000004
/* 1CA00 8002DAA0 C4A80004 */  lwc1    $f8, 0x0004($a1)           ## 00000004
/* 1CA04 8002DAA4 C48A0008 */  lwc1    $f10, 0x0008($a0)          ## 00000008
/* 1CA08 8002DAA8 46062001 */  sub.s   $f0, $f4, $f6
/* 1CA0C 8002DAAC C4840034 */  lwc1    $f4, 0x0034($a0)           ## 00000034
/* 1CA10 8002DAB0 C4B00008 */  lwc1    $f16, 0x0008($a1)          ## 00000008
/* 1CA14 8002DAB4 460A4081 */  sub.s   $f2, $f8, $f10
/* 1CA18 8002DAB8 46002182 */  mul.s   $f6, $f4, $f0
/* 1CA1C 8002DABC C492000C */  lwc1    $f18, 0x000C($a0)          ## 0000000C
/* 1CA20 8002DAC0 46128301 */  sub.s   $f12, $f16, $f18
/* 1CA24 8002DAC4 4600320D */  trunc.w.s $f8, $f6
/* 1CA28 8002DAC8 440F4000 */  mfc1    $t7, $f8
/* 1CA2C 8002DACC 00000000 */  nop
/* 1CA30 8002DAD0 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000000
/* 1CA34 8002DAD4 C48A0038 */  lwc1    $f10, 0x0038($a0)          ## 00000038
/* 1CA38 8002DAD8 46025402 */  mul.s   $f16, $f10, $f2
/* 1CA3C 8002DADC 4600028D */  trunc.w.s $f10, $f0
/* 1CA40 8002DAE0 440C5000 */  mfc1    $t4, $f10
/* 1CA44 8002DAE4 4600848D */  trunc.w.s $f18, $f16
/* 1CA48 8002DAE8 44199000 */  mfc1    $t9, $f18
/* 1CA4C 8002DAEC 00000000 */  nop
/* 1CA50 8002DAF0 ACF90000 */  sw      $t9, 0x0000($a3)           ## 00000000
/* 1CA54 8002DAF4 C484003C */  lwc1    $f4, 0x003C($a0)           ## 0000003C
/* 1CA58 8002DAF8 8FAA0010 */  lw      $t2, 0x0010($sp)
/* 1CA5C 8002DAFC 460C2182 */  mul.s   $f6, $f4, $f12
/* 1CA60 8002DB00 4600110D */  trunc.w.s $f4, $f2
/* 1CA64 8002DB04 4600320D */  trunc.w.s $f8, $f6
/* 1CA68 8002DB08 44094000 */  mfc1    $t1, $f8
/* 1CA6C 8002DB0C 00000000 */  nop
/* 1CA70 8002DB10 AD490000 */  sw      $t1, 0x0000($t2)           ## 00000000
/* 1CA74 8002DB14 C4900028 */  lwc1    $f16, 0x0028($a0)          ## 00000028
/* 1CA78 8002DB18 4600848D */  trunc.w.s $f18, $f16
/* 1CA7C 8002DB1C 440E9000 */  mfc1    $t6, $f18
/* 1CA80 8002DB20 00000000 */  nop
/* 1CA84 8002DB24 018E001A */  div     $zero, $t4, $t6
/* 1CA88 8002DB28 15C00002 */  bne     $t6, $zero, .L8002DB34
/* 1CA8C 8002DB2C 00000000 */  nop
/* 1CA90 8002DB30 0007000D */  break 7
.L8002DB34:
/* 1CA94 8002DB34 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1CA98 8002DB38 15C10004 */  bne     $t6, $at, .L8002DB4C
/* 1CA9C 8002DB3C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 1CAA0 8002DB40 15810002 */  bne     $t4, $at, .L8002DB4C
/* 1CAA4 8002DB44 00000000 */  nop
/* 1CAA8 8002DB48 0006000D */  break 6
.L8002DB4C:
/* 1CAAC 8002DB4C 00007810 */  mfhi    $t7
/* 1CAB0 8002DB50 29E10032 */  slti    $at, $t7, 0x0032
/* 1CAB4 8002DB54 50200007 */  beql    $at, $zero, .L8002DB74
/* 1CAB8 8002DB58 C486002C */  lwc1    $f6, 0x002C($a0)           ## 0000002C
/* 1CABC 8002DB5C 8CC20000 */  lw      $v0, 0x0000($a2)           ## 00000000
/* 1CAC0 8002DB60 58400004 */  blezl   $v0, .L8002DB74
/* 1CAC4 8002DB64 C486002C */  lwc1    $f6, 0x002C($a0)           ## 0000002C
/* 1CAC8 8002DB68 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 1CACC 8002DB6C ACD80000 */  sw      $t8, 0x0000($a2)           ## 00000000
/* 1CAD0 8002DB70 C486002C */  lwc1    $f6, 0x002C($a0)           ## 0000002C
.L8002DB74:
/* 1CAD4 8002DB74 44082000 */  mfc1    $t0, $f4
/* 1CAD8 8002DB78 4600320D */  trunc.w.s $f8, $f6
/* 1CADC 8002DB7C 440A4000 */  mfc1    $t2, $f8
/* 1CAE0 8002DB80 00000000 */  nop
/* 1CAE4 8002DB84 010A001A */  div     $zero, $t0, $t2
/* 1CAE8 8002DB88 15400002 */  bne     $t2, $zero, .L8002DB94
/* 1CAEC 8002DB8C 00000000 */  nop
/* 1CAF0 8002DB90 0007000D */  break 7
.L8002DB94:
/* 1CAF4 8002DB94 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1CAF8 8002DB98 15410004 */  bne     $t2, $at, .L8002DBAC
/* 1CAFC 8002DB9C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 1CB00 8002DBA0 15010002 */  bne     $t0, $at, .L8002DBAC
/* 1CB04 8002DBA4 00000000 */  nop
/* 1CB08 8002DBA8 0006000D */  break 6
.L8002DBAC:
/* 1CB0C 8002DBAC 00005810 */  mfhi    $t3
/* 1CB10 8002DBB0 29610032 */  slti    $at, $t3, 0x0032
/* 1CB14 8002DBB4 50200007 */  beql    $at, $zero, .L8002DBD4
/* 1CB18 8002DBB8 C4900030 */  lwc1    $f16, 0x0030($a0)          ## 00000030
/* 1CB1C 8002DBBC 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 1CB20 8002DBC0 58400004 */  blezl   $v0, .L8002DBD4
/* 1CB24 8002DBC4 C4900030 */  lwc1    $f16, 0x0030($a0)          ## 00000030
/* 1CB28 8002DBC8 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 1CB2C 8002DBCC ACED0000 */  sw      $t5, 0x0000($a3)           ## 00000000
/* 1CB30 8002DBD0 C4900030 */  lwc1    $f16, 0x0030($a0)          ## 00000030
.L8002DBD4:
/* 1CB34 8002DBD4 4600628D */  trunc.w.s $f10, $f12
/* 1CB38 8002DBD8 8FA90010 */  lw      $t1, 0x0010($sp)
/* 1CB3C 8002DBDC 4600848D */  trunc.w.s $f18, $f16
/* 1CB40 8002DBE0 440E5000 */  mfc1    $t6, $f10
/* 1CB44 8002DBE4 44189000 */  mfc1    $t8, $f18
/* 1CB48 8002DBE8 00000000 */  nop
/* 1CB4C 8002DBEC 01D8001A */  div     $zero, $t6, $t8
/* 1CB50 8002DBF0 17000002 */  bne     $t8, $zero, .L8002DBFC
/* 1CB54 8002DBF4 00000000 */  nop
/* 1CB58 8002DBF8 0007000D */  break 7
.L8002DBFC:
/* 1CB5C 8002DBFC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1CB60 8002DC00 17010004 */  bne     $t8, $at, .L8002DC14
/* 1CB64 8002DC04 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 1CB68 8002DC08 15C10002 */  bne     $t6, $at, .L8002DC14
/* 1CB6C 8002DC0C 00000000 */  nop
/* 1CB70 8002DC10 0006000D */  break 6
.L8002DC14:
/* 1CB74 8002DC14 0000C810 */  mfhi    $t9
/* 1CB78 8002DC18 2B210032 */  slti    $at, $t9, 0x0032
/* 1CB7C 8002DC1C 10200005 */  beq     $at, $zero, .L8002DC34
/* 1CB80 8002DC20 00000000 */  nop
/* 1CB84 8002DC24 8D220000 */  lw      $v0, 0x0000($t1)           ## 00000000
/* 1CB88 8002DC28 18400002 */  blez    $v0, .L8002DC34
/* 1CB8C 8002DC2C 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 1CB90 8002DC30 AD280000 */  sw      $t0, 0x0000($t1)           ## 00000000
.L8002DC34:
/* 1CB94 8002DC34 03E00008 */  jr      $ra
/* 1CB98 8002DC38 00000000 */  nop


glabel func_8002DC3C
/* 1CB9C 8002DC3C C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 1CBA0 8002DC40 C4860004 */  lwc1    $f6, 0x0004($a0)           ## 00000004
/* 1CBA4 8002DC44 C4A80004 */  lwc1    $f8, 0x0004($a1)           ## 00000004
/* 1CBA8 8002DC48 C48A0008 */  lwc1    $f10, 0x0008($a0)          ## 00000008
/* 1CBAC 8002DC4C 46062001 */  sub.s   $f0, $f4, $f6
/* 1CBB0 8002DC50 C4840034 */  lwc1    $f4, 0x0034($a0)           ## 00000034
/* 1CBB4 8002DC54 C4B00008 */  lwc1    $f16, 0x0008($a1)          ## 00000008
/* 1CBB8 8002DC58 460A4081 */  sub.s   $f2, $f8, $f10
/* 1CBBC 8002DC5C 46002182 */  mul.s   $f6, $f4, $f0
/* 1CBC0 8002DC60 C492000C */  lwc1    $f18, 0x000C($a0)          ## 0000000C
/* 1CBC4 8002DC64 46128301 */  sub.s   $f12, $f16, $f18
/* 1CBC8 8002DC68 4600320D */  trunc.w.s $f8, $f6
/* 1CBCC 8002DC6C 440F4000 */  mfc1    $t7, $f8
/* 1CBD0 8002DC70 00000000 */  nop
/* 1CBD4 8002DC74 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000000
/* 1CBD8 8002DC78 C48A0038 */  lwc1    $f10, 0x0038($a0)          ## 00000038
/* 1CBDC 8002DC7C 46025402 */  mul.s   $f16, $f10, $f2
/* 1CBE0 8002DC80 4600848D */  trunc.w.s $f18, $f16
/* 1CBE4 8002DC84 44199000 */  mfc1    $t9, $f18
/* 1CBE8 8002DC88 4600048D */  trunc.w.s $f18, $f0
/* 1CBEC 8002DC8C ACF90000 */  sw      $t9, 0x0000($a3)           ## 00000000
/* 1CBF0 8002DC90 C484003C */  lwc1    $f4, 0x003C($a0)           ## 0000003C
/* 1CBF4 8002DC94 8FAA0010 */  lw      $t2, 0x0010($sp)
/* 1CBF8 8002DC98 440D9000 */  mfc1    $t5, $f18
/* 1CBFC 8002DC9C 460C2182 */  mul.s   $f6, $f4, $f12
/* 1CC00 8002DCA0 4600648D */  trunc.w.s $f18, $f12
/* 1CC04 8002DCA4 4600320D */  trunc.w.s $f8, $f6
/* 1CC08 8002DCA8 44094000 */  mfc1    $t1, $f8
/* 1CC0C 8002DCAC 4600120D */  trunc.w.s $f8, $f2
/* 1CC10 8002DCB0 AD490000 */  sw      $t1, 0x0000($t2)           ## 00000000
/* 1CC14 8002DCB4 C48A0028 */  lwc1    $f10, 0x0028($a0)          ## 00000028
/* 1CC18 8002DCB8 4600540D */  trunc.w.s $f16, $f10
/* 1CC1C 8002DCBC 44028000 */  mfc1    $v0, $f16
/* 1CC20 8002DCC0 00000000 */  nop
/* 1CC24 8002DCC4 01A2001A */  div     $zero, $t5, $v0
/* 1CC28 8002DCC8 14400002 */  bne     $v0, $zero, .L8002DCD4
/* 1CC2C 8002DCCC 00000000 */  nop
/* 1CC30 8002DCD0 0007000D */  break 7
.L8002DCD4:
/* 1CC34 8002DCD4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1CC38 8002DCD8 14410004 */  bne     $v0, $at, .L8002DCEC
/* 1CC3C 8002DCDC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 1CC40 8002DCE0 15A10002 */  bne     $t5, $at, .L8002DCEC
/* 1CC44 8002DCE4 00000000 */  nop
/* 1CC48 8002DCE8 0006000D */  break 6
.L8002DCEC:
/* 1CC4C 8002DCEC 00007010 */  mfhi    $t6
/* 1CC50 8002DCF0 244FFFCE */  addiu   $t7, $v0, 0xFFCE           ## $t7 = FFFFFFCE
/* 1CC54 8002DCF4 01EE082A */  slt     $at, $t7, $t6
/* 1CC58 8002DCF8 5020000A */  beql    $at, $zero, .L8002DD24
/* 1CC5C 8002DCFC C484002C */  lwc1    $f4, 0x002C($a0)           ## 0000002C
/* 1CC60 8002DD00 8C98001C */  lw      $t8, 0x001C($a0)           ## 0000001C
/* 1CC64 8002DD04 8CC20000 */  lw      $v0, 0x0000($a2)           ## 00000000
/* 1CC68 8002DD08 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 1CC6C 8002DD0C 0059082A */  slt     $at, $v0, $t9
/* 1CC70 8002DD10 50200004 */  beql    $at, $zero, .L8002DD24
/* 1CC74 8002DD14 C484002C */  lwc1    $f4, 0x002C($a0)           ## 0000002C
/* 1CC78 8002DD18 24480001 */  addiu   $t0, $v0, 0x0001           ## $t0 = 00000001
/* 1CC7C 8002DD1C ACC80000 */  sw      $t0, 0x0000($a2)           ## 00000000
/* 1CC80 8002DD20 C484002C */  lwc1    $f4, 0x002C($a0)           ## 0000002C
.L8002DD24:
/* 1CC84 8002DD24 440B4000 */  mfc1    $t3, $f8
/* 1CC88 8002DD28 4600218D */  trunc.w.s $f6, $f4
/* 1CC8C 8002DD2C 44023000 */  mfc1    $v0, $f6
/* 1CC90 8002DD30 00000000 */  nop
/* 1CC94 8002DD34 0162001A */  div     $zero, $t3, $v0
/* 1CC98 8002DD38 14400002 */  bne     $v0, $zero, .L8002DD44
/* 1CC9C 8002DD3C 00000000 */  nop
/* 1CCA0 8002DD40 0007000D */  break 7
.L8002DD44:
/* 1CCA4 8002DD44 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1CCA8 8002DD48 14410004 */  bne     $v0, $at, .L8002DD5C
/* 1CCAC 8002DD4C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 1CCB0 8002DD50 15610002 */  bne     $t3, $at, .L8002DD5C
/* 1CCB4 8002DD54 00000000 */  nop
/* 1CCB8 8002DD58 0006000D */  break 6
.L8002DD5C:
/* 1CCBC 8002DD5C 00006010 */  mfhi    $t4
/* 1CCC0 8002DD60 244DFFCE */  addiu   $t5, $v0, 0xFFCE           ## $t5 = FFFFFFCE
/* 1CCC4 8002DD64 01AC082A */  slt     $at, $t5, $t4
/* 1CCC8 8002DD68 5020000A */  beql    $at, $zero, .L8002DD94
/* 1CCCC 8002DD6C C48A0030 */  lwc1    $f10, 0x0030($a0)          ## 00000030
/* 1CCD0 8002DD70 8C8E0020 */  lw      $t6, 0x0020($a0)           ## 00000020
/* 1CCD4 8002DD74 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 1CCD8 8002DD78 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 1CCDC 8002DD7C 004F082A */  slt     $at, $v0, $t7
/* 1CCE0 8002DD80 50200004 */  beql    $at, $zero, .L8002DD94
/* 1CCE4 8002DD84 C48A0030 */  lwc1    $f10, 0x0030($a0)          ## 00000030
/* 1CCE8 8002DD88 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 1CCEC 8002DD8C ACF80000 */  sw      $t8, 0x0000($a3)           ## 00000000
/* 1CCF0 8002DD90 C48A0030 */  lwc1    $f10, 0x0030($a0)          ## 00000030
.L8002DD94:
/* 1CCF4 8002DD94 44099000 */  mfc1    $t1, $f18
/* 1CCF8 8002DD98 8FAC0010 */  lw      $t4, 0x0010($sp)
/* 1CCFC 8002DD9C 4600540D */  trunc.w.s $f16, $f10
/* 1CD00 8002DDA0 44028000 */  mfc1    $v0, $f16
/* 1CD04 8002DDA4 00000000 */  nop
/* 1CD08 8002DDA8 0122001A */  div     $zero, $t1, $v0
/* 1CD0C 8002DDAC 14400002 */  bne     $v0, $zero, .L8002DDB8
/* 1CD10 8002DDB0 00000000 */  nop
/* 1CD14 8002DDB4 0007000D */  break 7
.L8002DDB8:
/* 1CD18 8002DDB8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1CD1C 8002DDBC 14410004 */  bne     $v0, $at, .L8002DDD0
/* 1CD20 8002DDC0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 1CD24 8002DDC4 15210002 */  bne     $t1, $at, .L8002DDD0
/* 1CD28 8002DDC8 00000000 */  nop
/* 1CD2C 8002DDCC 0006000D */  break 6
.L8002DDD0:
/* 1CD30 8002DDD0 00005010 */  mfhi    $t2
/* 1CD34 8002DDD4 244BFFCE */  addiu   $t3, $v0, 0xFFCE           ## $t3 = FFFFFFCE
/* 1CD38 8002DDD8 016A082A */  slt     $at, $t3, $t2
/* 1CD3C 8002DDDC 10200008 */  beq     $at, $zero, .L8002DE00
/* 1CD40 8002DDE0 00000000 */  nop
/* 1CD44 8002DDE4 8C8D0024 */  lw      $t5, 0x0024($a0)           ## 00000024
/* 1CD48 8002DDE8 8D820000 */  lw      $v0, 0x0000($t4)           ## 00000000
/* 1CD4C 8002DDEC 25AEFFFF */  addiu   $t6, $t5, 0xFFFF           ## $t6 = FFFFFFCD
/* 1CD50 8002DDF0 004E082A */  slt     $at, $v0, $t6
/* 1CD54 8002DDF4 10200002 */  beq     $at, $zero, .L8002DE00
/* 1CD58 8002DDF8 244F0001 */  addiu   $t7, $v0, 0x0001           ## $t7 = 00000001
/* 1CD5C 8002DDFC AD8F0000 */  sw      $t7, 0x0000($t4)           ## 00000000
.L8002DE00:
/* 1CD60 8002DE00 03E00008 */  jr      $ra
/* 1CD64 8002DE04 00000000 */  nop


glabel func_8002DE08
/* 1CD68 8002DE08 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 1CD6C 8002DE0C AFB00020 */  sw      $s0, 0x0020($sp)
/* 1CD70 8002DE10 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1CD74 8002DE14 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1CD78 8002DE18 AFA40068 */  sw      $a0, 0x0068($sp)
/* 1CD7C 8002DE1C AFA70074 */  sw      $a3, 0x0074($sp)
/* 1CD80 8002DE20 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 1CD84 8002DE24 87AE008E */  lh      $t6, 0x008E($sp)
/* 1CD88 8002DE28 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFE4
/* 1CD8C 8002DE2C 000E7900 */  sll     $t7, $t6,  4
/* 1CD90 8002DE30 00CF4021 */  addu    $t0, $a2, $t7
/* 1CD94 8002DE34 95030002 */  lhu     $v1, 0x0002($t0)           ## 00000002
/* 1CD98 8002DE38 AFA80034 */  sw      $t0, 0x0034($sp)
/* 1CD9C 8002DE3C 30631FFF */  andi    $v1, $v1, 0x1FFF           ## $v1 = 00000000
/* 1CDA0 8002DE40 00031C00 */  sll     $v1, $v1, 16
/* 1CDA4 8002DE44 00031C03 */  sra     $v1, $v1, 16
/* 1CDA8 8002DE48 00690019 */  multu   $v1, $t1
/* 1CDAC 8002DE4C 0000C012 */  mflo    $t8
/* 1CDB0 8002DE50 03102821 */  addu    $a1, $t8, $s0
/* 1CDB4 8002DE54 0C018F33 */  jal     Math_Vec3s_ToVec3f              ## Vec3f_CopyVec3s
/* 1CDB8 8002DE58 00000000 */  nop
/* 1CDBC 8002DE5C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFF0
/* 1CDC0 8002DE60 0C018F2B */  jal     Math_Vec3f_Copy              ## Vec3f_Copy
/* 1CDC4 8002DE64 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFE4
/* 1CDC8 8002DE68 8FA80034 */  lw      $t0, 0x0034($sp)
/* 1CDCC 8002DE6C 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 1CDD0 8002DE70 25040004 */  addiu   $a0, $t0, 0x0004           ## $a0 = 00000004
/* 1CDD4 8002DE74 25050008 */  addiu   $a1, $t0, 0x0008           ## $a1 = 00000008
/* 1CDD8 8002DE78 0085082B */  sltu    $at, $a0, $a1
/* 1CDDC 8002DE7C 5020003C */  beql    $at, $zero, .L8002DF70
/* 1CDE0 8002DE80 8FAD007C */  lw      $t5, 0x007C($sp)
/* 1CDE4 8002DE84 94830000 */  lhu     $v1, 0x0000($a0)           ## 00000004
.L8002DE88:
/* 1CDE8 8002DE88 C7AA0058 */  lwc1    $f10, 0x0058($sp)
/* 1CDEC 8002DE8C 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000006
/* 1CDF0 8002DE90 30631FFF */  andi    $v1, $v1, 0x1FFF           ## $v1 = 00000000
/* 1CDF4 8002DE94 00031C00 */  sll     $v1, $v1, 16
/* 1CDF8 8002DE98 00031C03 */  sra     $v1, $v1, 16
/* 1CDFC 8002DE9C 00690019 */  multu   $v1, $t1
/* 1CE00 8002DEA0 0085082B */  sltu    $at, $a0, $a1
/* 1CE04 8002DEA4 C7B0004C */  lwc1    $f16, 0x004C($sp)
/* 1CE08 8002DEA8 0000C812 */  mflo    $t9
/* 1CE0C 8002DEAC 03301021 */  addu    $v0, $t9, $s0
/* 1CE10 8002DEB0 844A0000 */  lh      $t2, 0x0000($v0)           ## 00000000
/* 1CE14 8002DEB4 844B0002 */  lh      $t3, 0x0002($v0)           ## 00000002
/* 1CE18 8002DEB8 844C0004 */  lh      $t4, 0x0004($v0)           ## 00000004
/* 1CE1C 8002DEBC 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 1CE20 8002DEC0 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 1CE24 8002DEC4 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 1CE28 8002DEC8 46802020 */  cvt.s.w $f0, $f4
/* 1CE2C 8002DECC 468030A0 */  cvt.s.w $f2, $f6
/* 1CE30 8002DED0 460A003C */  c.lt.s  $f0, $f10
/* 1CE34 8002DED4 46804320 */  cvt.s.w $f12, $f8
/* 1CE38 8002DED8 45020004 */  bc1fl   .L8002DEEC
/* 1CE3C 8002DEDC 4600803C */  c.lt.s  $f16, $f0
/* 1CE40 8002DEE0 10000006 */  beq     $zero, $zero, .L8002DEFC
/* 1CE44 8002DEE4 E7A00058 */  swc1    $f0, 0x0058($sp)
/* 1CE48 8002DEE8 4600803C */  c.lt.s  $f16, $f0
.L8002DEEC:
/* 1CE4C 8002DEEC 00000000 */  nop
/* 1CE50 8002DEF0 45020003 */  bc1fl   .L8002DF00
/* 1CE54 8002DEF4 C7B2005C */  lwc1    $f18, 0x005C($sp)
/* 1CE58 8002DEF8 E7A0004C */  swc1    $f0, 0x004C($sp)
.L8002DEFC:
/* 1CE5C 8002DEFC C7B2005C */  lwc1    $f18, 0x005C($sp)
.L8002DF00:
/* 1CE60 8002DF00 C7A40050 */  lwc1    $f4, 0x0050($sp)
/* 1CE64 8002DF04 4612103C */  c.lt.s  $f2, $f18
/* 1CE68 8002DF08 00000000 */  nop
/* 1CE6C 8002DF0C 45020004 */  bc1fl   .L8002DF20
/* 1CE70 8002DF10 4602203C */  c.lt.s  $f4, $f2
/* 1CE74 8002DF14 10000006 */  beq     $zero, $zero, .L8002DF30
/* 1CE78 8002DF18 E7A2005C */  swc1    $f2, 0x005C($sp)
/* 1CE7C 8002DF1C 4602203C */  c.lt.s  $f4, $f2
.L8002DF20:
/* 1CE80 8002DF20 00000000 */  nop
/* 1CE84 8002DF24 45020003 */  bc1fl   .L8002DF34
/* 1CE88 8002DF28 C7A60060 */  lwc1    $f6, 0x0060($sp)
/* 1CE8C 8002DF2C E7A20050 */  swc1    $f2, 0x0050($sp)
.L8002DF30:
/* 1CE90 8002DF30 C7A60060 */  lwc1    $f6, 0x0060($sp)
.L8002DF34:
/* 1CE94 8002DF34 C7A80054 */  lwc1    $f8, 0x0054($sp)
/* 1CE98 8002DF38 4606603C */  c.lt.s  $f12, $f6
/* 1CE9C 8002DF3C 00000000 */  nop
/* 1CEA0 8002DF40 45020004 */  bc1fl   .L8002DF54
/* 1CEA4 8002DF44 460C403C */  c.lt.s  $f8, $f12
/* 1CEA8 8002DF48 10000006 */  beq     $zero, $zero, .L8002DF64
/* 1CEAC 8002DF4C E7AC0060 */  swc1    $f12, 0x0060($sp)
/* 1CEB0 8002DF50 460C403C */  c.lt.s  $f8, $f12
.L8002DF54:
/* 1CEB4 8002DF54 00000000 */  nop
/* 1CEB8 8002DF58 45000002 */  bc1f    .L8002DF64
/* 1CEBC 8002DF5C 00000000 */  nop
/* 1CEC0 8002DF60 E7AC0054 */  swc1    $f12, 0x0054($sp)
.L8002DF64:
/* 1CEC4 8002DF64 5420FFC8 */  bnel    $at, $zero, .L8002DE88
/* 1CEC8 8002DF68 94830000 */  lhu     $v1, 0x0000($a0)           ## 00000006
/* 1CECC 8002DF6C 8FAD007C */  lw      $t5, 0x007C($sp)
.L8002DF70:
/* 1CED0 8002DF70 8FA40068 */  lw      $a0, 0x0068($sp)
/* 1CED4 8002DF74 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFF0
/* 1CED8 8002DF78 8FA60074 */  lw      $a2, 0x0074($sp)
/* 1CEDC 8002DF7C 8FA70078 */  lw      $a3, 0x0078($sp)
/* 1CEE0 8002DF80 0C00B6A6 */  jal     func_8002DA98
/* 1CEE4 8002DF84 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 1CEE8 8002DF88 8FAE0088 */  lw      $t6, 0x0088($sp)
/* 1CEEC 8002DF8C 8FA40068 */  lw      $a0, 0x0068($sp)
/* 1CEF0 8002DF90 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFE4
/* 1CEF4 8002DF94 8FA60080 */  lw      $a2, 0x0080($sp)
/* 1CEF8 8002DF98 8FA70084 */  lw      $a3, 0x0084($sp)
/* 1CEFC 8002DF9C 0C00B70F */  jal     func_8002DC3C
/* 1CF00 8002DFA0 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1CF04 8002DFA4 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1CF08 8002DFA8 8FB00020 */  lw      $s0, 0x0020($sp)
/* 1CF0C 8002DFAC 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 1CF10 8002DFB0 03E00008 */  jr      $ra
/* 1CF14 8002DFB4 00000000 */  nop


glabel func_8002DFB8
/* 1CF18 8002DFB8 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 1CF1C 8002DFBC AFB10038 */  sw      $s1, 0x0038($sp)
/* 1CF20 8002DFC0 AFB00034 */  sw      $s0, 0x0034($sp)
/* 1CF24 8002DFC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1CF28 8002DFC8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 1CF2C 8002DFCC AFBF003C */  sw      $ra, 0x003C($sp)
/* 1CF30 8002DFD0 AFA700C4 */  sw      $a3, 0x00C4($sp)
/* 1CF34 8002DFD4 87AE00CA */  lh      $t6, 0x00CA($sp)
/* 1CF38 8002DFD8 AFA00050 */  sw      $zero, 0x0050($sp)
/* 1CF3C 8002DFDC AFA0004C */  sw      $zero, 0x004C($sp)
/* 1CF40 8002DFE0 000E7900 */  sll     $t7, $t6,  4
/* 1CF44 8002DFE4 01E61021 */  addu    $v0, $t7, $a2
/* 1CF48 8002DFE8 94580002 */  lhu     $t8, 0x0002($v0)           ## 00000002
/* 1CF4C 8002DFEC 8FAA00C4 */  lw      $t2, 0x00C4($sp)
/* 1CF50 8002DFF0 AFA20044 */  sw      $v0, 0x0044($sp)
/* 1CF54 8002DFF4 33191FFF */  andi    $t9, $t8, 0x1FFF           ## $t9 = 00000000
/* 1CF58 8002DFF8 00194880 */  sll     $t1, $t9,  2
/* 1CF5C 8002DFFC 01394823 */  subu    $t1, $t1, $t9
/* 1CF60 8002E000 00094840 */  sll     $t1, $t1,  1
/* 1CF64 8002E004 27A50070 */  addiu   $a1, $sp, 0x0070           ## $a1 = FFFFFFB8
/* 1CF68 8002E008 0C00AD37 */  jal     func_8002B4DC
/* 1CF6C 8002E00C 012A2021 */  addu    $a0, $t1, $t2
/* 1CF70 8002E010 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1CF74 8002E014 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CF78 8002E018 0C0295E5 */  jal     func_800A5794
/* 1CF7C 8002E01C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1CF80 8002E020 14400003 */  bne     $v0, $zero, .L8002E030
/* 1CF84 8002E024 AFA2004C */  sw      $v0, 0x004C($sp)
/* 1CF88 8002E028 100001B3 */  beq     $zero, $zero, .L8002E6F8
/* 1CF8C 8002E02C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002E030:
/* 1CF90 8002E030 8FAB0044 */  lw      $t3, 0x0044($sp)
/* 1CF94 8002E034 8FAF00C4 */  lw      $t7, 0x00C4($sp)
/* 1CF98 8002E038 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1CF9C 8002E03C 956C0004 */  lhu     $t4, 0x0004($t3)           ## 00000004
/* 1CFA0 8002E040 318D1FFF */  andi    $t5, $t4, 0x1FFF           ## $t5 = 00000000
/* 1CFA4 8002E044 000D7080 */  sll     $t6, $t5,  2
/* 1CFA8 8002E048 01CD7023 */  subu    $t6, $t6, $t5
/* 1CFAC 8002E04C 000E7040 */  sll     $t6, $t6,  1
/* 1CFB0 8002E050 0C00AD37 */  jal     func_8002B4DC
/* 1CFB4 8002E054 01CF2021 */  addu    $a0, $t6, $t7
/* 1CFB8 8002E058 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFAC
/* 1CFBC 8002E05C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CFC0 8002E060 0C0295E5 */  jal     func_800A5794
/* 1CFC4 8002E064 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1CFC8 8002E068 14400003 */  bne     $v0, $zero, .L8002E078
/* 1CFCC 8002E06C AFA20050 */  sw      $v0, 0x0050($sp)
/* 1CFD0 8002E070 100001A1 */  beq     $zero, $zero, .L8002E6F8
/* 1CFD4 8002E074 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002E078:
/* 1CFD8 8002E078 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1CFDC 8002E07C 8FAA00C4 */  lw      $t2, 0x00C4($sp)
/* 1CFE0 8002E080 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFA0
/* 1CFE4 8002E084 97190006 */  lhu     $t9, 0x0006($t8)           ## 00000006
/* 1CFE8 8002E088 00194880 */  sll     $t1, $t9,  2
/* 1CFEC 8002E08C 01394823 */  subu    $t1, $t1, $t9
/* 1CFF0 8002E090 00094840 */  sll     $t1, $t1,  1
/* 1CFF4 8002E094 0C00AD37 */  jal     func_8002B4DC
/* 1CFF8 8002E098 012A2021 */  addu    $a0, $t1, $t2
/* 1CFFC 8002E09C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFA0
/* 1D000 8002E0A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D004 8002E0A4 0C0295E5 */  jal     func_800A5794
/* 1D008 8002E0A8 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1D00C 8002E0AC 14400003 */  bne     $v0, $zero, .L8002E0BC
/* 1D010 8002E0B0 AFA20054 */  sw      $v0, 0x0054($sp)
/* 1D014 8002E0B4 10000190 */  beq     $zero, $zero, .L8002E6F8
/* 1D018 8002E0B8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002E0BC:
/* 1D01C 8002E0BC 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1D020 8002E0C0 8FA70050 */  lw      $a3, 0x0050($sp)
/* 1D024 8002E0C4 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D028 8002E0C8 00485824 */  and     $t3, $v0, $t0
/* 1D02C 8002E0CC 01676024 */  and     $t4, $t3, $a3
/* 1D030 8002E0D0 11800003 */  beq     $t4, $zero, .L8002E0E0
/* 1D034 8002E0D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D038 8002E0D8 10000187 */  beq     $zero, $zero, .L8002E6F8
/* 1D03C 8002E0DC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002E0E0:
/* 1D040 8002E0E0 0C029610 */  jal     func_800A5840
/* 1D044 8002E0E4 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1D048 8002E0E8 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1D04C 8002E0EC 00026A00 */  sll     $t5, $v0,  8
/* 1D050 8002E0F0 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFAC
/* 1D054 8002E0F4 010D4025 */  or      $t0, $t0, $t5              ## $t0 = 00000000
/* 1D058 8002E0F8 AFA8004C */  sw      $t0, 0x004C($sp)
/* 1D05C 8002E0FC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D060 8002E100 0C029610 */  jal     func_800A5840
/* 1D064 8002E104 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1D068 8002E108 8FA70050 */  lw      $a3, 0x0050($sp)
/* 1D06C 8002E10C 00027200 */  sll     $t6, $v0,  8
/* 1D070 8002E110 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFA0
/* 1D074 8002E114 00EE3825 */  or      $a3, $a3, $t6              ## $a3 = 00000000
/* 1D078 8002E118 AFA70050 */  sw      $a3, 0x0050($sp)
/* 1D07C 8002E11C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D080 8002E120 0C029610 */  jal     func_800A5840
/* 1D084 8002E124 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1D088 8002E128 8FA30054 */  lw      $v1, 0x0054($sp)
/* 1D08C 8002E12C 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1D090 8002E130 8FA70050 */  lw      $a3, 0x0050($sp)
/* 1D094 8002E134 00027A00 */  sll     $t7, $v0,  8
/* 1D098 8002E138 006F1825 */  or      $v1, $v1, $t7              ## $v1 = 00000000
/* 1D09C 8002E13C 0068C024 */  and     $t8, $v1, $t0
/* 1D0A0 8002E140 0307C824 */  and     $t9, $t8, $a3
/* 1D0A4 8002E144 13200003 */  beq     $t9, $zero, .L8002E154
/* 1D0A8 8002E148 AFA30054 */  sw      $v1, 0x0054($sp)
/* 1D0AC 8002E14C 1000016A */  beq     $zero, $zero, .L8002E6F8
/* 1D0B0 8002E150 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002E154:
/* 1D0B4 8002E154 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D0B8 8002E158 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D0BC 8002E15C 0C02967C */  jal     func_800A59F0
/* 1D0C0 8002E160 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1D0C4 8002E164 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1D0C8 8002E168 00024E00 */  sll     $t1, $v0, 24
/* 1D0CC 8002E16C 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFAC
/* 1D0D0 8002E170 01094025 */  or      $t0, $t0, $t1              ## $t0 = 00000000
/* 1D0D4 8002E174 AFA8004C */  sw      $t0, 0x004C($sp)
/* 1D0D8 8002E178 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D0DC 8002E17C 0C02967C */  jal     func_800A59F0
/* 1D0E0 8002E180 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1D0E4 8002E184 8FA70050 */  lw      $a3, 0x0050($sp)
/* 1D0E8 8002E188 00025600 */  sll     $t2, $v0, 24
/* 1D0EC 8002E18C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFA0
/* 1D0F0 8002E190 00EA3825 */  or      $a3, $a3, $t2              ## $a3 = 00000000
/* 1D0F4 8002E194 AFA70050 */  sw      $a3, 0x0050($sp)
/* 1D0F8 8002E198 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D0FC 8002E19C 0C02967C */  jal     func_800A59F0
/* 1D100 8002E1A0 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1D104 8002E1A4 8FA30054 */  lw      $v1, 0x0054($sp)
/* 1D108 8002E1A8 8FA8004C */  lw      $t0, 0x004C($sp)
/* 1D10C 8002E1AC 8FA70050 */  lw      $a3, 0x0050($sp)
/* 1D110 8002E1B0 00025E00 */  sll     $t3, $v0, 24
/* 1D114 8002E1B4 006B1825 */  or      $v1, $v1, $t3              ## $v1 = 00000000
/* 1D118 8002E1B8 00686024 */  and     $t4, $v1, $t0
/* 1D11C 8002E1BC 01876824 */  and     $t5, $t4, $a3
/* 1D120 8002E1C0 11A00003 */  beq     $t5, $zero, .L8002E1D0
/* 1D124 8002E1C4 AFA30054 */  sw      $v1, 0x0054($sp)
/* 1D128 8002E1C8 1000014B */  beq     $zero, $zero, .L8002E6F8
/* 1D12C 8002E1CC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002E1D0:
/* 1D130 8002E1D0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 1D134 8002E1D4 27A50088 */  addiu   $a1, $sp, 0x0088           ## $a1 = FFFFFFD0
/* 1D138 8002E1D8 27A60084 */  addiu   $a2, $sp, 0x0084           ## $a2 = FFFFFFCC
/* 1D13C 8002E1DC 0C00AD84 */  jal     func_8002B610
/* 1D140 8002E1E0 27A70080 */  addiu   $a3, $sp, 0x0080           ## $a3 = FFFFFFC8
/* 1D144 8002E1E4 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 1D148 8002E1E8 C7A60084 */  lwc1    $f6, 0x0084($sp)
/* 1D14C 8002E1EC C7A80080 */  lwc1    $f8, 0x0080($sp)
/* 1D150 8002E1F0 85CF000E */  lh      $t7, 0x000E($t6)           ## 0000000E
/* 1D154 8002E1F4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 1D158 8002E1F8 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 1D15C 8002E1FC 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 1D160 8002E200 27B800B4 */  addiu   $t8, $sp, 0x00B4           ## $t8 = FFFFFFFC
/* 1D164 8002E204 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D168 8002E208 46802020 */  cvt.s.w $f0, $f4
/* 1D16C 8002E20C 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D170 8002E210 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D174 8002E214 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D178 8002E218 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 1D17C 8002E21C C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000008
/* 1D180 8002E220 E7AA001C */  swc1    $f10, 0x001C($sp)
/* 1D184 8002E224 C6100000 */  lwc1    $f16, 0x0000($s0)          ## 00000000
/* 1D188 8002E228 AFB80024 */  sw      $t8, 0x0024($sp)
/* 1D18C 8002E22C E7B00020 */  swc1    $f16, 0x0020($sp)
/* 1D190 8002E230 C6120004 */  lwc1    $f18, 0x0004($s0)          ## 00000004
/* 1D194 8002E234 E7B20028 */  swc1    $f18, 0x0028($sp)
/* 1D198 8002E238 C6240004 */  lwc1    $f4, 0x0004($s1)           ## 00000004
/* 1D19C 8002E23C E7A0007C */  swc1    $f0, 0x007C($sp)
/* 1D1A0 8002E240 0C029BED */  jal     func_800A6FB4
/* 1D1A4 8002E244 E7A4002C */  swc1    $f4, 0x002C($sp)
/* 1D1A8 8002E248 14400043 */  bne     $v0, $zero, .L8002E358
/* 1D1AC 8002E24C C7A60084 */  lwc1    $f6, 0x0084($sp)
/* 1D1B0 8002E250 C7A80080 */  lwc1    $f8, 0x0080($sp)
/* 1D1B4 8002E254 C7AA007C */  lwc1    $f10, 0x007C($sp)
/* 1D1B8 8002E258 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 1D1BC 8002E25C E7A80014 */  swc1    $f8, 0x0014($sp)
/* 1D1C0 8002E260 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 1D1C4 8002E264 C6300008 */  lwc1    $f16, 0x0008($s1)          ## 00000008
/* 1D1C8 8002E268 27B900B4 */  addiu   $t9, $sp, 0x00B4           ## $t9 = FFFFFFFC
/* 1D1CC 8002E26C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D1D0 8002E270 E7B0001C */  swc1    $f16, 0x001C($sp)
/* 1D1D4 8002E274 C6120000 */  lwc1    $f18, 0x0000($s0)          ## 00000000
/* 1D1D8 8002E278 AFB90024 */  sw      $t9, 0x0024($sp)
/* 1D1DC 8002E27C 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D1E0 8002E280 E7B20020 */  swc1    $f18, 0x0020($sp)
/* 1D1E4 8002E284 C6040004 */  lwc1    $f4, 0x0004($s0)           ## 00000004
/* 1D1E8 8002E288 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D1EC 8002E28C 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D1F0 8002E290 E7A40028 */  swc1    $f4, 0x0028($sp)
/* 1D1F4 8002E294 C6260004 */  lwc1    $f6, 0x0004($s1)           ## 00000004
/* 1D1F8 8002E298 0C029BED */  jal     func_800A6FB4
/* 1D1FC 8002E29C E7A6002C */  swc1    $f6, 0x002C($sp)
/* 1D200 8002E2A0 1440002D */  bne     $v0, $zero, .L8002E358
/* 1D204 8002E2A4 C7A80084 */  lwc1    $f8, 0x0084($sp)
/* 1D208 8002E2A8 C7AA0080 */  lwc1    $f10, 0x0080($sp)
/* 1D20C 8002E2AC C7B0007C */  lwc1    $f16, 0x007C($sp)
/* 1D210 8002E2B0 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 1D214 8002E2B4 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 1D218 8002E2B8 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 1D21C 8002E2BC C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 1D220 8002E2C0 27A900B4 */  addiu   $t1, $sp, 0x00B4           ## $t1 = FFFFFFFC
/* 1D224 8002E2C4 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D228 8002E2C8 E7B2001C */  swc1    $f18, 0x001C($sp)
/* 1D22C 8002E2CC C6240000 */  lwc1    $f4, 0x0000($s1)           ## 00000000
/* 1D230 8002E2D0 AFA90024 */  sw      $t1, 0x0024($sp)
/* 1D234 8002E2D4 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D238 8002E2D8 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1D23C 8002E2DC C6060004 */  lwc1    $f6, 0x0004($s0)           ## 00000004
/* 1D240 8002E2E0 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D244 8002E2E4 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D248 8002E2E8 E7A60028 */  swc1    $f6, 0x0028($sp)
/* 1D24C 8002E2EC C6280004 */  lwc1    $f8, 0x0004($s1)           ## 00000004
/* 1D250 8002E2F0 0C029BED */  jal     func_800A6FB4
/* 1D254 8002E2F4 E7A8002C */  swc1    $f8, 0x002C($sp)
/* 1D258 8002E2F8 14400017 */  bne     $v0, $zero, .L8002E358
/* 1D25C 8002E2FC C7AA0084 */  lwc1    $f10, 0x0084($sp)
/* 1D260 8002E300 C7B00080 */  lwc1    $f16, 0x0080($sp)
/* 1D264 8002E304 C7B2007C */  lwc1    $f18, 0x007C($sp)
/* 1D268 8002E308 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 1D26C 8002E30C E7B00014 */  swc1    $f16, 0x0014($sp)
/* 1D270 8002E310 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 1D274 8002E314 C6240008 */  lwc1    $f4, 0x0008($s1)           ## 00000008
/* 1D278 8002E318 27AA00B4 */  addiu   $t2, $sp, 0x00B4           ## $t2 = FFFFFFFC
/* 1D27C 8002E31C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D280 8002E320 E7A4001C */  swc1    $f4, 0x001C($sp)
/* 1D284 8002E324 C6260000 */  lwc1    $f6, 0x0000($s1)           ## 00000000
/* 1D288 8002E328 AFAA0024 */  sw      $t2, 0x0024($sp)
/* 1D28C 8002E32C 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D290 8002E330 E7A60020 */  swc1    $f6, 0x0020($sp)
/* 1D294 8002E334 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 00000004
/* 1D298 8002E338 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D29C 8002E33C 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D2A0 8002E340 E7A80028 */  swc1    $f8, 0x0028($sp)
/* 1D2A4 8002E344 C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000004
/* 1D2A8 8002E348 0C029BED */  jal     func_800A6FB4
/* 1D2AC 8002E34C E7AA002C */  swc1    $f10, 0x002C($sp)
/* 1D2B0 8002E350 10400003 */  beq     $v0, $zero, .L8002E360
/* 1D2B4 8002E354 C7B00084 */  lwc1    $f16, 0x0084($sp)
.L8002E358:
/* 1D2B8 8002E358 100000E7 */  beq     $zero, $zero, .L8002E6F8
/* 1D2BC 8002E35C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002E360:
/* 1D2C0 8002E360 C7B20080 */  lwc1    $f18, 0x0080($sp)
/* 1D2C4 8002E364 C7A4007C */  lwc1    $f4, 0x007C($sp)
/* 1D2C8 8002E368 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 1D2CC 8002E36C E7B20014 */  swc1    $f18, 0x0014($sp)
/* 1D2D0 8002E370 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 1D2D4 8002E374 C6060000 */  lwc1    $f6, 0x0000($s0)           ## 00000000
/* 1D2D8 8002E378 27AB00B4 */  addiu   $t3, $sp, 0x00B4           ## $t3 = FFFFFFFC
/* 1D2DC 8002E37C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D2E0 8002E380 E7A6001C */  swc1    $f6, 0x001C($sp)
/* 1D2E4 8002E384 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 00000004
/* 1D2E8 8002E388 AFAB0024 */  sw      $t3, 0x0024($sp)
/* 1D2EC 8002E38C 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D2F0 8002E390 E7A80020 */  swc1    $f8, 0x0020($sp)
/* 1D2F4 8002E394 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000008
/* 1D2F8 8002E398 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D2FC 8002E39C 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D300 8002E3A0 E7AA0028 */  swc1    $f10, 0x0028($sp)
/* 1D304 8002E3A4 C6300008 */  lwc1    $f16, 0x0008($s1)          ## 00000008
/* 1D308 8002E3A8 0C029F3B */  jal     func_800A7CEC
/* 1D30C 8002E3AC E7B0002C */  swc1    $f16, 0x002C($sp)
/* 1D310 8002E3B0 14400043 */  bne     $v0, $zero, .L8002E4C0
/* 1D314 8002E3B4 C7B20084 */  lwc1    $f18, 0x0084($sp)
/* 1D318 8002E3B8 C7A40080 */  lwc1    $f4, 0x0080($sp)
/* 1D31C 8002E3BC C7A6007C */  lwc1    $f6, 0x007C($sp)
/* 1D320 8002E3C0 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 1D324 8002E3C4 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1D328 8002E3C8 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 1D32C 8002E3CC C6080000 */  lwc1    $f8, 0x0000($s0)           ## 00000000
/* 1D330 8002E3D0 27AC00B4 */  addiu   $t4, $sp, 0x00B4           ## $t4 = FFFFFFFC
/* 1D334 8002E3D4 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D338 8002E3D8 E7A8001C */  swc1    $f8, 0x001C($sp)
/* 1D33C 8002E3DC C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000004
/* 1D340 8002E3E0 AFAC0024 */  sw      $t4, 0x0024($sp)
/* 1D344 8002E3E4 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D348 8002E3E8 E7AA0020 */  swc1    $f10, 0x0020($sp)
/* 1D34C 8002E3EC C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000008
/* 1D350 8002E3F0 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D354 8002E3F4 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D358 8002E3F8 E7B00028 */  swc1    $f16, 0x0028($sp)
/* 1D35C 8002E3FC C6320008 */  lwc1    $f18, 0x0008($s1)          ## 00000008
/* 1D360 8002E400 0C029F3B */  jal     func_800A7CEC
/* 1D364 8002E404 E7B2002C */  swc1    $f18, 0x002C($sp)
/* 1D368 8002E408 1440002D */  bne     $v0, $zero, .L8002E4C0
/* 1D36C 8002E40C C7A40084 */  lwc1    $f4, 0x0084($sp)
/* 1D370 8002E410 C7A60080 */  lwc1    $f6, 0x0080($sp)
/* 1D374 8002E414 C7A8007C */  lwc1    $f8, 0x007C($sp)
/* 1D378 8002E418 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1D37C 8002E41C E7A60014 */  swc1    $f6, 0x0014($sp)
/* 1D380 8002E420 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 1D384 8002E424 C62A0000 */  lwc1    $f10, 0x0000($s1)          ## 00000000
/* 1D388 8002E428 27AD00B4 */  addiu   $t5, $sp, 0x00B4           ## $t5 = FFFFFFFC
/* 1D38C 8002E42C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D390 8002E430 E7AA001C */  swc1    $f10, 0x001C($sp)
/* 1D394 8002E434 C6100004 */  lwc1    $f16, 0x0004($s0)          ## 00000004
/* 1D398 8002E438 AFAD0024 */  sw      $t5, 0x0024($sp)
/* 1D39C 8002E43C 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D3A0 8002E440 E7B00020 */  swc1    $f16, 0x0020($sp)
/* 1D3A4 8002E444 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 1D3A8 8002E448 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D3AC 8002E44C 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D3B0 8002E450 E7B20028 */  swc1    $f18, 0x0028($sp)
/* 1D3B4 8002E454 C6240008 */  lwc1    $f4, 0x0008($s1)           ## 00000008
/* 1D3B8 8002E458 0C029F3B */  jal     func_800A7CEC
/* 1D3BC 8002E45C E7A4002C */  swc1    $f4, 0x002C($sp)
/* 1D3C0 8002E460 14400017 */  bne     $v0, $zero, .L8002E4C0
/* 1D3C4 8002E464 C7A60084 */  lwc1    $f6, 0x0084($sp)
/* 1D3C8 8002E468 C7A80080 */  lwc1    $f8, 0x0080($sp)
/* 1D3CC 8002E46C C7AA007C */  lwc1    $f10, 0x007C($sp)
/* 1D3D0 8002E470 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 1D3D4 8002E474 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 1D3D8 8002E478 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 1D3DC 8002E47C C6300000 */  lwc1    $f16, 0x0000($s1)          ## 00000000
/* 1D3E0 8002E480 27AE00B4 */  addiu   $t6, $sp, 0x00B4           ## $t6 = FFFFFFFC
/* 1D3E4 8002E484 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D3E8 8002E488 E7B0001C */  swc1    $f16, 0x001C($sp)
/* 1D3EC 8002E48C C6320004 */  lwc1    $f18, 0x0004($s1)          ## 00000004
/* 1D3F0 8002E490 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 1D3F4 8002E494 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D3F8 8002E498 E7B20020 */  swc1    $f18, 0x0020($sp)
/* 1D3FC 8002E49C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 1D400 8002E4A0 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D404 8002E4A4 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D408 8002E4A8 E7A40028 */  swc1    $f4, 0x0028($sp)
/* 1D40C 8002E4AC C6260008 */  lwc1    $f6, 0x0008($s1)           ## 00000008
/* 1D410 8002E4B0 0C029F3B */  jal     func_800A7CEC
/* 1D414 8002E4B4 E7A6002C */  swc1    $f6, 0x002C($sp)
/* 1D418 8002E4B8 10400003 */  beq     $v0, $zero, .L8002E4C8
/* 1D41C 8002E4BC C7A80084 */  lwc1    $f8, 0x0084($sp)
.L8002E4C0:
/* 1D420 8002E4C0 1000008D */  beq     $zero, $zero, .L8002E6F8
/* 1D424 8002E4C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002E4C8:
/* 1D428 8002E4C8 C7AA0080 */  lwc1    $f10, 0x0080($sp)
/* 1D42C 8002E4CC C7B0007C */  lwc1    $f16, 0x007C($sp)
/* 1D430 8002E4D0 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 1D434 8002E4D4 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 1D438 8002E4D8 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 1D43C 8002E4DC C6120004 */  lwc1    $f18, 0x0004($s0)          ## 00000004
/* 1D440 8002E4E0 27AF00B4 */  addiu   $t7, $sp, 0x00B4           ## $t7 = FFFFFFFC
/* 1D444 8002E4E4 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D448 8002E4E8 E7B2001C */  swc1    $f18, 0x001C($sp)
/* 1D44C 8002E4EC C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 1D450 8002E4F0 AFAF0024 */  sw      $t7, 0x0024($sp)
/* 1D454 8002E4F4 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D458 8002E4F8 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1D45C 8002E4FC C6060000 */  lwc1    $f6, 0x0000($s0)           ## 00000000
/* 1D460 8002E500 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D464 8002E504 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D468 8002E508 E7A60028 */  swc1    $f6, 0x0028($sp)
/* 1D46C 8002E50C C6280000 */  lwc1    $f8, 0x0000($s1)           ## 00000000
/* 1D470 8002E510 0C029D8C */  jal     func_800A7630
/* 1D474 8002E514 E7A8002C */  swc1    $f8, 0x002C($sp)
/* 1D478 8002E518 14400043 */  bne     $v0, $zero, .L8002E628
/* 1D47C 8002E51C C7AA0084 */  lwc1    $f10, 0x0084($sp)
/* 1D480 8002E520 C7B00080 */  lwc1    $f16, 0x0080($sp)
/* 1D484 8002E524 C7B2007C */  lwc1    $f18, 0x007C($sp)
/* 1D488 8002E528 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 1D48C 8002E52C E7B00014 */  swc1    $f16, 0x0014($sp)
/* 1D490 8002E530 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 1D494 8002E534 C6040004 */  lwc1    $f4, 0x0004($s0)           ## 00000004
/* 1D498 8002E538 27B800B4 */  addiu   $t8, $sp, 0x00B4           ## $t8 = FFFFFFFC
/* 1D49C 8002E53C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D4A0 8002E540 E7A4001C */  swc1    $f4, 0x001C($sp)
/* 1D4A4 8002E544 C6260008 */  lwc1    $f6, 0x0008($s1)           ## 00000008
/* 1D4A8 8002E548 AFB80024 */  sw      $t8, 0x0024($sp)
/* 1D4AC 8002E54C 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D4B0 8002E550 E7A60020 */  swc1    $f6, 0x0020($sp)
/* 1D4B4 8002E554 C6080000 */  lwc1    $f8, 0x0000($s0)           ## 00000000
/* 1D4B8 8002E558 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D4BC 8002E55C 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D4C0 8002E560 E7A80028 */  swc1    $f8, 0x0028($sp)
/* 1D4C4 8002E564 C62A0000 */  lwc1    $f10, 0x0000($s1)          ## 00000000
/* 1D4C8 8002E568 0C029D8C */  jal     func_800A7630
/* 1D4CC 8002E56C E7AA002C */  swc1    $f10, 0x002C($sp)
/* 1D4D0 8002E570 1440002D */  bne     $v0, $zero, .L8002E628
/* 1D4D4 8002E574 C7B00084 */  lwc1    $f16, 0x0084($sp)
/* 1D4D8 8002E578 C7B20080 */  lwc1    $f18, 0x0080($sp)
/* 1D4DC 8002E57C C7A4007C */  lwc1    $f4, 0x007C($sp)
/* 1D4E0 8002E580 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 1D4E4 8002E584 E7B20014 */  swc1    $f18, 0x0014($sp)
/* 1D4E8 8002E588 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 1D4EC 8002E58C C6260004 */  lwc1    $f6, 0x0004($s1)           ## 00000004
/* 1D4F0 8002E590 27B900B4 */  addiu   $t9, $sp, 0x00B4           ## $t9 = FFFFFFFC
/* 1D4F4 8002E594 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D4F8 8002E598 E7A6001C */  swc1    $f6, 0x001C($sp)
/* 1D4FC 8002E59C C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 1D500 8002E5A0 AFB90024 */  sw      $t9, 0x0024($sp)
/* 1D504 8002E5A4 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D508 8002E5A8 E7A80020 */  swc1    $f8, 0x0020($sp)
/* 1D50C 8002E5AC C60A0000 */  lwc1    $f10, 0x0000($s0)          ## 00000000
/* 1D510 8002E5B0 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D514 8002E5B4 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D518 8002E5B8 E7AA0028 */  swc1    $f10, 0x0028($sp)
/* 1D51C 8002E5BC C6300000 */  lwc1    $f16, 0x0000($s1)          ## 00000000
/* 1D520 8002E5C0 0C029D8C */  jal     func_800A7630
/* 1D524 8002E5C4 E7B0002C */  swc1    $f16, 0x002C($sp)
/* 1D528 8002E5C8 14400017 */  bne     $v0, $zero, .L8002E628
/* 1D52C 8002E5CC C7B20084 */  lwc1    $f18, 0x0084($sp)
/* 1D530 8002E5D0 C7A40080 */  lwc1    $f4, 0x0080($sp)
/* 1D534 8002E5D4 C7A6007C */  lwc1    $f6, 0x007C($sp)
/* 1D538 8002E5D8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 1D53C 8002E5DC E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1D540 8002E5E0 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 1D544 8002E5E4 C6280004 */  lwc1    $f8, 0x0004($s1)           ## 00000004
/* 1D548 8002E5E8 27A900B4 */  addiu   $t1, $sp, 0x00B4           ## $t1 = FFFFFFFC
/* 1D54C 8002E5EC 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFB8
/* 1D550 8002E5F0 E7A8001C */  swc1    $f8, 0x001C($sp)
/* 1D554 8002E5F4 C62A0008 */  lwc1    $f10, 0x0008($s1)          ## 00000008
/* 1D558 8002E5F8 AFA90024 */  sw      $t1, 0x0024($sp)
/* 1D55C 8002E5FC 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 1D560 8002E600 E7AA0020 */  swc1    $f10, 0x0020($sp)
/* 1D564 8002E604 C6100000 */  lwc1    $f16, 0x0000($s0)          ## 00000000
/* 1D568 8002E608 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFA0
/* 1D56C 8002E60C 8FA70088 */  lw      $a3, 0x0088($sp)
/* 1D570 8002E610 E7B00028 */  swc1    $f16, 0x0028($sp)
/* 1D574 8002E614 C6320000 */  lwc1    $f18, 0x0000($s1)          ## 00000000
/* 1D578 8002E618 0C029D8C */  jal     func_800A7630
/* 1D57C 8002E61C E7B2002C */  swc1    $f18, 0x002C($sp)
/* 1D580 8002E620 10400003 */  beq     $v0, $zero, .L8002E630
/* 1D584 8002E624 8FAA0044 */  lw      $t2, 0x0044($sp)
.L8002E628:
/* 1D588 8002E628 10000033 */  beq     $zero, $zero, .L8002E6F8
/* 1D58C 8002E62C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002E630:
/* 1D590 8002E630 954B0002 */  lhu     $t3, 0x0002($t2)           ## 00000002
/* 1D594 8002E634 8FAE00C4 */  lw      $t6, 0x00C4($sp)
/* 1D598 8002E638 27A500A8 */  addiu   $a1, $sp, 0x00A8           ## $a1 = FFFFFFF0
/* 1D59C 8002E63C 316C1FFF */  andi    $t4, $t3, 0x1FFF           ## $t4 = 00000000
/* 1D5A0 8002E640 000C6880 */  sll     $t5, $t4,  2
/* 1D5A4 8002E644 01AC6823 */  subu    $t5, $t5, $t4
/* 1D5A8 8002E648 000D6840 */  sll     $t5, $t5,  1
/* 1D5AC 8002E64C 0C00AD37 */  jal     func_8002B4DC
/* 1D5B0 8002E650 01AE2021 */  addu    $a0, $t5, $t6
/* 1D5B4 8002E654 8FAF0044 */  lw      $t7, 0x0044($sp)
/* 1D5B8 8002E658 8FAA00C4 */  lw      $t2, 0x00C4($sp)
/* 1D5BC 8002E65C 27A5009C */  addiu   $a1, $sp, 0x009C           ## $a1 = FFFFFFE4
/* 1D5C0 8002E660 95F80004 */  lhu     $t8, 0x0004($t7)           ## 00000004
/* 1D5C4 8002E664 33191FFF */  andi    $t9, $t8, 0x1FFF           ## $t9 = 00000000
/* 1D5C8 8002E668 00194880 */  sll     $t1, $t9,  2
/* 1D5CC 8002E66C 01394823 */  subu    $t1, $t1, $t9
/* 1D5D0 8002E670 00094840 */  sll     $t1, $t1,  1
/* 1D5D4 8002E674 0C00AD37 */  jal     func_8002B4DC
/* 1D5D8 8002E678 012A2021 */  addu    $a0, $t1, $t2
/* 1D5DC 8002E67C 8FAB0044 */  lw      $t3, 0x0044($sp)
/* 1D5E0 8002E680 8FAE00C4 */  lw      $t6, 0x00C4($sp)
/* 1D5E4 8002E684 27A50090 */  addiu   $a1, $sp, 0x0090           ## $a1 = FFFFFFD8
/* 1D5E8 8002E688 956C0006 */  lhu     $t4, 0x0006($t3)           ## 00000006
/* 1D5EC 8002E68C 000C6880 */  sll     $t5, $t4,  2
/* 1D5F0 8002E690 01AC6823 */  subu    $t5, $t5, $t4
/* 1D5F4 8002E694 000D6840 */  sll     $t5, $t5,  1
/* 1D5F8 8002E698 0C00AD37 */  jal     func_8002B4DC
/* 1D5FC 8002E69C 01AE2021 */  addu    $a0, $t5, $t6
/* 1D600 8002E6A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D604 8002E6A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1D608 8002E6A8 27A600A8 */  addiu   $a2, $sp, 0x00A8           ## $a2 = FFFFFFF0
/* 1D60C 8002E6AC 0C0296DB */  jal     func_800A5B6C
/* 1D610 8002E6B0 27A7009C */  addiu   $a3, $sp, 0x009C           ## $a3 = FFFFFFE4
/* 1D614 8002E6B4 1440000D */  bne     $v0, $zero, .L8002E6EC
/* 1D618 8002E6B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D61C 8002E6BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1D620 8002E6C0 27A6009C */  addiu   $a2, $sp, 0x009C           ## $a2 = FFFFFFE4
/* 1D624 8002E6C4 0C0296DB */  jal     func_800A5B6C
/* 1D628 8002E6C8 27A70090 */  addiu   $a3, $sp, 0x0090           ## $a3 = FFFFFFD8
/* 1D62C 8002E6CC 14400007 */  bne     $v0, $zero, .L8002E6EC
/* 1D630 8002E6D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D634 8002E6D4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1D638 8002E6D8 27A60090 */  addiu   $a2, $sp, 0x0090           ## $a2 = FFFFFFD8
/* 1D63C 8002E6DC 0C0296DB */  jal     func_800A5B6C
/* 1D640 8002E6E0 27A700A8 */  addiu   $a3, $sp, 0x00A8           ## $a3 = FFFFFFF0
/* 1D644 8002E6E4 50400004 */  beql    $v0, $zero, .L8002E6F8
/* 1D648 8002E6E8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002E6EC:
/* 1D64C 8002E6EC 10000002 */  beq     $zero, $zero, .L8002E6F8
/* 1D650 8002E6F0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1D654 8002E6F4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002E6F8:
/* 1D658 8002E6F8 8FBF003C */  lw      $ra, 0x003C($sp)
/* 1D65C 8002E6FC 8FB00034 */  lw      $s0, 0x0034($sp)
/* 1D660 8002E700 8FB10038 */  lw      $s1, 0x0038($sp)
/* 1D664 8002E704 03E00008 */  jr      $ra
/* 1D668 8002E708 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


glabel func_8002E70C
/* 1D66C 8002E70C 27BDFF08 */  addiu   $sp, $sp, 0xFF08           ## $sp = FFFFFF08
/* 1D670 8002E710 AFB20058 */  sw      $s2, 0x0058($sp)
/* 1D674 8002E714 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 1D678 8002E718 AFBF0074 */  sw      $ra, 0x0074($sp)
/* 1D67C 8002E71C AFBE0070 */  sw      $s8, 0x0070($sp)
/* 1D680 8002E720 AFB7006C */  sw      $s7, 0x006C($sp)
/* 1D684 8002E724 AFB60068 */  sw      $s6, 0x0068($sp)
/* 1D688 8002E728 AFB50064 */  sw      $s5, 0x0064($sp)
/* 1D68C 8002E72C AFB40060 */  sw      $s4, 0x0060($sp)
/* 1D690 8002E730 AFB3005C */  sw      $s3, 0x005C($sp)
/* 1D694 8002E734 AFB10054 */  sw      $s1, 0x0054($sp)
/* 1D698 8002E738 AFB00050 */  sw      $s0, 0x0050($sp)
/* 1D69C 8002E73C F7BA0048 */  sdc1    $f26, 0x0048($sp)
/* 1D6A0 8002E740 F7B80040 */  sdc1    $f24, 0x0040($sp)
/* 1D6A4 8002E744 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 1D6A8 8002E748 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 1D6AC 8002E74C AFA500FC */  sw      $a1, 0x00FC($sp)
/* 1D6B0 8002E750 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 1D6B4 8002E754 8E4E001C */  lw      $t6, 0x001C($s2)           ## 0000001C
/* 1D6B8 8002E758 8E4F0020 */  lw      $t7, 0x0020($s2)           ## 00000020
/* 1D6BC 8002E75C 8E580024 */  lw      $t8, 0x0024($s2)           ## 00000024
/* 1D6C0 8002E760 8E470000 */  lw      $a3, 0x0000($s2)           ## 00000000
/* 1D6C4 8002E764 01CF0019 */  multu   $t6, $t7
/* 1D6C8 8002E768 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 1D6CC 8002E76C 3403FFFF */  ori     $v1, $zero, 0xFFFF         ## $v1 = 0000FFFF
/* 1D6D0 8002E770 27B700AC */  addiu   $s7, $sp, 0x00AC           ## $s7 = FFFFFFB4
/* 1D6D4 8002E774 27B600B8 */  addiu   $s6, $sp, 0x00B8           ## $s6 = FFFFFFC0
/* 1D6D8 8002E778 00002812 */  mflo    $a1
/* 1D6DC 8002E77C 00000000 */  nop
/* 1D6E0 8002E780 00000000 */  nop
/* 1D6E4 8002E784 00B80019 */  multu   $a1, $t8
/* 1D6E8 8002E788 0000C812 */  mflo    $t9
/* 1D6EC 8002E78C 00000000 */  nop
/* 1D6F0 8002E790 00000000 */  nop
/* 1D6F4 8002E794 03280019 */  multu   $t9, $t0
/* 1D6F8 8002E798 00004812 */  mflo    $t1
/* 1D6FC 8002E79C 01265021 */  addu    $t2, $t1, $a2
/* 1D700 8002E7A0 00CA082B */  sltu    $at, $a2, $t2
/* 1D704 8002E7A4 50200017 */  beql    $at, $zero, .L8002E804
/* 1D708 8002E7A8 94E30014 */  lhu     $v1, 0x0014($a3)           ## 00000014
/* 1D70C 8002E7AC A4430000 */  sh      $v1, 0x0000($v0)           ## 00000000
.L8002E7B0:
/* 1D710 8002E7B0 A4430002 */  sh      $v1, 0x0002($v0)           ## 00000002
/* 1D714 8002E7B4 A4430004 */  sh      $v1, 0x0004($v0)           ## 00000004
/* 1D718 8002E7B8 8E4C0020 */  lw      $t4, 0x0020($s2)           ## 00000020
/* 1D71C 8002E7BC 8E4B001C */  lw      $t3, 0x001C($s2)           ## 0000001C
/* 1D720 8002E7C0 8E4D0024 */  lw      $t5, 0x0024($s2)           ## 00000024
/* 1D724 8002E7C4 24420006 */  addiu   $v0, $v0, 0x0006           ## $v0 = 00000006
/* 1D728 8002E7C8 016C0019 */  multu   $t3, $t4
/* 1D72C 8002E7CC 00002812 */  mflo    $a1
/* 1D730 8002E7D0 00000000 */  nop
/* 1D734 8002E7D4 00000000 */  nop
/* 1D738 8002E7D8 00AD0019 */  multu   $a1, $t5
/* 1D73C 8002E7DC 00007012 */  mflo    $t6
/* 1D740 8002E7E0 00000000 */  nop
/* 1D744 8002E7E4 00000000 */  nop
/* 1D748 8002E7E8 01C80019 */  multu   $t6, $t0
/* 1D74C 8002E7EC 00007812 */  mflo    $t7
/* 1D750 8002E7F0 01E6C021 */  addu    $t8, $t7, $a2
/* 1D754 8002E7F4 0058082B */  sltu    $at, $v0, $t8
/* 1D758 8002E7F8 5420FFED */  bnel    $at, $zero, .L8002E7B0
/* 1D75C 8002E7FC A4430000 */  sh      $v1, 0x0000($v0)           ## 00000006
/* 1D760 8002E800 94E30014 */  lhu     $v1, 0x0014($a3)           ## 00000014
.L8002E804:
/* 1D764 8002E804 8CF40010 */  lw      $s4, 0x0010($a3)           ## 00000010
/* 1D768 8002E808 8CF50018 */  lw      $s5, 0x0018($a3)           ## 00000018
/* 1D76C 8002E80C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 1D770 8002E810 AFA50098 */  sw      $a1, 0x0098($sp)
/* 1D774 8002E814 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 1D778 8002E818 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 1D77C 8002E81C C646002C */  lwc1    $f6, 0x002C($s2)           ## 0000002C
/* 1D780 8002E820 C6480030 */  lwc1    $f8, 0x0030($s2)           ## 00000030
/* 1D784 8002E824 46002580 */  add.s   $f22, $f4, $f0
/* 1D788 8002E828 46003600 */  add.s   $f24, $f6, $f0
/* 1D78C 8002E82C 186000A5 */  blez    $v1, .L8002EAC4
/* 1D790 8002E830 46004680 */  add.s   $f26, $f8, $f0
/* 1D794 8002E834 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 1D798 8002E838 4481A000 */  mtc1    $at, $f20                  ## $f20 = 50.00
/* 1D79C 8002E83C AFA000E8 */  sw      $zero, 0x00E8($sp)
/* 1D7A0 8002E840 AFA300EC */  sw      $v1, 0x00EC($sp)
/* 1D7A4 8002E844 AFA60100 */  sw      $a2, 0x0100($sp)
.L8002E848:
/* 1D7A8 8002E848 8FA200E8 */  lw      $v0, 0x00E8($sp)
/* 1D7AC 8002E84C 27B900D4 */  addiu   $t9, $sp, 0x00D4           ## $t9 = FFFFFFDC
/* 1D7B0 8002E850 27A900D0 */  addiu   $t1, $sp, 0x00D0           ## $t1 = FFFFFFD8
/* 1D7B4 8002E854 00029C00 */  sll     $s3, $v0, 16
/* 1D7B8 8002E858 00139C03 */  sra     $s3, $s3, 16
/* 1D7BC 8002E85C 27AA00CC */  addiu   $t2, $sp, 0x00CC           ## $t2 = FFFFFFD4
/* 1D7C0 8002E860 27AB00C8 */  addiu   $t3, $sp, 0x00C8           ## $t3 = FFFFFFD0
/* 1D7C4 8002E864 27AC00C4 */  addiu   $t4, $sp, 0x00C4           ## $t4 = FFFFFFCC
/* 1D7C8 8002E868 AFAC0020 */  sw      $t4, 0x0020($sp)
/* 1D7CC 8002E86C AFAB001C */  sw      $t3, 0x001C($sp)
/* 1D7D0 8002E870 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 1D7D4 8002E874 AFB30024 */  sw      $s3, 0x0024($sp)
/* 1D7D8 8002E878 AFA90014 */  sw      $t1, 0x0014($sp)
/* 1D7DC 8002E87C AFB90010 */  sw      $t9, 0x0010($sp)
/* 1D7E0 8002E880 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 1D7E4 8002E884 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 1D7E8 8002E888 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 00000000
/* 1D7EC 8002E88C 0C00B782 */  jal     func_8002DE08
/* 1D7F0 8002E890 27A700D8 */  addiu   $a3, $sp, 0x00D8           ## $a3 = FFFFFFE0
/* 1D7F4 8002E894 8FA400D0 */  lw      $a0, 0x00D0($sp)
/* 1D7F8 8002E898 C64A0030 */  lwc1    $f10, 0x0030($s2)          ## 00000030
/* 1D7FC 8002E89C 8FAE0098 */  lw      $t6, 0x0098($sp)
/* 1D800 8002E8A0 44848000 */  mtc1    $a0, $f16                  ## $f16 = 0.00
/* 1D804 8002E8A4 C646000C */  lwc1    $f6, 0x000C($s2)           ## 0000000C
/* 1D808 8002E8A8 008E0019 */  multu   $a0, $t6
/* 1D80C 8002E8AC 468084A0 */  cvt.s.w $f18, $f16
/* 1D810 8002E8B0 8FA200C4 */  lw      $v0, 0x00C4($sp)
/* 1D814 8002E8B4 8FB90100 */  lw      $t9, 0x0100($sp)
/* 1D818 8002E8B8 8FA300C8 */  lw      $v1, 0x00C8($sp)
/* 1D81C 8002E8BC 000E4880 */  sll     $t1, $t6,  2
/* 1D820 8002E8C0 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 1D824 8002E8C4 46125102 */  mul.s   $f4, $f10, $f18
/* 1D828 8002E8C8 0082082A */  slt     $at, $a0, $v0
/* 1D82C 8002E8CC 012E4823 */  subu    $t1, $t1, $t6
/* 1D830 8002E8D0 00007812 */  mflo    $t7
/* 1D834 8002E8D4 000FC080 */  sll     $t8, $t7,  2
/* 1D838 8002E8D8 030FC023 */  subu    $t8, $t8, $t7
/* 1D83C 8002E8DC 0018C040 */  sll     $t8, $t8,  1
/* 1D840 8002E8E0 46062200 */  add.s   $f8, $f4, $f6
/* 1D844 8002E8E4 00094840 */  sll     $t1, $t1,  1
/* 1D848 8002E8E8 03192821 */  addu    $a1, $t8, $t9
/* 1D84C 8002E8EC 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 1D850 8002E8F0 46144401 */  sub.s   $f16, $f8, $f20
/* 1D854 8002E8F4 461A8280 */  add.s   $f10, $f16, $f26
/* 1D858 8002E8F8 E7B000C0 */  swc1    $f16, 0x00C0($sp)
/* 1D85C 8002E8FC 1020006C */  beq     $at, $zero, .L8002EAB0
/* 1D860 8002E900 E7AA00B4 */  swc1    $f10, 0x00B4($sp)
/* 1D864 8002E904 AFA9007C */  sw      $t1, 0x007C($sp)
.L8002E908:
/* 1D868 8002E908 8FAB00D4 */  lw      $t3, 0x00D4($sp)
/* 1D86C 8002E90C C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 1D870 8002E910 8E4A001C */  lw      $t2, 0x001C($s2)           ## 0000001C
/* 1D874 8002E914 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 1D878 8002E918 C6500008 */  lwc1    $f16, 0x0008($s2)          ## 00000008
/* 1D87C 8002E91C 014B0019 */  multu   $t2, $t3
/* 1D880 8002E920 468021A0 */  cvt.s.w $f6, $f4
/* 1D884 8002E924 0163082A */  slt     $at, $t3, $v1
/* 1D888 8002E928 AFAB00E0 */  sw      $t3, 0x00E0($sp)
/* 1D88C 8002E92C 46069202 */  mul.s   $f8, $f18, $f6
/* 1D890 8002E930 00006012 */  mflo    $t4
/* 1D894 8002E934 000C7880 */  sll     $t7, $t4,  2
/* 1D898 8002E938 01EC7823 */  subu    $t7, $t7, $t4
/* 1D89C 8002E93C 000F7840 */  sll     $t7, $t7,  1
/* 1D8A0 8002E940 46104280 */  add.s   $f10, $f8, $f16
/* 1D8A4 8002E944 01E5F021 */  addu    $s8, $t7, $a1
/* 1D8A8 8002E948 46145101 */  sub.s   $f4, $f10, $f20
/* 1D8AC 8002E94C 46182480 */  add.s   $f18, $f4, $f24
/* 1D8B0 8002E950 E7A400BC */  swc1    $f4, 0x00BC($sp)
/* 1D8B4 8002E954 10200049 */  beq     $at, $zero, .L8002EA7C
/* 1D8B8 8002E958 E7B200B0 */  swc1    $f18, 0x00B0($sp)
/* 1D8BC 8002E95C 8FA200CC */  lw      $v0, 0x00CC($sp)
/* 1D8C0 8002E960 AFA400DC */  sw      $a0, 0x00DC($sp)
/* 1D8C4 8002E964 AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 1D8C8 8002E968 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000002
.L8002E96C:
/* 1D8CC 8002E96C 8FB100D8 */  lw      $s1, 0x00D8($sp)
/* 1D8D0 8002E970 C6460028 */  lwc1    $f6, 0x0028($s2)           ## 00000028
/* 1D8D4 8002E974 C6440004 */  lwc1    $f4, 0x0004($s2)           ## 00000004
/* 1D8D8 8002E978 44914000 */  mtc1    $s1, $f8                   ## $f8 = 0.00
/* 1D8DC 8002E97C 0011C880 */  sll     $t9, $s1,  2
/* 1D8E0 8002E980 0331C823 */  subu    $t9, $t9, $s1
/* 1D8E4 8002E984 46804420 */  cvt.s.w $f16, $f8
/* 1D8E8 8002E988 0019C840 */  sll     $t9, $t9,  1
/* 1D8EC 8002E98C 0222082A */  slt     $at, $s1, $v0
/* 1D8F0 8002E990 033E8021 */  addu    $s0, $t9, $s8
/* 1D8F4 8002E994 46103282 */  mul.s   $f10, $f6, $f16
/* 1D8F8 8002E998 46045480 */  add.s   $f18, $f10, $f4
/* 1D8FC 8002E99C 46149201 */  sub.s   $f8, $f18, $f20
/* 1D900 8002E9A0 46164180 */  add.s   $f6, $f8, $f22
/* 1D904 8002E9A4 E7A800B8 */  swc1    $f8, 0x00B8($sp)
/* 1D908 8002E9A8 1020001E */  beq     $at, $zero, .L8002EA24
/* 1D90C 8002E9AC E7A600AC */  swc1    $f6, 0x00AC($sp)
.L8002E9B0:
/* 1D910 8002E9B0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = FFFFFFC0
/* 1D914 8002E9B4 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFB4
/* 1D918 8002E9B8 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 00000000
/* 1D91C 8002E9BC 02803825 */  or      $a3, $s4, $zero            ## $a3 = 00000000
/* 1D920 8002E9C0 0C00B7EE */  jal     func_8002DFB8
/* 1D924 8002E9C4 AFB30010 */  sw      $s3, 0x0010($sp)
/* 1D928 8002E9C8 10400006 */  beq     $v0, $zero, .L8002E9E4
/* 1D92C 8002E9CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D930 8002E9D0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 1D934 8002E9D4 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 00000000
/* 1D938 8002E9D8 02803825 */  or      $a3, $s4, $zero            ## $a3 = 00000000
/* 1D93C 8002E9DC 0C00B09F */  jal     func_8002C27C
/* 1D940 8002E9E0 AFB30010 */  sw      $s3, 0x0010($sp)
.L8002E9E4:
/* 1D944 8002E9E4 C7B000B8 */  lwc1    $f16, 0x00B8($sp)
/* 1D948 8002E9E8 C64A0028 */  lwc1    $f10, 0x0028($s2)          ## 00000028
/* 1D94C 8002E9EC C7B200AC */  lwc1    $f18, 0x00AC($sp)
/* 1D950 8002E9F0 8FA200CC */  lw      $v0, 0x00CC($sp)
/* 1D954 8002E9F4 460A8100 */  add.s   $f4, $f16, $f10
/* 1D958 8002E9F8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 1D95C 8002E9FC 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 1D960 8002EA00 0222082A */  slt     $at, $s1, $v0
/* 1D964 8002EA04 E7A400B8 */  swc1    $f4, 0x00B8($sp)
/* 1D968 8002EA08 C6480028 */  lwc1    $f8, 0x0028($s2)           ## 00000028
/* 1D96C 8002EA0C 26100006 */  addiu   $s0, $s0, 0x0006           ## $s0 = 00000006
/* 1D970 8002EA10 46089180 */  add.s   $f6, $f18, $f8
/* 1D974 8002EA14 1420FFE6 */  bne     $at, $zero, .L8002E9B0
/* 1D978 8002EA18 E7A600AC */  swc1    $f6, 0x00AC($sp)
/* 1D97C 8002EA1C 8FA300C8 */  lw      $v1, 0x00C8($sp)
/* 1D980 8002EA20 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
.L8002EA24:
/* 1D984 8002EA24 C7B000BC */  lwc1    $f16, 0x00BC($sp)
/* 1D988 8002EA28 C64A002C */  lwc1    $f10, 0x002C($s2)          ## 0000002C
/* 1D98C 8002EA2C C7B200B0 */  lwc1    $f18, 0x00B0($sp)
/* 1D990 8002EA30 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 1D994 8002EA34 460A8100 */  add.s   $f4, $f16, $f10
/* 1D998 8002EA38 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
/* 1D99C 8002EA3C 0083082A */  slt     $at, $a0, $v1
/* 1D9A0 8002EA40 E7A400BC */  swc1    $f4, 0x00BC($sp)
/* 1D9A4 8002EA44 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 1D9A8 8002EA48 46089180 */  add.s   $f6, $f18, $f8
/* 1D9AC 8002EA4C E7A600B0 */  swc1    $f6, 0x00B0($sp)
/* 1D9B0 8002EA50 8E4D001C */  lw      $t5, 0x001C($s2)           ## 0000001C
/* 1D9B4 8002EA54 AFA400E0 */  sw      $a0, 0x00E0($sp)
/* 1D9B8 8002EA58 000D7080 */  sll     $t6, $t5,  2
/* 1D9BC 8002EA5C 01CD7023 */  subu    $t6, $t6, $t5
/* 1D9C0 8002EA60 000E7040 */  sll     $t6, $t6,  1
/* 1D9C4 8002EA64 1420FFC1 */  bne     $at, $zero, .L8002E96C
/* 1D9C8 8002EA68 03CEF021 */  addu    $s8, $s8, $t6
/* 1D9CC 8002EA6C 8FA200C4 */  lw      $v0, 0x00C4($sp)
/* 1D9D0 8002EA70 8FA500A4 */  lw      $a1, 0x00A4($sp)
/* 1D9D4 8002EA74 8FA400DC */  lw      $a0, 0x00DC($sp)
/* 1D9D8 8002EA78 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000002
.L8002EA7C:
/* 1D9DC 8002EA7C C7B000C0 */  lwc1    $f16, 0x00C0($sp)
/* 1D9E0 8002EA80 C64A0030 */  lwc1    $f10, 0x0030($s2)          ## 00000030
/* 1D9E4 8002EA84 C7B200B4 */  lwc1    $f18, 0x00B4($sp)
/* 1D9E8 8002EA88 8FA9007C */  lw      $t1, 0x007C($sp)
/* 1D9EC 8002EA8C 460A8100 */  add.s   $f4, $f16, $f10
/* 1D9F0 8002EA90 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000002
/* 1D9F4 8002EA94 0082082A */  slt     $at, $a0, $v0
/* 1D9F8 8002EA98 00A92821 */  addu    $a1, $a1, $t1
/* 1D9FC 8002EA9C E7A400C0 */  swc1    $f4, 0x00C0($sp)
/* 1DA00 8002EAA0 C6480030 */  lwc1    $f8, 0x0030($s2)           ## 00000030
/* 1DA04 8002EAA4 46089180 */  add.s   $f6, $f18, $f8
/* 1DA08 8002EAA8 1420FF97 */  bne     $at, $zero, .L8002E908
/* 1DA0C 8002EAAC E7A600B4 */  swc1    $f6, 0x00B4($sp)
.L8002EAB0:
/* 1DA10 8002EAB0 8FA200E8 */  lw      $v0, 0x00E8($sp)
/* 1DA14 8002EAB4 8FAA00EC */  lw      $t2, 0x00EC($sp)
/* 1DA18 8002EAB8 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000003
/* 1DA1C 8002EABC 144AFF62 */  bne     $v0, $t2, .L8002E848
/* 1DA20 8002EAC0 AFA200E8 */  sw      $v0, 0x00E8($sp)
.L8002EAC4:
/* 1DA24 8002EAC4 96420046 */  lhu     $v0, 0x0046($s2)           ## 00000046
/* 1DA28 8002EAC8 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 1DA2C 8002EACC D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 1DA30 8002EAD0 00021080 */  sll     $v0, $v0,  2
/* 1DA34 8002EAD4 8FBF0074 */  lw      $ra, 0x0074($sp)
/* 1DA38 8002EAD8 D7B80040 */  ldc1    $f24, 0x0040($sp)
/* 1DA3C 8002EADC D7BA0048 */  ldc1    $f26, 0x0048($sp)
/* 1DA40 8002EAE0 8FB00050 */  lw      $s0, 0x0050($sp)
/* 1DA44 8002EAE4 8FB10054 */  lw      $s1, 0x0054($sp)
/* 1DA48 8002EAE8 8FB20058 */  lw      $s2, 0x0058($sp)
/* 1DA4C 8002EAEC 8FB3005C */  lw      $s3, 0x005C($sp)
/* 1DA50 8002EAF0 8FB40060 */  lw      $s4, 0x0060($sp)
/* 1DA54 8002EAF4 8FB50064 */  lw      $s5, 0x0064($sp)
/* 1DA58 8002EAF8 8FB60068 */  lw      $s6, 0x0068($sp)
/* 1DA5C 8002EAFC 8FB7006C */  lw      $s7, 0x006C($sp)
/* 1DA60 8002EB00 8FBE0070 */  lw      $s8, 0x0070($sp)
/* 1DA64 8002EB04 03E00008 */  jr      $ra
/* 1DA68 8002EB08 27BD00F8 */  addiu   $sp, $sp, 0x00F8           ## $sp = 00000000


glabel func_8002EB0C
/* 1DA6C 8002EB0C 848300A4 */  lh      $v1, 0x00A4($a0)           ## 000000A4
/* 1DA70 8002EB10 3C04800F */  lui     $a0, 0x800F                ## $a0 = 800F0000
/* 1DA74 8002EB14 3C02800F */  lui     $v0, 0x800F                ## $v0 = 800F0000
/* 1DA78 8002EB18 2442C0BC */  addiu   $v0, $v0, 0xC0BC           ## $v0 = 800EC0BC
/* 1DA7C 8002EB1C 2484C0E2 */  addiu   $a0, $a0, 0xC0E2           ## $a0 = 800EC0E2
/* 1DA80 8002EB20 844E0000 */  lh      $t6, 0x0000($v0)           ## 800EC0BC
.L8002EB24:
/* 1DA84 8002EB24 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 800EC0BE
/* 1DA88 8002EB28 0044082B */  sltu    $at, $v0, $a0
/* 1DA8C 8002EB2C 146E0003 */  bne     $v1, $t6, .L8002EB3C
/* 1DA90 8002EB30 00000000 */  nop
/* 1DA94 8002EB34 03E00008 */  jr      $ra
/* 1DA98 8002EB38 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8002EB3C:
/* 1DA9C 8002EB3C 5420FFF9 */  bnel    $at, $zero, .L8002EB24
/* 1DAA0 8002EB40 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000001
/* 1DAA4 8002EB44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1DAA8 8002EB48 03E00008 */  jr      $ra
/* 1DAAC 8002EB4C 00000000 */  nop


glabel func_8002EB50
/* 1DAB0 8002EB50 3C03800F */  lui     $v1, 0x800F                ## $v1 = 800F0000
/* 1DAB4 8002EB54 3C02800F */  lui     $v0, 0x800F                ## $v0 = 800F0000
/* 1DAB8 8002EB58 2442C124 */  addiu   $v0, $v0, 0xC124           ## $v0 = 800EC124
/* 1DABC 8002EB5C 2463C0E4 */  addiu   $v1, $v1, 0xC0E4           ## $v1 = 800EC0E4
/* 1DAC0 8002EB60 846E0000 */  lh      $t6, 0x0000($v1)           ## 800EC0E4
.L8002EB64:
/* 1DAC4 8002EB64 548E0006 */  bnel    $a0, $t6, .L8002EB80
/* 1DAC8 8002EB68 84780008 */  lh      $t8, 0x0008($v1)           ## 800EC0EC
/* 1DACC 8002EB6C 8C6F0004 */  lw      $t7, 0x0004($v1)           ## 800EC0E8
/* 1DAD0 8002EB70 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1DAD4 8002EB74 03E00008 */  jr      $ra
/* 1DAD8 8002EB78 ACAF0000 */  sw      $t7, 0x0000($a1)           ## 00000000
.L8002EB7C:
/* 1DADC 8002EB7C 84780008 */  lh      $t8, 0x0008($v1)           ## 800EC0EC
.L8002EB80:
/* 1DAE0 8002EB80 54980006 */  bnel    $a0, $t8, .L8002EB9C
/* 1DAE4 8002EB84 84680010 */  lh      $t0, 0x0010($v1)           ## 800EC0F4
/* 1DAE8 8002EB88 8C79000C */  lw      $t9, 0x000C($v1)           ## 800EC0F0
/* 1DAEC 8002EB8C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1DAF0 8002EB90 03E00008 */  jr      $ra
/* 1DAF4 8002EB94 ACB90000 */  sw      $t9, 0x0000($a1)           ## 00000000
.L8002EB98:
/* 1DAF8 8002EB98 84680010 */  lh      $t0, 0x0010($v1)           ## 800EC0F4
.L8002EB9C:
/* 1DAFC 8002EB9C 54880006 */  bnel    $a0, $t0, .L8002EBB8
/* 1DB00 8002EBA0 846A0018 */  lh      $t2, 0x0018($v1)           ## 800EC0FC
/* 1DB04 8002EBA4 8C690014 */  lw      $t1, 0x0014($v1)           ## 800EC0F8
/* 1DB08 8002EBA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1DB0C 8002EBAC 03E00008 */  jr      $ra
/* 1DB10 8002EBB0 ACA90000 */  sw      $t1, 0x0000($a1)           ## 00000000
.L8002EBB4:
/* 1DB14 8002EBB4 846A0018 */  lh      $t2, 0x0018($v1)           ## 800EC0FC
.L8002EBB8:
/* 1DB18 8002EBB8 548A0006 */  bnel    $a0, $t2, .L8002EBD4
/* 1DB1C 8002EBBC 24630020 */  addiu   $v1, $v1, 0x0020           ## $v1 = 800EC104
/* 1DB20 8002EBC0 8C6B001C */  lw      $t3, 0x001C($v1)           ## 800EC120
/* 1DB24 8002EBC4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1DB28 8002EBC8 03E00008 */  jr      $ra
/* 1DB2C 8002EBCC ACAB0000 */  sw      $t3, 0x0000($a1)           ## 00000000
.L8002EBD0:
/* 1DB30 8002EBD0 24630020 */  addiu   $v1, $v1, 0x0020           ## $v1 = 800EC124
.L8002EBD4:
/* 1DB34 8002EBD4 5462FFE3 */  bnel    $v1, $v0, .L8002EB64
/* 1DB38 8002EBD8 846E0000 */  lh      $t6, 0x0000($v1)           ## 800EC124
/* 1DB3C 8002EBDC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 1DB40 8002EBE0 03E00008 */  jr      $ra
/* 1DB44 8002EBE4 00000000 */  nop


glabel func_8002EBE8
/* 1DB48 8002EBE8 44853000 */  mtc1    $a1, $f6                   ## $f6 = 0.00
/* 1DB4C 8002EBEC 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 1DB50 8002EBF0 44818000 */  mtc1    $at, $f16                  ## $f16 = 150.00
/* 1DB54 8002EBF4 468030A0 */  cvt.s.w $f2, $f6
/* 1DB58 8002EBF8 C4C40000 */  lwc1    $f4, 0x0000($a2)           ## 00000000
/* 1DB5C 8002EBFC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1DB60 8002EC00 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 1DB64 8002EC04 460C2001 */  sub.s   $f0, $f4, $f12
/* 1DB68 8002EC08 46020203 */  div.s   $f8, $f0, $f2
/* 1DB6C 8002EC0C 4600428D */  trunc.w.s $f10, $f8
/* 1DB70 8002EC10 440F5000 */  mfc1    $t7, $f10
/* 1DB74 8002EC14 00000000 */  nop
/* 1DB78 8002EC18 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 1DB7C 8002EC1C 44989000 */  mtc1    $t8, $f18                  ## $f18 = 0.00
/* 1DB80 8002EC20 00000000 */  nop
/* 1DB84 8002EC24 468093A0 */  cvt.s.w $f14, $f18
/* 1DB88 8002EC28 4610703C */  c.lt.s  $f14, $f16
/* 1DB8C 8002EC2C E4EE0000 */  swc1    $f14, 0x0000($a3)          ## 00000000
/* 1DB90 8002EC30 45020004 */  bc1fl   .L8002EC44
/* 1DB94 8002EC34 C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
/* 1DB98 8002EC38 10000003 */  beq     $zero, $zero, .L8002EC48
/* 1DB9C 8002EC3C E4F00000 */  swc1    $f16, 0x0000($a3)          ## 00000000
/* 1DBA0 8002EC40 C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
.L8002EC44:
/* 1DBA4 8002EC44 E4E40000 */  swc1    $f4, 0x0000($a3)           ## 00000000
.L8002EC48:
/* 1DBA8 8002EC48 C4E80000 */  lwc1    $f8, 0x0000($a3)           ## 00000000
/* 1DBAC 8002EC4C 8FB90010 */  lw      $t9, 0x0010($sp)
/* 1DBB0 8002EC50 46083283 */  div.s   $f10, $f6, $f8
/* 1DBB4 8002EC54 E72A0000 */  swc1    $f10, 0x0000($t9)          ## 00000000
/* 1DBB8 8002EC58 C4F20000 */  lwc1    $f18, 0x0000($a3)          ## 00000000
/* 1DBBC 8002EC5C 46029102 */  mul.s   $f4, $f18, $f2
/* 1DBC0 8002EC60 460C2180 */  add.s   $f6, $f4, $f12
/* 1DBC4 8002EC64 E4C60000 */  swc1    $f6, 0x0000($a2)           ## 00000000
/* 1DBC8 8002EC68 03E00008 */  jr      $ra
/* 1DBCC 8002EC6C 00000000 */  nop


glabel func_8002EC70
/* 1DBD0 8002EC70 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 1DBD4 8002EC74 AFB10020 */  sw      $s1, 0x0020($sp)
/* 1DBD8 8002EC78 AFB0001C */  sw      $s0, 0x001C($sp)
/* 1DBDC 8002EC7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1DBE0 8002EC80 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 1DBE4 8002EC84 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1DBE8 8002EC88 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 1DBEC 8002EC8C AE060000 */  sw      $a2, 0x0000($s0)           ## 00000000
/* 1DBF0 8002EC90 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 1DBF4 8002EC94 8DCEBA00 */  lw      $t6, -0x4600($t6)          ## 8011BA00
/* 1DBF8 8002EC98 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 1DBFC 8002EC9C 85C204B2 */  lh      $v0, 0x04B2($t6)           ## 801204B2
/* 1DC00 8002ECA0 10E20007 */  beq     $a3, $v0, .L8002ECC0
/* 1DC04 8002ECA4 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 1DC08 8002ECA8 10410005 */  beq     $v0, $at, .L8002ECC0
/* 1DC0C 8002ECAC 24010030 */  addiu   $at, $zero, 0x0030         ## $at = 00000030
/* 1DC10 8002ECB0 10410003 */  beq     $v0, $at, .L8002ECC0
/* 1DC14 8002ECB4 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 1DC18 8002ECB8 14410013 */  bne     $v0, $at, .L8002ED08
/* 1DC1C 8002ECBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L8002ECC0:
/* 1DC20 8002ECC0 862F00A4 */  lh      $t7, 0x00A4($s1)           ## 000000A4
/* 1DC24 8002ECC4 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
/* 1DC28 8002ECC8 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 1DC2C 8002ECCC 15E10004 */  bne     $t7, $at, .L8002ECE0
/* 1DC30 8002ECD0 24030100 */  addiu   $v1, $zero, 0x0100         ## $v1 = 00000100
/* 1DC34 8002ECD4 24183520 */  addiu   $t8, $zero, 0x3520         ## $t8 = 00003520
/* 1DC38 8002ECD8 10000003 */  beq     $zero, $zero, .L8002ECE8
/* 1DC3C 8002ECDC AE181460 */  sw      $t8, 0x1460($s0)           ## 00001460
.L8002ECE0:
/* 1DC40 8002ECE0 24194E20 */  addiu   $t9, $zero, 0x4E20         ## $t9 = 00004E20
/* 1DC44 8002ECE4 AE191460 */  sw      $t9, 0x1460($s0)           ## 00001460
.L8002ECE8:
/* 1DC48 8002ECE8 240901F4 */  addiu   $t1, $zero, 0x01F4         ## $t1 = 000001F4
/* 1DC4C 8002ECEC AE091454 */  sw      $t1, 0x1454($s0)           ## 00001454
/* 1DC50 8002ECF0 AE031458 */  sw      $v1, 0x1458($s0)           ## 00001458
/* 1DC54 8002ECF4 AE03145C */  sw      $v1, 0x145C($s0)           ## 0000145C
/* 1DC58 8002ECF8 AE02001C */  sw      $v0, 0x001C($s0)           ## 0000001C
/* 1DC5C 8002ECFC AE020020 */  sw      $v0, 0x0020($s0)           ## 00000020
/* 1DC60 8002ED00 1000003E */  beq     $zero, $zero, .L8002EDFC
/* 1DC64 8002ED04 AE020024 */  sw      $v0, 0x0024($s0)           ## 00000024
.L8002ED08:
/* 1DC68 8002ED08 0C00BAC3 */  jal     func_8002EB0C
/* 1DC6C 8002ED0C AFA80040 */  sw      $t0, 0x0040($sp)
/* 1DC70 8002ED10 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1DC74 8002ED14 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 1DC78 8002ED18 1441000D */  bne     $v0, $at, .L8002ED50
/* 1DC7C 8002ED1C 8FA80040 */  lw      $t0, 0x0040($sp)
/* 1DC80 8002ED20 24050200 */  addiu   $a1, $zero, 0x0200         ## $a1 = 00000200
/* 1DC84 8002ED24 340AF000 */  ori     $t2, $zero, 0xF000         ## $t2 = 0000F000
/* 1DC88 8002ED28 240B03E8 */  addiu   $t3, $zero, 0x03E8         ## $t3 = 000003E8
/* 1DC8C 8002ED2C 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 1DC90 8002ED30 AE0A1460 */  sw      $t2, 0x1460($s0)           ## 00001460
/* 1DC94 8002ED34 AE0B1454 */  sw      $t3, 0x1454($s0)           ## 00001454
/* 1DC98 8002ED38 AE051458 */  sw      $a1, 0x1458($s0)           ## 00001458
/* 1DC9C 8002ED3C AE05145C */  sw      $a1, 0x145C($s0)           ## 0000145C
/* 1DCA0 8002ED40 AE07001C */  sw      $a3, 0x001C($s0)           ## 0000001C
/* 1DCA4 8002ED44 AE0C0020 */  sw      $t4, 0x0020($s0)           ## 00000020
/* 1DCA8 8002ED48 1000002C */  beq     $zero, $zero, .L8002EDFC
/* 1DCAC 8002ED4C AE070024 */  sw      $a3, 0x0024($s0)           ## 00000024
.L8002ED50:
/* 1DCB0 8002ED50 862400A4 */  lh      $a0, 0x00A4($s1)           ## 000000A4
/* 1DCB4 8002ED54 AFA80040 */  sw      $t0, 0x0040($sp)
/* 1DCB8 8002ED58 0C00BAD4 */  jal     func_8002EB50
/* 1DCBC 8002ED5C 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE8
/* 1DCC0 8002ED60 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 1DCC4 8002ED64 10400004 */  beq     $v0, $zero, .L8002ED78
/* 1DCC8 8002ED68 8FA80040 */  lw      $t0, 0x0040($sp)
/* 1DCCC 8002ED6C 8FAD0038 */  lw      $t5, 0x0038($sp)
/* 1DCD0 8002ED70 10000004 */  beq     $zero, $zero, .L8002ED84
/* 1DCD4 8002ED74 AE0D1460 */  sw      $t5, 0x1460($s0)           ## 00001460
.L8002ED78:
/* 1DCD8 8002ED78 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 1DCDC 8002ED7C 35CECC00 */  ori     $t6, $t6, 0xCC00           ## $t6 = 0001CC00
/* 1DCE0 8002ED80 AE0E1460 */  sw      $t6, 0x1460($s0)           ## 00001460
.L8002ED84:
/* 1DCE4 8002ED84 24050200 */  addiu   $a1, $zero, 0x0200         ## $a1 = 00000200
/* 1DCE8 8002ED88 240F03E8 */  addiu   $t7, $zero, 0x03E8         ## $t7 = 000003E8
/* 1DCEC 8002ED8C 3C02800F */  lui     $v0, 0x800F                ## $v0 = 800F0000
/* 1DCF0 8002ED90 3C03800F */  lui     $v1, 0x800F                ## $v1 = 800F0000
/* 1DCF4 8002ED94 AE0F1454 */  sw      $t7, 0x1454($s0)           ## 00001454
/* 1DCF8 8002ED98 AE051458 */  sw      $a1, 0x1458($s0)           ## 00001458
/* 1DCFC 8002ED9C AE05145C */  sw      $a1, 0x145C($s0)           ## 0000145C
/* 1DD00 8002EDA0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1DD04 8002EDA4 2463C13C */  addiu   $v1, $v1, 0xC13C           ## $v1 = 800EC13C
/* 1DD08 8002EDA8 2442C124 */  addiu   $v0, $v0, 0xC124           ## $v0 = 800EC124
/* 1DD0C 8002EDAC 863800A4 */  lh      $t8, 0x00A4($s1)           ## 000000A4
.L8002EDB0:
/* 1DD10 8002EDB0 84590000 */  lh      $t9, 0x0000($v0)           ## 800EC124
/* 1DD14 8002EDB4 5719000A */  bnel    $t8, $t9, .L8002EDE0
/* 1DD18 8002EDB8 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = 800EC130
/* 1DD1C 8002EDBC 84490002 */  lh      $t1, 0x0002($v0)           ## 800EC132
/* 1DD20 8002EDC0 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 1DD24 8002EDC4 AE09001C */  sw      $t1, 0x001C($s0)           ## 0000001C
/* 1DD28 8002EDC8 844A0004 */  lh      $t2, 0x0004($v0)           ## 800EC134
/* 1DD2C 8002EDCC AE0A0020 */  sw      $t2, 0x0020($s0)           ## 00000020
/* 1DD30 8002EDD0 844B0006 */  lh      $t3, 0x0006($v0)           ## 800EC136
/* 1DD34 8002EDD4 AE0B0024 */  sw      $t3, 0x0024($s0)           ## 00000024
/* 1DD38 8002EDD8 8C480008 */  lw      $t0, 0x0008($v0)           ## 800EC138
/* 1DD3C 8002EDDC 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = 800EC13C
.L8002EDE0:
/* 1DD40 8002EDE0 5443FFF3 */  bnel    $v0, $v1, .L8002EDB0
/* 1DD44 8002EDE4 863800A4 */  lh      $t8, 0x00A4($s1)           ## 000000A4
/* 1DD48 8002EDE8 14800004 */  bne     $a0, $zero, .L8002EDFC
/* 1DD4C 8002EDEC 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 1DD50 8002EDF0 AE07001C */  sw      $a3, 0x001C($s0)           ## 0000001C
/* 1DD54 8002EDF4 AE0C0020 */  sw      $t4, 0x0020($s0)           ## 00000020
/* 1DD58 8002EDF8 AE070024 */  sw      $a3, 0x0024($s0)           ## 00000024
.L8002EDFC:
/* 1DD5C 8002EDFC 8E0D001C */  lw      $t5, 0x001C($s0)           ## 0000001C
/* 1DD60 8002EE00 8E0F0020 */  lw      $t7, 0x0020($s0)           ## 00000020
/* 1DD64 8002EE04 8E190024 */  lw      $t9, 0x0024($s0)           ## 00000024
/* 1DD68 8002EE08 000D7080 */  sll     $t6, $t5,  2
/* 1DD6C 8002EE0C 01CD7023 */  subu    $t6, $t6, $t5
/* 1DD70 8002EE10 000E7040 */  sll     $t6, $t6,  1
/* 1DD74 8002EE14 01CF0019 */  multu   $t6, $t7
/* 1DD78 8002EE18 AFA80040 */  sw      $t0, 0x0040($sp)
/* 1DD7C 8002EE1C 26240074 */  addiu   $a0, $s1, 0x0074           ## $a0 = 00000074
/* 1DD80 8002EE20 2406FFFE */  addiu   $a2, $zero, 0xFFFE         ## $a2 = FFFFFFFE
/* 1DD84 8002EE24 0000C012 */  mflo    $t8
/* 1DD88 8002EE28 00000000 */  nop
/* 1DD8C 8002EE2C 00000000 */  nop
/* 1DD90 8002EE30 03190019 */  multu   $t8, $t9
/* 1DD94 8002EE34 00002812 */  mflo    $a1
/* 1DD98 8002EE38 0C028076 */  jal     func_800A01D8
/* 1DD9C 8002EE3C 00000000 */  nop
/* 1DDA0 8002EE40 8FA80040 */  lw      $t0, 0x0040($sp)
/* 1DDA4 8002EE44 14400007 */  bne     $v0, $zero, .L8002EE64
/* 1DDA8 8002EE48 AE020040 */  sw      $v0, 0x0040($s0)           ## 00000040
/* 1DDAC 8002EE4C 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 1DDB0 8002EE50 24846A50 */  addiu   $a0, $a0, 0x6A50           ## $a0 = 80106A50
/* 1DDB4 8002EE54 2405104D */  addiu   $a1, $zero, 0x104D         ## $a1 = 0000104D
/* 1DDB8 8002EE58 0C0006CE */  jal     LogUtils_HungupThread
/* 1DDBC 8002EE5C AFA80040 */  sw      $t0, 0x0040($sp)
/* 1DDC0 8002EE60 8FA80040 */  lw      $t0, 0x0040($sp)
.L8002EE64:
/* 1DDC4 8002EE64 8E020000 */  lw      $v0, 0x0000($s0)           ## 00000000
/* 1DDC8 8002EE68 8E05001C */  lw      $a1, 0x001C($s0)           ## 0000001C
/* 1DDCC 8002EE6C 260F0034 */  addiu   $t7, $s0, 0x0034           ## $t7 = 00000034
/* 1DDD0 8002EE70 84490000 */  lh      $t1, 0x0000($v0)           ## 00000000
/* 1DDD4 8002EE74 26060010 */  addiu   $a2, $s0, 0x0010           ## $a2 = 00000010
/* 1DDD8 8002EE78 26070028 */  addiu   $a3, $s0, 0x0028           ## $a3 = 00000028
/* 1DDDC 8002EE7C 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 1DDE0 8002EE80 00000000 */  nop
/* 1DDE4 8002EE84 468021A0 */  cvt.s.w $f6, $f4
/* 1DDE8 8002EE88 E6060004 */  swc1    $f6, 0x0004($s0)           ## 00000004
/* 1DDEC 8002EE8C 844A0002 */  lh      $t2, 0x0002($v0)           ## 00000002
/* 1DDF0 8002EE90 C60C0004 */  lwc1    $f12, 0x0004($s0)          ## 00000004
/* 1DDF4 8002EE94 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 1DDF8 8002EE98 00000000 */  nop
/* 1DDFC 8002EE9C 468042A0 */  cvt.s.w $f10, $f8
/* 1DE00 8002EEA0 E60A0008 */  swc1    $f10, 0x0008($s0)          ## 00000008
/* 1DE04 8002EEA4 844B0004 */  lh      $t3, 0x0004($v0)           ## 00000004
/* 1DE08 8002EEA8 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 1DE0C 8002EEAC 00000000 */  nop
/* 1DE10 8002EEB0 468084A0 */  cvt.s.w $f18, $f16
/* 1DE14 8002EEB4 E612000C */  swc1    $f18, 0x000C($s0)          ## 0000000C
/* 1DE18 8002EEB8 844C0006 */  lh      $t4, 0x0006($v0)           ## 00000006
/* 1DE1C 8002EEBC 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 1DE20 8002EEC0 00000000 */  nop
/* 1DE24 8002EEC4 468021A0 */  cvt.s.w $f6, $f4
/* 1DE28 8002EEC8 E6060010 */  swc1    $f6, 0x0010($s0)           ## 00000010
/* 1DE2C 8002EECC 844D0008 */  lh      $t5, 0x0008($v0)           ## 00000008
/* 1DE30 8002EED0 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 1DE34 8002EED4 00000000 */  nop
/* 1DE38 8002EED8 468042A0 */  cvt.s.w $f10, $f8
/* 1DE3C 8002EEDC E60A0014 */  swc1    $f10, 0x0014($s0)          ## 00000014
/* 1DE40 8002EEE0 844E000A */  lh      $t6, 0x000A($v0)           ## 0000000A
/* 1DE44 8002EEE4 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 1DE48 8002EEE8 00000000 */  nop
/* 1DE4C 8002EEEC 468084A0 */  cvt.s.w $f18, $f16
/* 1DE50 8002EEF0 E6120018 */  swc1    $f18, 0x0018($s0)          ## 00000018
/* 1DE54 8002EEF4 AFA80040 */  sw      $t0, 0x0040($sp)
/* 1DE58 8002EEF8 0C00BAFA */  jal     func_8002EBE8
/* 1DE5C 8002EEFC AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1DE60 8002EF00 C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
/* 1DE64 8002EF04 8E050020 */  lw      $a1, 0x0020($s0)           ## 00000020
/* 1DE68 8002EF08 26180038 */  addiu   $t8, $s0, 0x0038           ## $t8 = 00000038
/* 1DE6C 8002EF0C AFB80010 */  sw      $t8, 0x0010($sp)
/* 1DE70 8002EF10 26060014 */  addiu   $a2, $s0, 0x0014           ## $a2 = 00000014
/* 1DE74 8002EF14 0C00BAFA */  jal     func_8002EBE8
/* 1DE78 8002EF18 2607002C */  addiu   $a3, $s0, 0x002C           ## $a3 = 0000002C
/* 1DE7C 8002EF1C C60C000C */  lwc1    $f12, 0x000C($s0)          ## 0000000C
/* 1DE80 8002EF20 8E050024 */  lw      $a1, 0x0024($s0)           ## 00000024
/* 1DE84 8002EF24 2619003C */  addiu   $t9, $s0, 0x003C           ## $t9 = 0000003C
/* 1DE88 8002EF28 AFB90010 */  sw      $t9, 0x0010($sp)
/* 1DE8C 8002EF2C 26060018 */  addiu   $a2, $s0, 0x0018           ## $a2 = 00000018
/* 1DE90 8002EF30 0C00BAFA */  jal     func_8002EBE8
/* 1DE94 8002EF34 26070030 */  addiu   $a3, $s0, 0x0030           ## $a3 = 00000030
/* 1DE98 8002EF38 8E09001C */  lw      $t1, 0x001C($s0)           ## 0000001C
/* 1DE9C 8002EF3C 24020006 */  addiu   $v0, $zero, 0x0006         ## $v0 = 00000006
/* 1DEA0 8002EF40 8E0B0020 */  lw      $t3, 0x0020($s0)           ## 00000020
/* 1DEA4 8002EF44 01220019 */  multu   $t1, $v0
/* 1DEA8 8002EF48 8E0D0024 */  lw      $t5, 0x0024($s0)           ## 00000024
/* 1DEAC 8002EF4C 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 00000000
/* 1DEB0 8002EF50 8E091454 */  lw      $t1, 0x1454($s0)           ## 00001454
/* 1DEB4 8002EF54 8FA80040 */  lw      $t0, 0x0040($sp)
/* 1DEB8 8002EF58 95F80014 */  lhu     $t8, 0x0014($t7)           ## 00000014
/* 1DEBC 8002EF5C 00005012 */  mflo    $t2
/* 1DEC0 8002EF60 00000000 */  nop
/* 1DEC4 8002EF64 00000000 */  nop
/* 1DEC8 8002EF68 014B0019 */  multu   $t2, $t3
/* 1DECC 8002EF6C 00095080 */  sll     $t2, $t1,  2
/* 1DED0 8002EF70 00006012 */  mflo    $t4
/* 1DED4 8002EF74 00000000 */  nop
/* 1DED8 8002EF78 00000000 */  nop
/* 1DEDC 8002EF7C 018D0019 */  multu   $t4, $t5
/* 1DEE0 8002EF80 8E0C1458 */  lw      $t4, 0x1458($s0)           ## 00001458
/* 1DEE4 8002EF84 000C6900 */  sll     $t5, $t4,  4
/* 1DEE8 8002EF88 00007012 */  mflo    $t6
/* 1DEEC 8002EF8C 01D8C821 */  addu    $t9, $t6, $t8
/* 1DEF0 8002EF90 8E0E145C */  lw      $t6, 0x145C($s0)           ## 0000145C
/* 1DEF4 8002EF94 032A5821 */  addu    $t3, $t9, $t2
/* 1DEF8 8002EF98 016D7821 */  addu    $t7, $t3, $t5
/* 1DEFC 8002EF9C 01C20019 */  multu   $t6, $v0
/* 1DF00 8002EFA0 0000C012 */  mflo    $t8
/* 1DF04 8002EFA4 01F81821 */  addu    $v1, $t7, $t8
/* 1DF08 8002EFA8 19000003 */  blez    $t0, .L8002EFB8
/* 1DF0C 8002EFAC 24631464 */  addiu   $v1, $v1, 0x1464           ## $v1 = 00001464
/* 1DF10 8002EFB0 1000000D */  beq     $zero, $zero, .L8002EFE8
/* 1DF14 8002EFB4 01003025 */  or      $a2, $t0, $zero            ## $a2 = 00000000
.L8002EFB8:
/* 1DF18 8002EFB8 8E021460 */  lw      $v0, 0x1460($s0)           ## 00001460
/* 1DF1C 8002EFBC 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 1DF20 8002EFC0 24846A60 */  addiu   $a0, $a0, 0x6A60           ## $a0 = 80106A60
/* 1DF24 8002EFC4 0043082B */  sltu    $at, $v0, $v1
/* 1DF28 8002EFC8 10200005 */  beq     $at, $zero, .L8002EFE0
/* 1DF2C 8002EFCC 24051083 */  addiu   $a1, $zero, 0x1083         ## $a1 = 00001083
/* 1DF30 8002EFD0 0C0006CE */  jal     LogUtils_HungupThread
/* 1DF34 8002EFD4 AFA30048 */  sw      $v1, 0x0048($sp)
/* 1DF38 8002EFD8 8FA30048 */  lw      $v1, 0x0048($sp)
/* 1DF3C 8002EFDC 8E021460 */  lw      $v0, 0x1460($s0)           ## 00001460
.L8002EFE0:
/* 1DF40 8002EFE0 00433023 */  subu    $a2, $v0, $v1
/* 1DF44 8002EFE4 00063082 */  srl     $a2, $a2,  2
.L8002EFE8:
/* 1DF48 8002EFE8 26050044 */  addiu   $a1, $s0, 0x0044           ## $a1 = 00000044
/* 1DF4C 8002EFEC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000044
/* 1DF50 8002EFF0 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1DF54 8002EFF4 0C00C365 */  jal     func_80030D94
/* 1DF58 8002EFF8 AFA6004C */  sw      $a2, 0x004C($sp)
/* 1DF5C 8002EFFC 8E090000 */  lw      $t1, 0x0000($s0)           ## 00000000
/* 1DF60 8002F000 8FA5002C */  lw      $a1, 0x002C($sp)
/* 1DF64 8002F004 8FA6004C */  lw      $a2, 0x004C($sp)
/* 1DF68 8002F008 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1DF6C 8002F00C 0C00C36B */  jal     func_80030DAC
/* 1DF70 8002F010 95270014 */  lhu     $a3, 0x0014($t1)           ## 00000014
/* 1DF74 8002F014 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1DF78 8002F018 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1DF7C 8002F01C 0C00B9C3 */  jal     func_8002E70C
/* 1DF80 8002F020 8E060040 */  lw      $a2, 0x0040($s0)           ## 00000040
/* 1DF84 8002F024 26050050 */  addiu   $a1, $s0, 0x0050           ## $a1 = 00000050
/* 1DF88 8002F028 AFA5002C */  sw      $a1, 0x002C($sp)
/* 1DF8C 8002F02C 0C00C4A1 */  jal     func_80031284
/* 1DF90 8002F030 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1DF94 8002F034 8FA5002C */  lw      $a1, 0x002C($sp)
/* 1DF98 8002F038 0C00C4B4 */  jal     func_800312D0
/* 1DF9C 8002F03C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1DFA0 8002F040 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1DFA4 8002F044 8FB0001C */  lw      $s0, 0x001C($sp)
/* 1DFA8 8002F048 8FB10020 */  lw      $s1, 0x0020($sp)
/* 1DFAC 8002F04C 03E00008 */  jr      $ra
/* 1DFB0 8002F050 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


glabel func_8002F054
/* 1DFB4 8002F054 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 1DFB8 8002F058 14A10003 */  bne     $a1, $at, .L8002F068
/* 1DFBC 8002F05C 00000000 */  nop
/* 1DFC0 8002F060 03E00008 */  jr      $ra
/* 1DFC4 8002F064 8C820000 */  lw      $v0, 0x0000($a0)           ## 00000000
.L8002F068:
/* 1DFC8 8002F068 04A00003 */  bltz    $a1, .L8002F078
/* 1DFCC 8002F06C 28A10033 */  slti    $at, $a1, 0x0033
/* 1DFD0 8002F070 14200003 */  bne     $at, $zero, .L8002F080
/* 1DFD4 8002F074 00057040 */  sll     $t6, $a1,  1
.L8002F078:
/* 1DFD8 8002F078 03E00008 */  jr      $ra
/* 1DFDC 8002F07C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002F080:
/* 1DFE0 8002F080 008E7821 */  addu    $t7, $a0, $t6
/* 1DFE4 8002F084 95F813DC */  lhu     $t8, 0x13DC($t7)           ## 000013DC
/* 1DFE8 8002F088 00054080 */  sll     $t0, $a1,  2
/* 1DFEC 8002F08C 01054023 */  subu    $t0, $t0, $a1
/* 1DFF0 8002F090 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 1DFF4 8002F094 17200003 */  bne     $t9, $zero, .L8002F0A4
/* 1DFF8 8002F098 000840C0 */  sll     $t0, $t0,  3
/* 1DFFC 8002F09C 03E00008 */  jr      $ra
/* 1E000 8002F0A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002F0A4:
/* 1E004 8002F0A4 01054021 */  addu    $t0, $t0, $a1
/* 1E008 8002F0A8 00084080 */  sll     $t0, $t0,  2
/* 1E00C 8002F0AC 00884821 */  addu    $t1, $a0, $t0
/* 1E010 8002F0B0 8D220058 */  lw      $v0, 0x0058($t1)           ## 00000058
/* 1E014 8002F0B4 03E00008 */  jr      $ra
/* 1E018 8002F0B8 00000000 */  nop


glabel func_8002F0BC
/* 1E01C 8002F0BC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 1E020 8002F0C0 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 1E024 8002F0C4 00000000 */  nop
/* 1E028 8002F0C8 C4840004 */  lwc1    $f4, 0x0004($a0)           ## 00000004
/* 1E02C 8002F0CC C4A00000 */  lwc1    $f0, 0x0000($a1)           ## 00000000
/* 1E030 8002F0D0 46022181 */  sub.s   $f6, $f4, $f2
/* 1E034 8002F0D4 4606003C */  c.lt.s  $f0, $f6
/* 1E038 8002F0D8 00000000 */  nop
/* 1E03C 8002F0DC 45010022 */  bc1t    .L8002F168
/* 1E040 8002F0E0 00000000 */  nop
/* 1E044 8002F0E4 C4880010 */  lwc1    $f8, 0x0010($a0)           ## 00000010
/* 1E048 8002F0E8 46024280 */  add.s   $f10, $f8, $f2
/* 1E04C 8002F0EC 4600503C */  c.lt.s  $f10, $f0
/* 1E050 8002F0F0 00000000 */  nop
/* 1E054 8002F0F4 4501001C */  bc1t    .L8002F168
/* 1E058 8002F0F8 00000000 */  nop
/* 1E05C 8002F0FC C4900008 */  lwc1    $f16, 0x0008($a0)          ## 00000008
/* 1E060 8002F100 C4A00004 */  lwc1    $f0, 0x0004($a1)           ## 00000004
/* 1E064 8002F104 46028481 */  sub.s   $f18, $f16, $f2
/* 1E068 8002F108 4612003C */  c.lt.s  $f0, $f18
/* 1E06C 8002F10C 00000000 */  nop
/* 1E070 8002F110 45010015 */  bc1t    .L8002F168
/* 1E074 8002F114 00000000 */  nop
/* 1E078 8002F118 C4840014 */  lwc1    $f4, 0x0014($a0)           ## 00000014
/* 1E07C 8002F11C 46022180 */  add.s   $f6, $f4, $f2
/* 1E080 8002F120 4600303C */  c.lt.s  $f6, $f0
/* 1E084 8002F124 00000000 */  nop
/* 1E088 8002F128 4501000F */  bc1t    .L8002F168
/* 1E08C 8002F12C 00000000 */  nop
/* 1E090 8002F130 C488000C */  lwc1    $f8, 0x000C($a0)           ## 0000000C
/* 1E094 8002F134 C4A00008 */  lwc1    $f0, 0x0008($a1)           ## 00000008
/* 1E098 8002F138 46024281 */  sub.s   $f10, $f8, $f2
/* 1E09C 8002F13C 460A003C */  c.lt.s  $f0, $f10
/* 1E0A0 8002F140 00000000 */  nop
/* 1E0A4 8002F144 45010008 */  bc1t    .L8002F168
/* 1E0A8 8002F148 00000000 */  nop
/* 1E0AC 8002F14C C4900018 */  lwc1    $f16, 0x0018($a0)          ## 00000018
/* 1E0B0 8002F150 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1E0B4 8002F154 46028480 */  add.s   $f18, $f16, $f2
/* 1E0B8 8002F158 4600903C */  c.lt.s  $f18, $f0
/* 1E0BC 8002F15C 00000000 */  nop
/* 1E0C0 8002F160 45000003 */  bc1f    .L8002F170
/* 1E0C4 8002F164 00000000 */  nop
.L8002F168:
/* 1E0C8 8002F168 03E00008 */  jr      $ra
/* 1E0CC 8002F16C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8002F170:
/* 1E0D0 8002F170 03E00008 */  jr      $ra
/* 1E0D4 8002F174 00000000 */  nop


glabel func_8002F178
/* 1E0D8 8002F178 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 1E0DC 8002F17C F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 1E0E0 8002F180 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 1E0E4 8002F184 AFB60058 */  sw      $s6, 0x0058($sp)
/* 1E0E8 8002F188 AFB40050 */  sw      $s4, 0x0050($sp)
/* 1E0EC 8002F18C AFB3004C */  sw      $s3, 0x004C($sp)
/* 1E0F0 8002F190 AFB20048 */  sw      $s2, 0x0048($sp)
/* 1E0F4 8002F194 AFB00040 */  sw      $s0, 0x0040($sp)
/* 1E0F8 8002F198 4481A000 */  mtc1    $at, $f20                  ## $f20 = -32000.00
/* 1E0FC 8002F19C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1E100 8002F1A0 27B20098 */  addiu   $s2, $sp, 0x0098           ## $s2 = FFFFFFE8
/* 1E104 8002F1A4 8FB300C4 */  lw      $s3, 0x00C4($sp)
/* 1E108 8002F1A8 30D4FFFF */  andi    $s4, $a2, 0xFFFF           ## $s4 = 00000000
/* 1E10C 8002F1AC 00E0B025 */  or      $s6, $a3, $zero            ## $s6 = 00000000
/* 1E110 8002F1B0 AFBF005C */  sw      $ra, 0x005C($sp)
/* 1E114 8002F1B4 AFB50054 */  sw      $s5, 0x0054($sp)
/* 1E118 8002F1B8 AFB10044 */  sw      $s1, 0x0044($sp)
/* 1E11C 8002F1BC F7B80038 */  sdc1    $f24, 0x0038($sp)
/* 1E120 8002F1C0 F7B60030 */  sdc1    $f22, 0x0030($sp)
/* 1E124 8002F1C4 AFA400B0 */  sw      $a0, 0x00B0($sp)
/* 1E128 8002F1C8 AFA600B8 */  sw      $a2, 0x00B8($sp)
/* 1E12C 8002F1CC 8FAF00C0 */  lw      $t7, 0x00C0($sp)
/* 1E130 8002F1D0 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 1E134 8002F1D4 4600A586 */  mov.s   $f22, $f20
/* 1E138 8002F1D8 ADEE0000 */  sw      $t6, 0x0000($t7)           ## 00000000
/* 1E13C 8002F1DC AEC00000 */  sw      $zero, 0x0000($s6)         ## 00000000
/* 1E140 8002F1E0 8E790000 */  lw      $t9, 0x0000($s3)           ## 00000000
/* 1E144 8002F1E4 8E110040 */  lw      $s1, 0x0040($s0)           ## 00000040
/* 1E148 8002F1E8 AE590000 */  sw      $t9, 0x0000($s2)           ## FFFFFFE8
/* 1E14C 8002F1EC 8E780004 */  lw      $t8, 0x0004($s3)           ## 00000004
/* 1E150 8002F1F0 AE580004 */  sw      $t8, 0x0004($s2)           ## FFFFFFEC
/* 1E154 8002F1F4 8E790008 */  lw      $t9, 0x0008($s3)           ## 00000008
/* 1E158 8002F1F8 AE590008 */  sw      $t9, 0x0008($s2)           ## FFFFFFF0
/* 1E15C 8002F1FC 8FB500CC */  lw      $s5, 0x00CC($sp)
/* 1E160 8002F200 C7B800D0 */  lwc1    $f24, 0x00D0($sp)
.L8002F204:
/* 1E164 8002F204 C7A4009C */  lwc1    $f4, 0x009C($sp)
/* 1E168 8002F208 C6060008 */  lwc1    $f6, 0x0008($s0)           ## 00000008
/* 1E16C 8002F20C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1E170 8002F210 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1E174 8002F214 4606203C */  c.lt.s  $f4, $f6
/* 1E178 8002F218 00000000 */  nop
/* 1E17C 8002F21C 4503001C */  bc1tl   .L8002F290
/* 1E180 8002F220 8FA800B0 */  lw      $t0, 0x00B0($sp)
/* 1E184 8002F224 0C00B63B */  jal     func_8002D8EC
/* 1E188 8002F228 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE8
/* 1E18C 8002F22C 14400006 */  bne     $v0, $zero, .L8002F248
/* 1E190 8002F230 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1E194 8002F234 C7A8009C */  lwc1    $f8, 0x009C($sp)
/* 1E198 8002F238 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 1E19C 8002F23C 460A4401 */  sub.s   $f16, $f8, $f10
/* 1E1A0 8002F240 1000FFF0 */  beq     $zero, $zero, .L8002F204
/* 1E1A4 8002F244 E7B0009C */  swc1    $f16, 0x009C($sp)
.L8002F248:
/* 1E1A8 8002F248 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1E1AC 8002F24C 3286FFFF */  andi    $a2, $s4, 0xFFFF           ## $a2 = 00000000
/* 1E1B0 8002F250 02C03825 */  or      $a3, $s6, $zero            ## $a3 = 00000000
/* 1E1B4 8002F254 AFB30010 */  sw      $s3, 0x0010($sp)
/* 1E1B8 8002F258 AFB50014 */  sw      $s5, 0x0014($sp)
/* 1E1BC 8002F25C E7B80018 */  swc1    $f24, 0x0018($sp)
/* 1E1C0 8002F260 0C00B153 */  jal     func_8002C54C
/* 1E1C4 8002F264 E7B4001C */  swc1    $f20, 0x001C($sp)
/* 1E1C8 8002F268 4600A03C */  c.lt.s  $f20, $f0
/* 1E1CC 8002F26C 46000586 */  mov.s   $f22, $f0
/* 1E1D0 8002F270 C7B2009C */  lwc1    $f18, 0x009C($sp)
/* 1E1D4 8002F274 45030006 */  bc1tl   .L8002F290
/* 1E1D8 8002F278 8FA800B0 */  lw      $t0, 0x00B0($sp)
/* 1E1DC 8002F27C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 1E1E0 8002F280 46049181 */  sub.s   $f6, $f18, $f4
/* 1E1E4 8002F284 1000FFDF */  beq     $zero, $zero, .L8002F204
/* 1E1E8 8002F288 E7A6009C */  swc1    $f6, 0x009C($sp)
/* 1E1EC 8002F28C 8FA800B0 */  lw      $t0, 0x00B0($sp)
.L8002F290:
/* 1E1F0 8002F290 8FA900C0 */  lw      $t1, 0x00C0($sp)
/* 1E1F4 8002F294 8FAA00C8 */  lw      $t2, 0x00C8($sp)
/* 1E1F8 8002F298 AFB00068 */  sw      $s0, 0x0068($sp)
/* 1E1FC 8002F29C A7B4006C */  sh      $s4, 0x006C($sp)
/* 1E200 8002F2A0 AFB60070 */  sw      $s6, 0x0070($sp)
/* 1E204 8002F2A4 E7B60074 */  swc1    $f22, 0x0074($sp)
/* 1E208 8002F2A8 AFB30078 */  sw      $s3, 0x0078($sp)
/* 1E20C 8002F2AC AFB50084 */  sw      $s5, 0x0084($sp)
/* 1E210 8002F2B0 E7B80088 */  swc1    $f24, 0x0088($sp)
/* 1E214 8002F2B4 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFB4
/* 1E218 8002F2B8 AFA80064 */  sw      $t0, 0x0064($sp)
/* 1E21C 8002F2BC AFA9007C */  sw      $t1, 0x007C($sp)
/* 1E220 8002F2C0 0C00C928 */  jal     func_800324A0
/* 1E224 8002F2C4 AFAA0080 */  sw      $t2, 0x0080($sp)
/* 1E228 8002F2C8 4600B03C */  c.lt.s  $f22, $f0
/* 1E22C 8002F2CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1E230 8002F2D0 8FAB00C0 */  lw      $t3, 0x00C0($sp)
/* 1E234 8002F2D4 45020003 */  bc1fl   .L8002F2E4
/* 1E238 8002F2D8 4614B032 */  c.eq.s  $f22, $f20
/* 1E23C 8002F2DC 46000586 */  mov.s   $f22, $f0
/* 1E240 8002F2E0 4614B032 */  c.eq.s  $f22, $f20
.L8002F2E4:
/* 1E244 8002F2E4 00000000 */  nop
/* 1E248 8002F2E8 4503000A */  bc1tl   .L8002F314
/* 1E24C 8002F2EC 4600B006 */  mov.s   $f0, $f22
/* 1E250 8002F2F0 8EC50000 */  lw      $a1, 0x0000($s6)           ## 00000000
/* 1E254 8002F2F4 0C00D15A */  jal     func_80034568
/* 1E258 8002F2F8 8D660000 */  lw      $a2, 0x0000($t3)           ## 00000000
/* 1E25C 8002F2FC 10400004 */  beq     $v0, $zero, .L8002F310
/* 1E260 8002F300 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E264 8002F304 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 1E268 8002F308 00000000 */  nop
/* 1E26C 8002F30C 4608B581 */  sub.s   $f22, $f22, $f8
.L8002F310:
/* 1E270 8002F310 4600B006 */  mov.s   $f0, $f22
.L8002F314:
/* 1E274 8002F314 8FBF005C */  lw      $ra, 0x005C($sp)
/* 1E278 8002F318 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 1E27C 8002F31C D7B60030 */  ldc1    $f22, 0x0030($sp)
/* 1E280 8002F320 D7B80038 */  ldc1    $f24, 0x0038($sp)
/* 1E284 8002F324 8FB00040 */  lw      $s0, 0x0040($sp)
/* 1E288 8002F328 8FB10044 */  lw      $s1, 0x0044($sp)
/* 1E28C 8002F32C 8FB20048 */  lw      $s2, 0x0048($sp)
/* 1E290 8002F330 8FB3004C */  lw      $s3, 0x004C($sp)
/* 1E294 8002F334 8FB40050 */  lw      $s4, 0x0050($sp)
/* 1E298 8002F338 8FB50054 */  lw      $s5, 0x0054($sp)
/* 1E29C 8002F33C 8FB60058 */  lw      $s6, 0x0058($sp)
/* 1E2A0 8002F340 03E00008 */  jr      $ra
/* 1E2A4 8002F344 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000


glabel func_8002F348
/* 1E2A8 8002F348 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1E2AC 8002F34C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 1E2B0 8002F350 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E2B4 8002F354 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E2B8 8002F358 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1E2BC 8002F35C AFA60040 */  sw      $a2, 0x0040($sp)
/* 1E2C0 8002F360 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E2C4 8002F364 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E2C8 8002F368 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1E2CC 8002F36C 27AE0034 */  addiu   $t6, $sp, 0x0034           ## $t6 = FFFFFFFC
/* 1E2D0 8002F370 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 1E2D4 8002F374 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E2D8 8002F378 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E2DC 8002F37C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E2E0 8002F380 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1E2E4 8002F384 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E2E8 8002F388 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E2EC 8002F38C 0C00BC5E */  jal     func_8002F178
/* 1E2F0 8002F390 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E2F4 8002F394 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E2F8 8002F398 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1E2FC 8002F39C 03E00008 */  jr      $ra
/* 1E300 8002F3A0 00000000 */  nop


glabel func_8002F3A4
/* 1E304 8002F3A4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1E308 8002F3A8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 1E30C 8002F3AC 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E310 8002F3B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E314 8002F3B4 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1E318 8002F3B8 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1E31C 8002F3BC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E320 8002F3C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E324 8002F3C4 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1E328 8002F3C8 27AE0034 */  addiu   $t6, $sp, 0x0034           ## $t6 = FFFFFFFC
/* 1E32C 8002F3CC 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 1E330 8002F3D0 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E334 8002F3D4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E338 8002F3D8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E33C 8002F3DC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E340 8002F3E0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E344 8002F3E4 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E348 8002F3E8 0C00BC5E */  jal     func_8002F178
/* 1E34C 8002F3EC E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E350 8002F3F0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E354 8002F3F4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1E358 8002F3F8 03E00008 */  jr      $ra
/* 1E35C 8002F3FC 00000000 */  nop


glabel func_8002F400
/* 1E360 8002F400 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1E364 8002F404 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1E368 8002F408 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000000
/* 1E36C 8002F40C AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E370 8002F410 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1E374 8002F414 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E378 8002F418 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E37C 8002F41C 8FAF0044 */  lw      $t7, 0x0044($sp)
/* 1E380 8002F420 27AE0034 */  addiu   $t6, $sp, 0x0034           ## $t6 = FFFFFFFC
/* 1E384 8002F424 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 1E388 8002F428 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E38C 8002F42C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E390 8002F430 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E394 8002F434 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E398 8002F438 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E39C 8002F43C 0C00BC5E */  jal     func_8002F178
/* 1E3A0 8002F440 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E3A4 8002F444 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E3A8 8002F448 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1E3AC 8002F44C 03E00008 */  jr      $ra
/* 1E3B0 8002F450 00000000 */  nop


glabel func_8002F454
/* 1E3B4 8002F454 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E3B8 8002F458 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1E3BC 8002F45C AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E3C0 8002F460 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1E3C4 8002F464 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E3C8 8002F468 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E3CC 8002F46C AFA40030 */  sw      $a0, 0x0030($sp)
/* 1E3D0 8002F470 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E3D4 8002F474 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E3D8 8002F478 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E3DC 8002F47C 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1E3E0 8002F480 8FAF003C */  lw      $t7, 0x003C($sp)
/* 1E3E4 8002F484 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 1E3E8 8002F488 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E3EC 8002F48C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E3F0 8002F490 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E3F4 8002F494 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E3F8 8002F498 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E3FC 8002F49C E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E400 8002F4A0 0C00BC5E */  jal     func_8002F178
/* 1E404 8002F4A4 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E408 8002F4A8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E40C 8002F4AC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E410 8002F4B0 03E00008 */  jr      $ra
/* 1E414 8002F4B4 00000000 */  nop


glabel func_8002F4B8
/* 1E418 8002F4B8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E41C 8002F4BC AFA50034 */  sw      $a1, 0x0034($sp)
/* 1E420 8002F4C0 AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E424 8002F4C4 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1E428 8002F4C8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E42C 8002F4CC AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E430 8002F4D0 AFA40030 */  sw      $a0, 0x0030($sp)
/* 1E434 8002F4D4 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E438 8002F4D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E43C 8002F4DC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E440 8002F4E0 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1E444 8002F4E4 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1E448 8002F4E8 8FB8003C */  lw      $t8, 0x003C($sp)
/* 1E44C 8002F4EC 2419001C */  addiu   $t9, $zero, 0x001C         ## $t9 = 0000001C
/* 1E450 8002F4F0 AFB9001C */  sw      $t9, 0x001C($sp)
/* 1E454 8002F4F4 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E458 8002F4F8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E45C 8002F4FC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E460 8002F500 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E464 8002F504 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E468 8002F508 0C00BC5E */  jal     func_8002F178
/* 1E46C 8002F50C AFB80018 */  sw      $t8, 0x0018($sp)
/* 1E470 8002F510 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E474 8002F514 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E478 8002F518 03E00008 */  jr      $ra
/* 1E47C 8002F51C 00000000 */  nop


glabel func_8002F520
/* 1E480 8002F520 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E484 8002F524 AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E488 8002F528 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000000
/* 1E48C 8002F52C AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E490 8002F530 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E494 8002F534 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E498 8002F538 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E49C 8002F53C 8FAE003C */  lw      $t6, 0x003C($sp)
/* 1E4A0 8002F540 8FAF0044 */  lw      $t7, 0x0044($sp)
/* 1E4A4 8002F544 8FB80040 */  lw      $t8, 0x0040($sp)
/* 1E4A8 8002F548 2419001C */  addiu   $t9, $zero, 0x001C         ## $t9 = 0000001C
/* 1E4AC 8002F54C AFB9001C */  sw      $t9, 0x001C($sp)
/* 1E4B0 8002F550 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E4B4 8002F554 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E4B8 8002F558 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E4BC 8002F55C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E4C0 8002F560 0C00BC5E */  jal     func_8002F178
/* 1E4C4 8002F564 AFB80018 */  sw      $t8, 0x0018($sp)
/* 1E4C8 8002F568 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E4CC 8002F56C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E4D0 8002F570 03E00008 */  jr      $ra
/* 1E4D4 8002F574 00000000 */  nop


glabel func_8002F578
/* 1E4D8 8002F578 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E4DC 8002F57C AFA50034 */  sw      $a1, 0x0034($sp)
/* 1E4E0 8002F580 AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E4E4 8002F584 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1E4E8 8002F588 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E4EC 8002F58C AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E4F0 8002F590 AFA40030 */  sw      $a0, 0x0030($sp)
/* 1E4F4 8002F594 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E4F8 8002F598 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1E4FC 8002F59C 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1E500 8002F5A0 8FB8003C */  lw      $t8, 0x003C($sp)
/* 1E504 8002F5A4 C7A40044 */  lwc1    $f4, 0x0044($sp)
/* 1E508 8002F5A8 2419001C */  addiu   $t9, $zero, 0x001C         ## $t9 = 0000001C
/* 1E50C 8002F5AC AFB9001C */  sw      $t9, 0x001C($sp)
/* 1E510 8002F5B0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E514 8002F5B4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E518 8002F5B8 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E51C 8002F5BC AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E520 8002F5C0 AFB80018 */  sw      $t8, 0x0018($sp)
/* 1E524 8002F5C4 0C00BC5E */  jal     func_8002F178
/* 1E528 8002F5C8 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E52C 8002F5CC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E530 8002F5D0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E534 8002F5D4 03E00008 */  jr      $ra
/* 1E538 8002F5D8 00000000 */  nop


glabel func_8002F5DC
/* 1E53C 8002F5DC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E540 8002F5E0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1E544 8002F5E4 AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E548 8002F5E8 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1E54C 8002F5EC 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E550 8002F5F0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E554 8002F5F4 AFA40030 */  sw      $a0, 0x0030($sp)
/* 1E558 8002F5F8 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E55C 8002F5FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E560 8002F600 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E564 8002F604 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1E568 8002F608 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1E56C 8002F60C 8FB8003C */  lw      $t8, 0x003C($sp)
/* 1E570 8002F610 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 1E574 8002F614 AFB9001C */  sw      $t9, 0x001C($sp)
/* 1E578 8002F618 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E57C 8002F61C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E580 8002F620 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E584 8002F624 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E588 8002F628 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E58C 8002F62C 0C00BC5E */  jal     func_8002F178
/* 1E590 8002F630 AFB80018 */  sw      $t8, 0x0018($sp)
/* 1E594 8002F634 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E598 8002F638 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E59C 8002F63C 03E00008 */  jr      $ra
/* 1E5A0 8002F640 00000000 */  nop


glabel func_8002F644
/* 1E5A4 8002F644 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1E5A8 8002F648 AFA50044 */  sw      $a1, 0x0044($sp)
/* 1E5AC 8002F64C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E5B0 8002F650 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E5B4 8002F654 AFA40040 */  sw      $a0, 0x0040($sp)
/* 1E5B8 8002F658 AFA60048 */  sw      $a2, 0x0048($sp)
/* 1E5BC 8002F65C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E5C0 8002F660 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E5C4 8002F664 8FAF0048 */  lw      $t7, 0x0048($sp)
/* 1E5C8 8002F668 27AE0034 */  addiu   $t6, $sp, 0x0034           ## $t6 = FFFFFFF4
/* 1E5CC 8002F66C 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 1E5D0 8002F670 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E5D4 8002F674 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E5D8 8002F678 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E5DC 8002F67C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1E5E0 8002F680 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFFC
/* 1E5E4 8002F684 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E5E8 8002F688 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E5EC 8002F68C 0C00BC5E */  jal     func_8002F178
/* 1E5F0 8002F690 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E5F4 8002F694 8FB9003C */  lw      $t9, 0x003C($sp)
/* 1E5F8 8002F698 46000086 */  mov.s   $f2, $f0
/* 1E5FC 8002F69C 8FA80044 */  lw      $t0, 0x0044($sp)
/* 1E600 8002F6A0 13200011 */  beq     $t9, $zero, .L8002F6E8
/* 1E604 8002F6A4 46001006 */  mov.s   $f0, $f2
/* 1E608 8002F6A8 8B2A0000 */  lwl     $t2, 0x0000($t9)           ## 00000000
/* 1E60C 8002F6AC 9B2A0003 */  lwr     $t2, 0x0003($t9)           ## 00000003
/* 1E610 8002F6B0 A90A0000 */  swl     $t2, 0x0000($t0)           ## 00000000
/* 1E614 8002F6B4 B90A0003 */  swr     $t2, 0x0003($t0)           ## 00000003
/* 1E618 8002F6B8 8B290004 */  lwl     $t1, 0x0004($t9)           ## 00000004
/* 1E61C 8002F6BC 9B290007 */  lwr     $t1, 0x0007($t9)           ## 00000007
/* 1E620 8002F6C0 A9090004 */  swl     $t1, 0x0004($t0)           ## 00000004
/* 1E624 8002F6C4 B9090007 */  swr     $t1, 0x0007($t0)           ## 00000007
/* 1E628 8002F6C8 8B2A0008 */  lwl     $t2, 0x0008($t9)           ## 00000008
/* 1E62C 8002F6CC 9B2A000B */  lwr     $t2, 0x000B($t9)           ## 0000000B
/* 1E630 8002F6D0 A90A0008 */  swl     $t2, 0x0008($t0)           ## 00000008
/* 1E634 8002F6D4 B90A000B */  swr     $t2, 0x000B($t0)           ## 0000000B
/* 1E638 8002F6D8 8B29000C */  lwl     $t1, 0x000C($t9)           ## 0000000C
/* 1E63C 8002F6DC 9B29000F */  lwr     $t1, 0x000F($t9)           ## 0000000F
/* 1E640 8002F6E0 A909000C */  swl     $t1, 0x000C($t0)           ## 0000000C
/* 1E644 8002F6E4 B909000F */  swr     $t1, 0x000F($t0)           ## 0000000F
.L8002F6E8:
/* 1E648 8002F6E8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E64C 8002F6EC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1E650 8002F6F0 03E00008 */  jr      $ra
/* 1E654 8002F6F4 00000000 */  nop


glabel func_8002F6F8
/* 1E658 8002F6F8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1E65C 8002F6FC AFA5003C */  sw      $a1, 0x003C($sp)
/* 1E660 8002F700 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E664 8002F704 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E668 8002F708 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1E66C 8002F70C AFA60040 */  sw      $a2, 0x0040($sp)
/* 1E670 8002F710 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1E674 8002F714 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E678 8002F718 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E67C 8002F71C 8FAE0040 */  lw      $t6, 0x0040($sp)
/* 1E680 8002F720 8FAF0044 */  lw      $t7, 0x0044($sp)
/* 1E684 8002F724 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 1E688 8002F728 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E68C 8002F72C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E690 8002F730 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1E694 8002F734 27A70034 */  addiu   $a3, $sp, 0x0034           ## $a3 = FFFFFFFC
/* 1E698 8002F738 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E69C 8002F73C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E6A0 8002F740 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E6A4 8002F744 0C00BC5E */  jal     func_8002F178
/* 1E6A8 8002F748 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E6AC 8002F74C 8FB90034 */  lw      $t9, 0x0034($sp)
/* 1E6B0 8002F750 46000086 */  mov.s   $f2, $f0
/* 1E6B4 8002F754 8FA8003C */  lw      $t0, 0x003C($sp)
/* 1E6B8 8002F758 13200011 */  beq     $t9, $zero, .L8002F7A0
/* 1E6BC 8002F75C 46001006 */  mov.s   $f0, $f2
/* 1E6C0 8002F760 8B2A0000 */  lwl     $t2, 0x0000($t9)           ## 00000000
/* 1E6C4 8002F764 9B2A0003 */  lwr     $t2, 0x0003($t9)           ## 00000003
/* 1E6C8 8002F768 A90A0000 */  swl     $t2, 0x0000($t0)           ## 00000000
/* 1E6CC 8002F76C B90A0003 */  swr     $t2, 0x0003($t0)           ## 00000003
/* 1E6D0 8002F770 8B290004 */  lwl     $t1, 0x0004($t9)           ## 00000004
/* 1E6D4 8002F774 9B290007 */  lwr     $t1, 0x0007($t9)           ## 00000007
/* 1E6D8 8002F778 A9090004 */  swl     $t1, 0x0004($t0)           ## 00000004
/* 1E6DC 8002F77C B9090007 */  swr     $t1, 0x0007($t0)           ## 00000007
/* 1E6E0 8002F780 8B2A0008 */  lwl     $t2, 0x0008($t9)           ## 00000008
/* 1E6E4 8002F784 9B2A000B */  lwr     $t2, 0x000B($t9)           ## 0000000B
/* 1E6E8 8002F788 A90A0008 */  swl     $t2, 0x0008($t0)           ## 00000008
/* 1E6EC 8002F78C B90A000B */  swr     $t2, 0x000B($t0)           ## 0000000B
/* 1E6F0 8002F790 8B29000C */  lwl     $t1, 0x000C($t9)           ## 0000000C
/* 1E6F4 8002F794 9B29000F */  lwr     $t1, 0x000F($t9)           ## 0000000F
/* 1E6F8 8002F798 A909000C */  swl     $t1, 0x000C($t0)           ## 0000000C
/* 1E6FC 8002F79C B909000F */  swr     $t1, 0x000F($t0)           ## 0000000F
.L8002F7A0:
/* 1E700 8002F7A0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E704 8002F7A4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1E708 8002F7A8 03E00008 */  jr      $ra
/* 1E70C 8002F7AC 00000000 */  nop


glabel func_8002F7B0
/* 1E710 8002F7B0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E714 8002F7B4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1E718 8002F7B8 AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E71C 8002F7BC 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1E720 8002F7C0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E724 8002F7C4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E728 8002F7C8 AFA40030 */  sw      $a0, 0x0030($sp)
/* 1E72C 8002F7CC AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E730 8002F7D0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E734 8002F7D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E738 8002F7D8 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1E73C 8002F7DC 8FAF003C */  lw      $t7, 0x003C($sp)
/* 1E740 8002F7E0 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 1E744 8002F7E4 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E748 8002F7E8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E74C 8002F7EC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1E750 8002F7F0 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E754 8002F7F4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E758 8002F7F8 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E75C 8002F7FC 0C00BC5E */  jal     func_8002F178
/* 1E760 8002F800 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E764 8002F804 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E768 8002F808 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E76C 8002F80C 03E00008 */  jr      $ra
/* 1E770 8002F810 00000000 */  nop


glabel func_8002F814
/* 1E774 8002F814 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E778 8002F818 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1E77C 8002F81C AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E780 8002F820 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1E784 8002F824 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E788 8002F828 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E78C 8002F82C AFA40030 */  sw      $a0, 0x0030($sp)
/* 1E790 8002F830 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E794 8002F834 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E798 8002F838 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E79C 8002F83C 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1E7A0 8002F840 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1E7A4 8002F844 8FB8003C */  lw      $t8, 0x003C($sp)
/* 1E7A8 8002F848 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 1E7AC 8002F84C AFB9001C */  sw      $t9, 0x001C($sp)
/* 1E7B0 8002F850 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E7B4 8002F854 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E7B8 8002F858 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E7BC 8002F85C E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E7C0 8002F860 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E7C4 8002F864 0C00BC5E */  jal     func_8002F178
/* 1E7C8 8002F868 AFB80018 */  sw      $t8, 0x0018($sp)
/* 1E7CC 8002F86C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E7D0 8002F870 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E7D4 8002F874 03E00008 */  jr      $ra
/* 1E7D8 8002F878 00000000 */  nop


glabel func_8002F87C
/* 1E7DC 8002F87C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1E7E0 8002F880 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1E7E4 8002F884 AFA7003C */  sw      $a3, 0x003C($sp)
/* 1E7E8 8002F888 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1E7EC 8002F88C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 1E7F0 8002F890 AFBF002C */  sw      $ra, 0x002C($sp)
/* 1E7F4 8002F894 AFA40030 */  sw      $a0, 0x0030($sp)
/* 1E7F8 8002F898 AFA60038 */  sw      $a2, 0x0038($sp)
/* 1E7FC 8002F89C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E800 8002F8A0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1E804 8002F8A4 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1E808 8002F8A8 8FAF003C */  lw      $t7, 0x003C($sp)
/* 1E80C 8002F8AC 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 1E810 8002F8B0 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1E814 8002F8B4 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 1E818 8002F8B8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 1E81C 8002F8BC AFA00018 */  sw      $zero, 0x0018($sp)
/* 1E820 8002F8C0 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1E824 8002F8C4 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 1E828 8002F8C8 0C00BC5E */  jal     func_8002F178
/* 1E82C 8002F8CC AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1E830 8002F8D0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1E834 8002F8D4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1E838 8002F8D8 03E00008 */  jr      $ra
/* 1E83C 8002F8DC 00000000 */  nop


glabel func_8002F8E0
/* 1E840 8002F8E0 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 1E844 8002F8E4 AFB00038 */  sw      $s0, 0x0038($sp)
/* 1E848 8002F8E8 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 1E84C 8002F8EC 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 1E850 8002F8F0 AFBF003C */  sw      $ra, 0x003C($sp)
/* 1E854 8002F8F4 AFA400E0 */  sw      $a0, 0x00E0($sp)
/* 1E858 8002F8F8 AFA500E4 */  sw      $a1, 0x00E4($sp)
/* 1E85C 8002F8FC AFA700EC */  sw      $a3, 0x00EC($sp)
/* 1E860 8002F900 8FAF00FC */  lw      $t7, 0x00FC($sp)
/* 1E864 8002F904 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 1E868 8002F908 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 1E86C 8002F90C ADEE0000 */  sw      $t6, 0x0000($t7)           ## 00000000
/* 1E870 8002F910 8FB800F8 */  lw      $t8, 0x00F8($sp)
/* 1E874 8002F914 AF000000 */  sw      $zero, 0x0000($t8)         ## 00000000
/* 1E878 8002F918 8FB900E0 */  lw      $t9, 0x00E0($sp)
/* 1E87C 8002F91C 8FA900EC */  lw      $t1, 0x00EC($sp)
/* 1E880 8002F920 8F280040 */  lw      $t0, 0x0040($t9)           ## 00000040
/* 1E884 8002F924 AFA800DC */  sw      $t0, 0x00DC($sp)
/* 1E888 8002F928 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 00000000
/* 1E88C 8002F92C AE0B0000 */  sw      $t3, 0x0000($s0)           ## 00000000
/* 1E890 8002F930 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 00000004
/* 1E894 8002F934 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 1E898 8002F938 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 00000008
/* 1E89C 8002F93C AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 1E8A0 8002F940 8FAD00F0 */  lw      $t5, 0x00F0($sp)
/* 1E8A4 8002F944 8FAC00EC */  lw      $t4, 0x00EC($sp)
/* 1E8A8 8002F948 93AE010B */  lbu     $t6, 0x010B($sp)
/* 1E8AC 8002F94C C5A60000 */  lwc1    $f6, 0x0000($t5)           ## 00000000
/* 1E8B0 8002F950 C5840000 */  lwc1    $f4, 0x0000($t4)           ## 00000000
/* 1E8B4 8002F954 C5AA0004 */  lwc1    $f10, 0x0004($t5)          ## 00000004
/* 1E8B8 8002F958 C5880004 */  lwc1    $f8, 0x0004($t4)           ## 00000004
/* 1E8BC 8002F95C 46062001 */  sub.s   $f0, $f4, $f6
/* 1E8C0 8002F960 C5A40008 */  lwc1    $f4, 0x0008($t5)           ## 00000008
/* 1E8C4 8002F964 C5920008 */  lwc1    $f18, 0x0008($t4)          ## 00000008
/* 1E8C8 8002F968 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 1E8CC 8002F96C 460E0032 */  c.eq.s  $f0, $f14
/* 1E8D0 8002F970 460A4301 */  sub.s   $f12, $f8, $f10
/* 1E8D4 8002F974 45000005 */  bc1f    .L8002F98C
/* 1E8D8 8002F978 46049081 */  sub.s   $f2, $f18, $f4
/* 1E8DC 8002F97C 460E1032 */  c.eq.s  $f2, $f14
/* 1E8E0 8002F980 00000000 */  nop
/* 1E8E4 8002F984 450300CB */  bc1tl   .L8002FCB4
/* 1E8E8 8002F988 8E090000 */  lw      $t1, 0x0000($s0)           ## 00000000
.L8002F98C:
/* 1E8EC 8002F98C 15E000C8 */  bne     $t7, $zero, .L8002FCB0
/* 1E8F0 8002F990 C7AE0104 */  lwc1    $f14, 0x0104($sp)
/* 1E8F4 8002F994 460C7180 */  add.s   $f6, $f14, $f12
/* 1E8F8 8002F998 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 1E8FC 8002F99C 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 1E900 8002F9A0 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 1E904 8002F9A4 97A500E6 */  lhu     $a1, 0x00E6($sp)
/* 1E908 8002F9A8 4608303C */  c.lt.s  $f6, $f8
/* 1E90C 8002F9AC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1E910 8002F9B0 8FA700F0 */  lw      $a3, 0x00F0($sp)
/* 1E914 8002F9B4 C7A600F4 */  lwc1    $f6, 0x00F4($sp)
/* 1E918 8002F9B8 4500005B */  bc1f    .L8002FB28
/* 1E91C 8002F9BC 8FAB00EC */  lw      $t3, 0x00EC($sp)
/* 1E920 8002F9C0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E924 8002F9C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 1E928 8002F9C8 8FB800EC */  lw      $t8, 0x00EC($sp)
/* 1E92C 8002F9CC 8FAA0100 */  lw      $t2, 0x0100($sp)
/* 1E930 8002F9D0 27B900A8 */  addiu   $t9, $sp, 0x00A8           ## $t9 = FFFFFFC8
/* 1E934 8002F9D4 27A800D0 */  addiu   $t0, $sp, 0x00D0           ## $t0 = FFFFFFF0
/* 1E938 8002F9D8 27A900A4 */  addiu   $t1, $sp, 0x00A4           ## $t1 = FFFFFFC4
/* 1E93C 8002F9DC 240B001B */  addiu   $t3, $zero, 0x001B         ## $t3 = 0000001B
/* 1E940 8002F9E0 AFAB0028 */  sw      $t3, 0x0028($sp)
/* 1E944 8002F9E4 AFA9001C */  sw      $t1, 0x001C($sp)
/* 1E948 8002F9E8 AFA80018 */  sw      $t0, 0x0018($sp)
/* 1E94C 8002F9EC AFB90014 */  sw      $t9, 0x0014($sp)
/* 1E950 8002F9F0 AFB80010 */  sw      $t8, 0x0010($sp)
/* 1E954 8002F9F4 E7AA0024 */  swc1    $f10, 0x0024($sp)
/* 1E958 8002F9F8 0C00C09D */  jal     func_80030274
/* 1E95C 8002F9FC AFAA0020 */  sw      $t2, 0x0020($sp)
/* 1E960 8002FA00 104000AB */  beq     $v0, $zero, .L8002FCB0
/* 1E964 8002FA04 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 1E968 8002FA08 8FAC00D0 */  lw      $t4, 0x00D0($sp)
/* 1E96C 8002FA0C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1E970 8002FA10 C4266AA0 */  lwc1    $f6, 0x6AA0($at)           ## 80106AA0
/* 1E974 8002FA14 858D000A */  lh      $t5, 0x000A($t4)           ## 0000000A
/* 1E978 8002FA18 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 1E97C 8002FA1C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 1E980 8002FA20 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 1E984 8002FA24 C7AA00A8 */  lwc1    $f10, 0x00A8($sp)
/* 1E988 8002FA28 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E98C 8002FA2C 46809120 */  cvt.s.w $f4, $f18
/* 1E990 8002FA30 8FAE00D0 */  lw      $t6, 0x00D0($sp)
/* 1E994 8002FA34 46062302 */  mul.s   $f12, $f4, $f6
/* 1E998 8002FA38 460C403C */  c.lt.s  $f8, $f12
/* 1E99C 8002FA3C 00000000 */  nop
/* 1E9A0 8002FA40 45020016 */  bc1fl   .L8002FA9C
/* 1E9A4 8002FA44 85CF0008 */  lh      $t7, 0x0008($t6)           ## 00000008
/* 1E9A8 8002FA48 E60A0000 */  swc1    $f10, 0x0000($s0)          ## 00000000
/* 1E9AC 8002FA4C C7A40104 */  lwc1    $f4, 0x0104($sp)
/* 1E9B0 8002FA50 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 1E9B4 8002FA54 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1E9B8 8002FA58 C7A600AC */  lwc1    $f6, 0x00AC($sp)
/* 1E9BC 8002FA5C 4604903C */  c.lt.s  $f18, $f4
/* 1E9C0 8002FA60 C7A40104 */  lwc1    $f4, 0x0104($sp)
/* 1E9C4 8002FA64 C7B200AC */  lwc1    $f18, 0x00AC($sp)
/* 1E9C8 8002FA68 45020007 */  bc1fl   .L8002FA88
/* 1E9CC 8002FA6C 46049181 */  sub.s   $f6, $f18, $f4
/* 1E9D0 8002FA70 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 1E9D4 8002FA74 00000000 */  nop
/* 1E9D8 8002FA78 46083281 */  sub.s   $f10, $f6, $f8
/* 1E9DC 8002FA7C 10000003 */  beq     $zero, $zero, .L8002FA8C
/* 1E9E0 8002FA80 E60A0004 */  swc1    $f10, 0x0004($s0)          ## 00000004
/* 1E9E4 8002FA84 46049181 */  sub.s   $f6, $f18, $f4
.L8002FA88:
/* 1E9E8 8002FA88 E6060004 */  swc1    $f6, 0x0004($s0)           ## 00000004
.L8002FA8C:
/* 1E9EC 8002FA8C C7A800B0 */  lwc1    $f8, 0x00B0($sp)
/* 1E9F0 8002FA90 1000001D */  beq     $zero, $zero, .L8002FB08
/* 1E9F4 8002FA94 E6080008 */  swc1    $f8, 0x0008($s0)           ## 00000008
/* 1E9F8 8002FA98 85CF0008 */  lh      $t7, 0x0008($t6)           ## 00000008
.L8002FA9C:
/* 1E9FC 8002FA9C 85D8000C */  lh      $t8, 0x000C($t6)           ## 0000000C
/* 1EA00 8002FAA0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1EA04 8002FAA4 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 1EA08 8002FAA8 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 1EA0C 8002FAAC C4246AA4 */  lwc1    $f4, 0x6AA4($at)           ## 80106AA4
/* 1EA10 8002FAB0 468054A0 */  cvt.s.w $f18, $f10
/* 1EA14 8002FAB4 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1EA18 8002FAB8 C42A6AA8 */  lwc1    $f10, 0x6AA8($at)          ## 80106AA8
/* 1EA1C 8002FABC 46803220 */  cvt.s.w $f8, $f6
/* 1EA20 8002FAC0 46049002 */  mul.s   $f0, $f18, $f4
/* 1EA24 8002FAC4 C7B200F4 */  lwc1    $f18, 0x00F4($sp)
/* 1EA28 8002FAC8 C7A600A8 */  lwc1    $f6, 0x00A8($sp)
/* 1EA2C 8002FACC 460A4082 */  mul.s   $f2, $f8, $f10
/* 1EA30 8002FAD0 00000000 */  nop
/* 1EA34 8002FAD4 46009102 */  mul.s   $f4, $f18, $f0
/* 1EA38 8002FAD8 46062200 */  add.s   $f8, $f4, $f6
/* 1EA3C 8002FADC E6080000 */  swc1    $f8, 0x0000($s0)           ## 00000000
/* 1EA40 8002FAE0 C7AA00F4 */  lwc1    $f10, 0x00F4($sp)
/* 1EA44 8002FAE4 C7A400AC */  lwc1    $f4, 0x00AC($sp)
/* 1EA48 8002FAE8 460C5482 */  mul.s   $f18, $f10, $f12
/* 1EA4C 8002FAEC 46049180 */  add.s   $f6, $f18, $f4
/* 1EA50 8002FAF0 E6060004 */  swc1    $f6, 0x0004($s0)           ## 00000004
/* 1EA54 8002FAF4 C7A800F4 */  lwc1    $f8, 0x00F4($sp)
/* 1EA58 8002FAF8 C7B200B0 */  lwc1    $f18, 0x00B0($sp)
/* 1EA5C 8002FAFC 46024282 */  mul.s   $f10, $f8, $f2
/* 1EA60 8002FB00 46125100 */  add.s   $f4, $f10, $f18
/* 1EA64 8002FB04 E6040008 */  swc1    $f4, 0x0008($s0)           ## 00000008
.L8002FB08:
/* 1EA68 8002FB08 8FB900D0 */  lw      $t9, 0x00D0($sp)
/* 1EA6C 8002FB0C 8FA800F8 */  lw      $t0, 0x00F8($sp)
/* 1EA70 8002FB10 AD190000 */  sw      $t9, 0x0000($t0)           ## 00000000
/* 1EA74 8002FB14 8FAA00FC */  lw      $t2, 0x00FC($sp)
/* 1EA78 8002FB18 8FA900A4 */  lw      $t1, 0x00A4($sp)
/* 1EA7C 8002FB1C AD490000 */  sw      $t1, 0x0000($t2)           ## 00000000
/* 1EA80 8002FB20 10000064 */  beq     $zero, $zero, .L8002FCB4
/* 1EA84 8002FB24 8E090000 */  lw      $t1, 0x0000($s0)           ## 00000000
.L8002FB28:
/* 1EA88 8002FB28 46063202 */  mul.s   $f8, $f6, $f6
/* 1EA8C 8002FB2C 24020019 */  addiu   $v0, $zero, 0x0019         ## $v0 = 00000019
/* 1EA90 8002FB30 46000282 */  mul.s   $f10, $f0, $f0
/* 1EA94 8002FB34 00000000 */  nop
/* 1EA98 8002FB38 46021482 */  mul.s   $f18, $f2, $f2
/* 1EA9C 8002FB3C 46125100 */  add.s   $f4, $f10, $f18
/* 1EAA0 8002FB40 4604403C */  c.lt.s  $f8, $f4
/* 1EAA4 8002FB44 00000000 */  nop
/* 1EAA8 8002FB48 45000003 */  bc1f    .L8002FB58
/* 1EAAC 8002FB4C 00000000 */  nop
/* 1EAB0 8002FB50 10000001 */  beq     $zero, $zero, .L8002FB58
/* 1EAB4 8002FB54 2402001B */  addiu   $v0, $zero, 0x001B         ## $v0 = 0000001B
.L8002FB58:
/* 1EAB8 8002FB58 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 00000000
/* 1EABC 8002FB5C 27A30088 */  addiu   $v1, $sp, 0x0088           ## $v1 = FFFFFFA8
/* 1EAC0 8002FB60 27A7007C */  addiu   $a3, $sp, 0x007C           ## $a3 = FFFFFF9C
/* 1EAC4 8002FB64 AC6D0000 */  sw      $t5, 0x0000($v1)           ## FFFFFFA8
/* 1EAC8 8002FB68 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000004
/* 1EACC 8002FB6C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1EAD0 8002FB70 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 1EAD4 8002FB74 AC6C0004 */  sw      $t4, 0x0004($v1)           ## FFFFFFAC
/* 1EAD8 8002FB78 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 00000008
/* 1EADC 8002FB7C 27B900A8 */  addiu   $t9, $sp, 0x00A8           ## $t9 = FFFFFFC8
/* 1EAE0 8002FB80 27A800D0 */  addiu   $t0, $sp, 0x00D0           ## $t0 = FFFFFFF0
/* 1EAE4 8002FB84 AC6D0008 */  sw      $t5, 0x0008($v1)           ## FFFFFFB0
/* 1EAE8 8002FB88 C7A6008C */  lwc1    $f6, 0x008C($sp)
/* 1EAEC 8002FB8C 8FAF00F0 */  lw      $t7, 0x00F0($sp)
/* 1EAF0 8002FB90 27A900A4 */  addiu   $t1, $sp, 0x00A4           ## $t1 = FFFFFFC4
/* 1EAF4 8002FB94 460E3280 */  add.s   $f10, $f6, $f14
/* 1EAF8 8002FB98 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1EAFC 8002FB9C E7AA008C */  swc1    $f10, 0x008C($sp)
/* 1EB00 8002FBA0 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 1EB04 8002FBA4 ACF80000 */  sw      $t8, 0x0000($a3)           ## FFFFFF9C
/* 1EB08 8002FBA8 8DEE0004 */  lw      $t6, 0x0004($t7)           ## 00000004
/* 1EB0C 8002FBAC ACEE0004 */  sw      $t6, 0x0004($a3)           ## FFFFFFA0
/* 1EB10 8002FBB0 8DF80008 */  lw      $t8, 0x0008($t7)           ## 00000008
/* 1EB14 8002FBB4 ACF80008 */  sw      $t8, 0x0008($a3)           ## FFFFFFA4
/* 1EB18 8002FBB8 C7B2008C */  lwc1    $f18, 0x008C($sp)
/* 1EB1C 8002FBBC 8FAA0100 */  lw      $t2, 0x0100($sp)
/* 1EB20 8002FBC0 AFA20028 */  sw      $v0, 0x0028($sp)
/* 1EB24 8002FBC4 AFA9001C */  sw      $t1, 0x001C($sp)
/* 1EB28 8002FBC8 AFA80018 */  sw      $t0, 0x0018($sp)
/* 1EB2C 8002FBCC AFB90014 */  sw      $t9, 0x0014($sp)
/* 1EB30 8002FBD0 AFA30010 */  sw      $v1, 0x0010($sp)
/* 1EB34 8002FBD4 97A500E6 */  lhu     $a1, 0x00E6($sp)
/* 1EB38 8002FBD8 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 1EB3C 8002FBDC E7A80024 */  swc1    $f8, 0x0024($sp)
/* 1EB40 8002FBE0 E7B20080 */  swc1    $f18, 0x0080($sp)
/* 1EB44 8002FBE4 0C00C09D */  jal     func_80030274
/* 1EB48 8002FBE8 AFAA0020 */  sw      $t2, 0x0020($sp)
/* 1EB4C 8002FBEC 10400030 */  beq     $v0, $zero, .L8002FCB0
/* 1EB50 8002FBF0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 1EB54 8002FBF4 8FAB00D0 */  lw      $t3, 0x00D0($sp)
/* 1EB58 8002FBF8 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1EB5C 8002FBFC C42A6AAC */  lwc1    $f10, 0x6AAC($at)          ## 80106AAC
/* 1EB60 8002FC00 856C0008 */  lh      $t4, 0x0008($t3)           ## 00000008
/* 1EB64 8002FC04 856D000C */  lh      $t5, 0x000C($t3)           ## 0000000C
/* 1EB68 8002FC08 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1EB6C 8002FC0C 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 1EB70 8002FC10 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 1EB74 8002FC14 468021A0 */  cvt.s.w $f6, $f4
/* 1EB78 8002FC18 C4246AB0 */  lwc1    $f4, 0x6AB0($at)           ## 80106AB0
/* 1EB7C 8002FC1C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1EB80 8002FC20 46809220 */  cvt.s.w $f8, $f18
/* 1EB84 8002FC24 460A3082 */  mul.s   $f2, $f6, $f10
/* 1EB88 8002FC28 C4326AB4 */  lwc1    $f18, 0x6AB4($at)          ## 80106AB4
/* 1EB8C 8002FC2C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1EB90 8002FC30 46044302 */  mul.s   $f12, $f8, $f4
/* 1EB94 8002FC34 00000000 */  nop
/* 1EB98 8002FC38 46021182 */  mul.s   $f6, $f2, $f2
/* 1EB9C 8002FC3C 00000000 */  nop
/* 1EBA0 8002FC40 460C6282 */  mul.s   $f10, $f12, $f12
/* 1EBA4 8002FC44 460A3000 */  add.s   $f0, $f6, $f10
/* 1EBA8 8002FC48 46000384 */  sqrt.s  $f14, $f0
/* 1EBAC 8002FC4C 46007005 */  abs.s   $f0, $f14
/* 1EBB0 8002FC50 4612003C */  c.lt.s  $f0, $f18
/* 1EBB4 8002FC54 00000000 */  nop
/* 1EBB8 8002FC58 45010015 */  bc1t    .L8002FCB0
/* 1EBBC 8002FC5C 00000000 */  nop
/* 1EBC0 8002FC60 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1EBC4 8002FC64 C7A800F4 */  lwc1    $f8, 0x00F4($sp)
/* 1EBC8 8002FC68 C7B200A8 */  lwc1    $f18, 0x00A8($sp)
/* 1EBCC 8002FC6C 460E2183 */  div.s   $f6, $f4, $f14
/* 1EBD0 8002FC70 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 1EBD4 8002FC74 46064002 */  mul.s   $f0, $f8, $f6
/* 1EBD8 8002FC78 00000000 */  nop
/* 1EBDC 8002FC7C 46020282 */  mul.s   $f10, $f0, $f2
/* 1EBE0 8002FC80 46125100 */  add.s   $f4, $f10, $f18
/* 1EBE4 8002FC84 460C0202 */  mul.s   $f8, $f0, $f12
/* 1EBE8 8002FC88 E6040000 */  swc1    $f4, 0x0000($s0)           ## 00000000
/* 1EBEC 8002FC8C C7A600B0 */  lwc1    $f6, 0x00B0($sp)
/* 1EBF0 8002FC90 46064280 */  add.s   $f10, $f8, $f6
/* 1EBF4 8002FC94 E60A0008 */  swc1    $f10, 0x0008($s0)          ## 00000008
/* 1EBF8 8002FC98 8FAE00F8 */  lw      $t6, 0x00F8($sp)
/* 1EBFC 8002FC9C 8FAF00D0 */  lw      $t7, 0x00D0($sp)
/* 1EC00 8002FCA0 ADCF0000 */  sw      $t7, 0x0000($t6)           ## 00000000
/* 1EC04 8002FCA4 8FB900FC */  lw      $t9, 0x00FC($sp)
/* 1EC08 8002FCA8 8FB800A4 */  lw      $t8, 0x00A4($sp)
/* 1EC0C 8002FCAC AF380000 */  sw      $t8, 0x0000($t9)           ## 00000000
.L8002FCB0:
/* 1EC10 8002FCB0 8E090000 */  lw      $t1, 0x0000($s0)           ## 00000000
.L8002FCB4:
/* 1EC14 8002FCB4 27A200B8 */  addiu   $v0, $sp, 0x00B8           ## $v0 = FFFFFFD8
/* 1EC18 8002FCB8 26070008 */  addiu   $a3, $s0, 0x0008           ## $a3 = 00000008
/* 1EC1C 8002FCBC AC490000 */  sw      $t1, 0x0000($v0)           ## FFFFFFD8
/* 1EC20 8002FCC0 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 1EC24 8002FCC4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 1EC28 8002FCC8 AC480004 */  sw      $t0, 0x0004($v0)           ## FFFFFFDC
/* 1EC2C 8002FCCC 8E090008 */  lw      $t1, 0x0008($s0)           ## 00000008
/* 1EC30 8002FCD0 AC490008 */  sw      $t1, 0x0008($v0)           ## FFFFFFE0
/* 1EC34 8002FCD4 C7B200BC */  lwc1    $f18, 0x00BC($sp)
/* 1EC38 8002FCD8 C7A40104 */  lwc1    $f4, 0x0104($sp)
/* 1EC3C 8002FCDC 8FAB0100 */  lw      $t3, 0x0100($sp)
/* 1EC40 8002FCE0 8FAC00FC */  lw      $t4, 0x00FC($sp)
/* 1EC44 8002FCE4 46049200 */  add.s   $f8, $f18, $f4
/* 1EC48 8002FCE8 8FAA00F8 */  lw      $t2, 0x00F8($sp)
/* 1EC4C 8002FCEC C7A600F4 */  lwc1    $f6, 0x00F4($sp)
/* 1EC50 8002FCF0 AFA000B4 */  sw      $zero, 0x00B4($sp)
/* 1EC54 8002FCF4 E7A800BC */  swc1    $f8, 0x00BC($sp)
/* 1EC58 8002FCF8 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1EC5C 8002FCFC AFA300D4 */  sw      $v1, 0x00D4($sp)
/* 1EC60 8002FD00 AFA20010 */  sw      $v0, 0x0010($sp)
/* 1EC64 8002FD04 97A500E6 */  lhu     $a1, 0x00E6($sp)
/* 1EC68 8002FD08 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 1EC6C 8002FD0C AFAB0020 */  sw      $t3, 0x0020($sp)
/* 1EC70 8002FD10 AFAC001C */  sw      $t4, 0x001C($sp)
/* 1EC74 8002FD14 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 1EC78 8002FD18 0C00CC03 */  jal     func_8003300C
/* 1EC7C 8002FD1C E7A60014 */  swc1    $f6, 0x0014($sp)
/* 1EC80 8002FD20 1040000F */  beq     $v0, $zero, .L8002FD60
/* 1EC84 8002FD24 8FA300D4 */  lw      $v1, 0x00D4($sp)
/* 1EC88 8002FD28 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 1EC8C 8002FD2C AFAD00B4 */  sw      $t5, 0x00B4($sp)
/* 1EC90 8002FD30 8E180000 */  lw      $t8, 0x0000($s0)           ## 00000000
/* 1EC94 8002FD34 27AF00B8 */  addiu   $t7, $sp, 0x00B8           ## $t7 = FFFFFFD8
/* 1EC98 8002FD38 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 1EC9C 8002FD3C ADF80000 */  sw      $t8, 0x0000($t7)           ## FFFFFFD8
/* 1ECA0 8002FD40 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 1ECA4 8002FD44 ADEE0004 */  sw      $t6, 0x0004($t7)           ## FFFFFFDC
/* 1ECA8 8002FD48 8E180008 */  lw      $t8, 0x0008($s0)           ## 00000008
/* 1ECAC 8002FD4C ADF80008 */  sw      $t8, 0x0008($t7)           ## FFFFFFE0
/* 1ECB0 8002FD50 C7AA00BC */  lwc1    $f10, 0x00BC($sp)
/* 1ECB4 8002FD54 C7B20104 */  lwc1    $f18, 0x0104($sp)
/* 1ECB8 8002FD58 46125100 */  add.s   $f4, $f10, $f18
/* 1ECBC 8002FD5C E7A400BC */  swc1    $f4, 0x00BC($sp)
.L8002FD60:
/* 1ECC0 8002FD60 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 1ECC4 8002FD64 8FA500EC */  lw      $a1, 0x00EC($sp)
/* 1ECC8 8002FD68 0C00BC2F */  jal     func_8002F0BC
/* 1ECCC 8002FD6C AFA300D4 */  sw      $v1, 0x00D4($sp)
/* 1ECD0 8002FD70 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1ECD4 8002FD74 14410019 */  bne     $v0, $at, .L8002FDDC
/* 1ECD8 8002FD78 8FA300D4 */  lw      $v1, 0x00D4($sp)
/* 1ECDC 8002FD7C 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 1ECE0 8002FD80 8FA500DC */  lw      $a1, 0x00DC($sp)
/* 1ECE4 8002FD84 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 1ECE8 8002FD88 0C00B60E */  jal     func_8002D838
/* 1ECEC 8002FD8C AFA300D4 */  sw      $v1, 0x00D4($sp)
/* 1ECF0 8002FD90 8FB90044 */  lw      $t9, 0x0044($sp)
/* 1ECF4 8002FD94 C7A800F4 */  lwc1    $f8, 0x00F4($sp)
/* 1ECF8 8002FD98 8FA900F8 */  lw      $t1, 0x00F8($sp)
/* 1ECFC 8002FD9C 27A800B8 */  addiu   $t0, $sp, 0x00B8           ## $t0 = FFFFFFD8
/* 1ED00 8002FDA0 AFA80014 */  sw      $t0, 0x0014($sp)
/* 1ED04 8002FDA4 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1ED08 8002FDA8 8FA500E0 */  lw      $a1, 0x00E0($sp)
/* 1ED0C 8002FDAC 97A600E6 */  lhu     $a2, 0x00E6($sp)
/* 1ED10 8002FDB0 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 1ED14 8002FDB4 AFB90010 */  sw      $t9, 0x0010($sp)
/* 1ED18 8002FDB8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 1ED1C 8002FDBC 0C00B1C5 */  jal     func_8002C714
/* 1ED20 8002FDC0 AFA9001C */  sw      $t1, 0x001C($sp)
/* 1ED24 8002FDC4 10400005 */  beq     $v0, $zero, .L8002FDDC
/* 1ED28 8002FDC8 8FA300D4 */  lw      $v1, 0x00D4($sp)
/* 1ED2C 8002FDCC 8FAC00FC */  lw      $t4, 0x00FC($sp)
/* 1ED30 8002FDD0 240A0032 */  addiu   $t2, $zero, 0x0032         ## $t2 = 00000032
/* 1ED34 8002FDD4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 1ED38 8002FDD8 AD8A0000 */  sw      $t2, 0x0000($t4)           ## 00000000
.L8002FDDC:
/* 1ED3C 8002FDDC 8FAB00B4 */  lw      $t3, 0x00B4($sp)
/* 1ED40 8002FDE0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1ED44 8002FDE4 8FAD00FC */  lw      $t5, 0x00FC($sp)
/* 1ED48 8002FDE8 11610004 */  beq     $t3, $at, .L8002FDFC
/* 1ED4C 8002FDEC 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 1ED50 8002FDF0 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 00000000
/* 1ED54 8002FDF4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 1ED58 8002FDF8 11E10042 */  beq     $t7, $at, .L8002FF04
.L8002FDFC:
/* 1ED5C 8002FDFC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1ED60 8002FE00 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 1ED64 8002FE04 8FA80100 */  lw      $t0, 0x0100($sp)
/* 1ED68 8002FE08 27AE005C */  addiu   $t6, $sp, 0x005C           ## $t6 = FFFFFF7C
/* 1ED6C 8002FE0C 27B800D0 */  addiu   $t8, $sp, 0x00D0           ## $t8 = FFFFFFF0
/* 1ED70 8002FE10 27B90058 */  addiu   $t9, $sp, 0x0058           ## $t9 = FFFFFF78
/* 1ED74 8002FE14 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 1ED78 8002FE18 AFA90028 */  sw      $t1, 0x0028($sp)
/* 1ED7C 8002FE1C AFB9001C */  sw      $t9, 0x001C($sp)
/* 1ED80 8002FE20 AFB80018 */  sw      $t8, 0x0018($sp)
/* 1ED84 8002FE24 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 1ED88 8002FE28 97A500E6 */  lhu     $a1, 0x00E6($sp)
/* 1ED8C 8002FE2C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1ED90 8002FE30 8FA700F0 */  lw      $a3, 0x00F0($sp)
/* 1ED94 8002FE34 AFB00010 */  sw      $s0, 0x0010($sp)
/* 1ED98 8002FE38 AFA300D4 */  sw      $v1, 0x00D4($sp)
/* 1ED9C 8002FE3C AFA80020 */  sw      $t0, 0x0020($sp)
/* 1EDA0 8002FE40 0C00C09D */  jal     func_80030274
/* 1EDA4 8002FE44 E7A60024 */  swc1    $f6, 0x0024($sp)
/* 1EDA8 8002FE48 1040002E */  beq     $v0, $zero, .L8002FF04
/* 1EDAC 8002FE4C 8FA300D4 */  lw      $v1, 0x00D4($sp)
/* 1EDB0 8002FE50 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1EDB4 8002FE54 C4306AB8 */  lwc1    $f16, 0x6AB8($at)          ## 80106AB8
/* 1EDB8 8002FE58 8FAA00D0 */  lw      $t2, 0x00D0($sp)
/* 1EDBC 8002FE5C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1EDC0 8002FE60 854C0008 */  lh      $t4, 0x0008($t2)           ## 00000008
/* 1EDC4 8002FE64 854B000C */  lh      $t3, 0x000C($t2)           ## 0000000C
/* 1EDC8 8002FE68 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 1EDCC 8002FE6C 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 1EDD0 8002FE70 468054A0 */  cvt.s.w $f18, $f10
/* 1EDD4 8002FE74 46802220 */  cvt.s.w $f8, $f4
/* 1EDD8 8002FE78 46109082 */  mul.s   $f2, $f18, $f16
/* 1EDDC 8002FE7C C4326ABC */  lwc1    $f18, 0x6ABC($at)          ## 80106ABC
/* 1EDE0 8002FE80 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1EDE4 8002FE84 46104302 */  mul.s   $f12, $f8, $f16
/* 1EDE8 8002FE88 00000000 */  nop
/* 1EDEC 8002FE8C 46021182 */  mul.s   $f6, $f2, $f2
/* 1EDF0 8002FE90 00000000 */  nop
/* 1EDF4 8002FE94 460C6282 */  mul.s   $f10, $f12, $f12
/* 1EDF8 8002FE98 460A3000 */  add.s   $f0, $f6, $f10
/* 1EDFC 8002FE9C 46000384 */  sqrt.s  $f14, $f0
/* 1EE00 8002FEA0 46007005 */  abs.s   $f0, $f14
/* 1EE04 8002FEA4 4612003C */  c.lt.s  $f0, $f18
/* 1EE08 8002FEA8 00000000 */  nop
/* 1EE0C 8002FEAC 45010015 */  bc1t    .L8002FF04
/* 1EE10 8002FEB0 00000000 */  nop
/* 1EE14 8002FEB4 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 1EE18 8002FEB8 C7A400F4 */  lwc1    $f4, 0x00F4($sp)
/* 1EE1C 8002FEBC C7B2005C */  lwc1    $f18, 0x005C($sp)
/* 1EE20 8002FEC0 460E4183 */  div.s   $f6, $f8, $f14
/* 1EE24 8002FEC4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 1EE28 8002FEC8 46062002 */  mul.s   $f0, $f4, $f6
/* 1EE2C 8002FECC 00000000 */  nop
/* 1EE30 8002FED0 46020282 */  mul.s   $f10, $f0, $f2
/* 1EE34 8002FED4 46125200 */  add.s   $f8, $f10, $f18
/* 1EE38 8002FED8 460C0102 */  mul.s   $f4, $f0, $f12
/* 1EE3C 8002FEDC E6080000 */  swc1    $f8, 0x0000($s0)           ## 00000000
/* 1EE40 8002FEE0 C7A60064 */  lwc1    $f6, 0x0064($sp)
/* 1EE44 8002FEE4 46062280 */  add.s   $f10, $f4, $f6
/* 1EE48 8002FEE8 E60A0008 */  swc1    $f10, 0x0008($s0)          ## 00000008
/* 1EE4C 8002FEEC 8FAF00F8 */  lw      $t7, 0x00F8($sp)
/* 1EE50 8002FEF0 8FAD00D0 */  lw      $t5, 0x00D0($sp)
/* 1EE54 8002FEF4 ADED0000 */  sw      $t5, 0x0000($t7)           ## 00000000
/* 1EE58 8002FEF8 8FB800FC */  lw      $t8, 0x00FC($sp)
/* 1EE5C 8002FEFC 8FAE0058 */  lw      $t6, 0x0058($sp)
/* 1EE60 8002FF00 AF0E0000 */  sw      $t6, 0x0000($t8)           ## 00000000
.L8002FF04:
/* 1EE64 8002FF04 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
/* 1EE68 8002FF08 8FBF003C */  lw      $ra, 0x003C($sp)
/* 1EE6C 8002FF0C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 1EE70 8002FF10 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000
/* 1EE74 8002FF14 03E00008 */  jr      $ra
/* 1EE78 8002FF18 00000000 */  nop


glabel func_8002FF1C
/* 1EE7C 8002FF1C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1EE80 8002FF20 AFA60048 */  sw      $a2, 0x0048($sp)
/* 1EE84 8002FF24 AFA7004C */  sw      $a3, 0x004C($sp)
/* 1EE88 8002FF28 8FA70048 */  lw      $a3, 0x0048($sp)
/* 1EE8C 8002FF2C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1EE90 8002FF30 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1EE94 8002FF34 AFA50044 */  sw      $a1, 0x0044($sp)
/* 1EE98 8002FF38 8FAE004C */  lw      $t6, 0x004C($sp)
/* 1EE9C 8002FF3C C7A40050 */  lwc1    $f4, 0x0050($sp)
/* 1EEA0 8002FF40 8FAF0054 */  lw      $t7, 0x0054($sp)
/* 1EEA4 8002FF44 C7A60058 */  lwc1    $f6, 0x0058($sp)
/* 1EEA8 8002FF48 27B8003C */  addiu   $t8, $sp, 0x003C           ## $t8 = FFFFFFFC
/* 1EEAC 8002FF4C AFB8001C */  sw      $t8, 0x001C($sp)
/* 1EEB0 8002FF50 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1EEB4 8002FF54 AFA00020 */  sw      $zero, 0x0020($sp)
/* 1EEB8 8002FF58 AFA00028 */  sw      $zero, 0x0028($sp)
/* 1EEBC 8002FF5C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1EEC0 8002FF60 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1EEC4 8002FF64 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 1EEC8 8002FF68 0C00BE38 */  jal     func_8002F8E0
/* 1EECC 8002FF6C E7A60024 */  swc1    $f6, 0x0024($sp)
/* 1EED0 8002FF70 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1EED4 8002FF74 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1EED8 8002FF78 03E00008 */  jr      $ra
/* 1EEDC 8002FF7C 00000000 */  nop


glabel func_8002FF80
/* 1EEE0 8002FF80 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1EEE4 8002FF84 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1EEE8 8002FF88 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1EEEC 8002FF8C 8FA70040 */  lw      $a3, 0x0040($sp)
/* 1EEF0 8002FF90 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1EEF4 8002FF94 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1EEF8 8002FF98 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1EEFC 8002FF9C 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 1EF00 8002FFA0 C7A40048 */  lwc1    $f4, 0x0048($sp)
/* 1EF04 8002FFA4 8FAF004C */  lw      $t7, 0x004C($sp)
/* 1EF08 8002FFA8 8FB80050 */  lw      $t8, 0x0050($sp)
/* 1EF0C 8002FFAC C7A60054 */  lwc1    $f6, 0x0054($sp)
/* 1EF10 8002FFB0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1EF14 8002FFB4 AFA00020 */  sw      $zero, 0x0020($sp)
/* 1EF18 8002FFB8 AFA00028 */  sw      $zero, 0x0028($sp)
/* 1EF1C 8002FFBC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1EF20 8002FFC0 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1EF24 8002FFC4 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 1EF28 8002FFC8 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1EF2C 8002FFCC 0C00BE38 */  jal     func_8002F8E0
/* 1EF30 8002FFD0 E7A60024 */  swc1    $f6, 0x0024($sp)
/* 1EF34 8002FFD4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1EF38 8002FFD8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1EF3C 8002FFDC 03E00008 */  jr      $ra
/* 1EF40 8002FFE0 00000000 */  nop


glabel func_8002FFE4
/* 1EF44 8002FFE4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1EF48 8002FFE8 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1EF4C 8002FFEC AFA70044 */  sw      $a3, 0x0044($sp)
/* 1EF50 8002FFF0 8FA70040 */  lw      $a3, 0x0040($sp)
/* 1EF54 8002FFF4 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1EF58 8002FFF8 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1EF5C 8002FFFC AFA5003C */  sw      $a1, 0x003C($sp)
/* 1EF60 80030000 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 1EF64 80030004 C7A40048 */  lwc1    $f4, 0x0048($sp)
/* 1EF68 80030008 8FAF004C */  lw      $t7, 0x004C($sp)
/* 1EF6C 8003000C 8FB80050 */  lw      $t8, 0x0050($sp)
/* 1EF70 80030010 8FB90054 */  lw      $t9, 0x0054($sp)
/* 1EF74 80030014 C7A60058 */  lwc1    $f6, 0x0058($sp)
/* 1EF78 80030018 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1EF7C 8003001C AFA00028 */  sw      $zero, 0x0028($sp)
/* 1EF80 80030020 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1EF84 80030024 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1EF88 80030028 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 1EF8C 8003002C AFB8001C */  sw      $t8, 0x001C($sp)
/* 1EF90 80030030 AFB90020 */  sw      $t9, 0x0020($sp)
/* 1EF94 80030034 0C00BE38 */  jal     func_8002F8E0
/* 1EF98 80030038 E7A60024 */  swc1    $f6, 0x0024($sp)
/* 1EF9C 8003003C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1EFA0 80030040 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1EFA4 80030044 03E00008 */  jr      $ra
/* 1EFA8 80030048 00000000 */  nop


glabel func_8003004C
/* 1EFAC 8003004C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1EFB0 80030050 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1EFB4 80030054 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1EFB8 80030058 8FA70040 */  lw      $a3, 0x0040($sp)
/* 1EFBC 8003005C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1EFC0 80030060 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1EFC4 80030064 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1EFC8 80030068 8FAE0044 */  lw      $t6, 0x0044($sp)
/* 1EFCC 8003006C C7A40048 */  lwc1    $f4, 0x0048($sp)
/* 1EFD0 80030070 8FAF004C */  lw      $t7, 0x004C($sp)
/* 1EFD4 80030074 8FB80050 */  lw      $t8, 0x0050($sp)
/* 1EFD8 80030078 8FB90054 */  lw      $t9, 0x0054($sp)
/* 1EFDC 8003007C C7A60058 */  lwc1    $f6, 0x0058($sp)
/* 1EFE0 80030080 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 1EFE4 80030084 AFA80028 */  sw      $t0, 0x0028($sp)
/* 1EFE8 80030088 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1EFEC 8003008C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1EFF0 80030090 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1EFF4 80030094 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 1EFF8 80030098 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1EFFC 8003009C AFB90020 */  sw      $t9, 0x0020($sp)
/* 1F000 800300A0 0C00BE38 */  jal     func_8002F8E0
/* 1F004 800300A4 E7A60024 */  swc1    $f6, 0x0024($sp)
/* 1F008 800300A8 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1F00C 800300AC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1F010 800300B0 03E00008 */  jr      $ra
/* 1F014 800300B4 00000000 */  nop


glabel func_800300B8
/* 1F018 800300B8 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 1F01C 800300BC AFB20030 */  sw      $s2, 0x0030($sp)
/* 1F020 800300C0 AFB1002C */  sw      $s1, 0x002C($sp)
/* 1F024 800300C4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 1F028 800300C8 00E08025 */  or      $s0, $a3, $zero            ## $s0 = 00000000
/* 1F02C 800300CC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 1F030 800300D0 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 1F034 800300D4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1F038 800300D8 AFA5005C */  sw      $a1, 0x005C($sp)
/* 1F03C 800300DC 8FAF0070 */  lw      $t7, 0x0070($sp)
/* 1F040 800300E0 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 1F044 800300E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1F048 800300E8 ADEE0000 */  sw      $t6, 0x0000($t7)           ## 00000000
/* 1F04C 800300EC C6040004 */  lwc1    $f4, 0x0004($s0)           ## 00000004
/* 1F050 800300F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1F054 800300F4 E6440000 */  swc1    $f4, 0x0000($s2)           ## 00000000
/* 1F058 800300F8 8E380040 */  lw      $t8, 0x0040($s1)           ## 00000040
/* 1F05C 800300FC 0C00BC2F */  jal     func_8002F0BC
/* 1F060 80030100 AFB80054 */  sw      $t8, 0x0054($sp)
/* 1F064 80030104 14400003 */  bne     $v0, $zero, .L80030114
/* 1F068 80030108 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1F06C 8003010C 1000002C */  beq     $zero, $zero, .L800301C0
/* 1F070 80030110 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80030114:
/* 1F074 80030114 8FA50054 */  lw      $a1, 0x0054($sp)
/* 1F078 80030118 0C00B60E */  jal     func_8002D838
/* 1F07C 8003011C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 1F080 80030120 C7A60068 */  lwc1    $f6, 0x0068($sp)
/* 1F084 80030124 8FB9006C */  lw      $t9, 0x006C($sp)
/* 1F088 80030128 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1F08C 8003012C 97A5005E */  lhu     $a1, 0x005E($sp)
/* 1F090 80030130 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 1F094 80030134 02403825 */  or      $a3, $s2, $zero            ## $a3 = 00000000
/* 1F098 80030138 AFB00010 */  sw      $s0, 0x0010($sp)
/* 1F09C 8003013C E7A60014 */  swc1    $f6, 0x0014($sp)
/* 1F0A0 80030140 0C00B3EA */  jal     func_8002CFA8
/* 1F0A4 80030144 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1F0A8 80030148 8E090000 */  lw      $t1, 0x0000($s0)           ## 00000000
/* 1F0AC 8003014C 27A70040 */  addiu   $a3, $sp, 0x0040           ## $a3 = FFFFFFE8
/* 1F0B0 80030150 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1F0B4 80030154 ACE90000 */  sw      $t1, 0x0000($a3)           ## FFFFFFE8
/* 1F0B8 80030158 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 1F0BC 8003015C 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFE4
/* 1F0C0 80030160 ACE80004 */  sw      $t0, 0x0004($a3)           ## FFFFFFEC
/* 1F0C4 80030164 8E090008 */  lw      $t1, 0x0008($s0)           ## 00000008
/* 1F0C8 80030168 ACE90008 */  sw      $t1, 0x0008($a3)           ## FFFFFFF0
/* 1F0CC 8003016C C6480000 */  lwc1    $f8, 0x0000($s2)           ## 00000000
/* 1F0D0 80030170 8FAC0074 */  lw      $t4, 0x0074($sp)
/* 1F0D4 80030174 8FAB0070 */  lw      $t3, 0x0070($sp)
/* 1F0D8 80030178 E7A80044 */  swc1    $f8, 0x0044($sp)
/* 1F0DC 8003017C C64A0000 */  lwc1    $f10, 0x0000($s2)          ## 00000000
/* 1F0E0 80030180 8FAA006C */  lw      $t2, 0x006C($sp)
/* 1F0E4 80030184 C7B00068 */  lwc1    $f16, 0x0068($sp)
/* 1F0E8 80030188 AFA2004C */  sw      $v0, 0x004C($sp)
/* 1F0EC 8003018C 97A5005E */  lhu     $a1, 0x005E($sp)
/* 1F0F0 80030190 AFAC001C */  sw      $t4, 0x001C($sp)
/* 1F0F4 80030194 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 1F0F8 80030198 E7AA003C */  swc1    $f10, 0x003C($sp)
/* 1F0FC 8003019C AFAA0014 */  sw      $t2, 0x0014($sp)
/* 1F100 800301A0 0C00CD29 */  jal     func_800334A4
/* 1F104 800301A4 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 1F108 800301A8 10400004 */  beq     $v0, $zero, .L800301BC
/* 1F10C 800301AC 8FA3004C */  lw      $v1, 0x004C($sp)
/* 1F110 800301B0 C7B2003C */  lwc1    $f18, 0x003C($sp)
/* 1F114 800301B4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 1F118 800301B8 E6520000 */  swc1    $f18, 0x0000($s2)          ## 00000000
.L800301BC:
/* 1F11C 800301BC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000001
.L800301C0:
/* 1F120 800301C0 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1F124 800301C4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 1F128 800301C8 8FB1002C */  lw      $s1, 0x002C($sp)
/* 1F12C 800301CC 8FB20030 */  lw      $s2, 0x0030($sp)
/* 1F130 800301D0 03E00008 */  jr      $ra
/* 1F134 800301D4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


glabel func_800301D8
/* 1F138 800301D8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1F13C 800301DC AFA60038 */  sw      $a2, 0x0038($sp)
/* 1F140 800301E0 44876000 */  mtc1    $a3, $f12                  ## $f12 = 0.00
/* 1F144 800301E4 8FA70038 */  lw      $a3, 0x0038($sp)
/* 1F148 800301E8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1F14C 800301EC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1F150 800301F0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1F154 800301F4 27AE002C */  addiu   $t6, $sp, 0x002C           ## $t6 = FFFFFFFC
/* 1F158 800301F8 27AF0028 */  addiu   $t7, $sp, 0x0028           ## $t7 = FFFFFFF8
/* 1F15C 800301FC AFAF0018 */  sw      $t7, 0x0018($sp)
/* 1F160 80030200 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 1F164 80030204 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1F168 80030208 E7AC0010 */  swc1    $f12, 0x0010($sp)
/* 1F16C 8003020C 0C00C02E */  jal     func_800300B8
/* 1F170 80030210 AFA0001C */  sw      $zero, 0x001C($sp)
/* 1F174 80030214 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1F178 80030218 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1F17C 8003021C 03E00008 */  jr      $ra
/* 1F180 80030220 00000000 */  nop


glabel func_80030224
/* 1F184 80030224 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1F188 80030228 AFA60030 */  sw      $a2, 0x0030($sp)
/* 1F18C 8003022C 44876000 */  mtc1    $a3, $f12                  ## $f12 = 0.00
/* 1F190 80030230 8FA70030 */  lw      $a3, 0x0030($sp)
/* 1F194 80030234 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1F198 80030238 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1F19C 8003023C AFA5002C */  sw      $a1, 0x002C($sp)
/* 1F1A0 80030240 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 1F1A4 80030244 8FAF003C */  lw      $t7, 0x003C($sp)
/* 1F1A8 80030248 8FB80040 */  lw      $t8, 0x0040($sp)
/* 1F1AC 8003024C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1F1B0 80030250 E7AC0010 */  swc1    $f12, 0x0010($sp)
/* 1F1B4 80030254 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 1F1B8 80030258 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 1F1BC 8003025C 0C00C02E */  jal     func_800300B8
/* 1F1C0 80030260 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1F1C4 80030264 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1F1C8 80030268 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1F1CC 8003026C 03E00008 */  jr      $ra
/* 1F1D0 80030270 00000000 */  nop


glabel func_80030274
/* 1F1D4 80030274 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 1F1D8 80030278 AFB7005C */  sw      $s7, 0x005C($sp)
/* 1F1DC 8003027C AFB60058 */  sw      $s6, 0x0058($sp)
/* 1F1E0 80030280 AFB20048 */  sw      $s2, 0x0048($sp)
/* 1F1E4 80030284 AFB10044 */  sw      $s1, 0x0044($sp)
/* 1F1E8 80030288 8FB100F0 */  lw      $s1, 0x00F0($sp)
/* 1F1EC 8003028C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 1F1F0 80030290 00E0B025 */  or      $s6, $a3, $zero            ## $s6 = 00000000
/* 1F1F4 80030294 27B700A8 */  addiu   $s7, $sp, 0x00A8           ## $s7 = FFFFFFC8
/* 1F1F8 80030298 AFBF0064 */  sw      $ra, 0x0064($sp)
/* 1F1FC 8003029C AFBE0060 */  sw      $s8, 0x0060($sp)
/* 1F200 800302A0 AFB50054 */  sw      $s5, 0x0054($sp)
/* 1F204 800302A4 AFB40050 */  sw      $s4, 0x0050($sp)
/* 1F208 800302A8 AFB3004C */  sw      $s3, 0x004C($sp)
/* 1F20C 800302AC AFB00040 */  sw      $s0, 0x0040($sp)
/* 1F210 800302B0 F7B40038 */  sdc1    $f20, 0x0038($sp)
/* 1F214 800302B4 AFA500E4 */  sw      $a1, 0x00E4($sp)
/* 1F218 800302B8 AFA600E8 */  sw      $a2, 0x00E8($sp)
/* 1F21C 800302BC 8E2F0000 */  lw      $t7, 0x0000($s1)           ## 00000000
/* 1F220 800302C0 8E500040 */  lw      $s0, 0x0040($s2)           ## 00000040
/* 1F224 800302C4 24180032 */  addiu   $t8, $zero, 0x0032         ## $t8 = 00000032
/* 1F228 800302C8 AEEF0000 */  sw      $t7, 0x0000($s7)           ## FFFFFFC8
/* 1F22C 800302CC 8E2E0004 */  lw      $t6, 0x0004($s1)           ## 00000004
/* 1F230 800302D0 26440044 */  addiu   $a0, $s2, 0x0044           ## $a0 = 00000044
/* 1F234 800302D4 AEEE0004 */  sw      $t6, 0x0004($s7)           ## FFFFFFCC
/* 1F238 800302D8 8E2F0008 */  lw      $t7, 0x0008($s1)           ## 00000008
/* 1F23C 800302DC AEEF0008 */  sw      $t7, 0x0008($s7)           ## FFFFFFD0
/* 1F240 800302E0 8FB900FC */  lw      $t9, 0x00FC($sp)
/* 1F244 800302E4 AF380000 */  sw      $t8, 0x0000($t9)           ## 00000000
/* 1F248 800302E8 8E480000 */  lw      $t0, 0x0000($s2)           ## 00000000
/* 1F24C 800302EC 0C00CFFC */  jal     func_80033FF0
/* 1F250 800302F0 95050014 */  lhu     $a1, 0x0014($t0)           ## 00000014
/* 1F254 800302F4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 1F258 800302F8 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 1F25C 800302FC 0C00B66E */  jal     func_8002D9B8
/* 1F260 80030300 27A600CC */  addiu   $a2, $sp, 0x00CC           ## $a2 = FFFFFFEC
/* 1F264 80030304 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 1F268 80030308 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFC8
/* 1F26C 8003030C 0C00B66E */  jal     func_8002D9B8
/* 1F270 80030310 27A600C0 */  addiu   $a2, $sp, 0x00C0           ## $a2 = FFFFFFE0
/* 1F274 80030314 8FA900F4 */  lw      $t1, 0x00F4($sp)
/* 1F278 80030318 8E2B0000 */  lw      $t3, 0x0000($s1)           ## 00000000
/* 1F27C 8003031C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 1F280 80030320 27A300C0 */  addiu   $v1, $sp, 0x00C0           ## $v1 = FFFFFFE0
/* 1F284 80030324 AD2B0000 */  sw      $t3, 0x0000($t1)           ## 00000000
/* 1F288 80030328 8E2A0004 */  lw      $t2, 0x0004($s1)           ## 00000004
/* 1F28C 8003032C 27A200CC */  addiu   $v0, $sp, 0x00CC           ## $v0 = FFFFFFEC
/* 1F290 80030330 27A700D8 */  addiu   $a3, $sp, 0x00D8           ## $a3 = FFFFFFF8
/* 1F294 80030334 AD2A0004 */  sw      $t2, 0x0004($t1)           ## 00000004
/* 1F298 80030338 8E2B0008 */  lw      $t3, 0x0008($s1)           ## 00000008
/* 1F29C 8003033C AD2B0008 */  sw      $t3, 0x0008($t1)           ## 00000008
/* 1F2A0 80030340 C4246AC0 */  lwc1    $f4, 0x6AC0($at)           ## 80106AC0
/* 1F2A4 80030344 8FAC00F8 */  lw      $t4, 0x00F8($sp)
/* 1F2A8 80030348 AFA000B8 */  sw      $zero, 0x00B8($sp)
/* 1F2AC 8003034C E7A400B4 */  swc1    $f4, 0x00B4($sp)
/* 1F2B0 80030350 AD800000 */  sw      $zero, 0x0000($t4)         ## 00000000
/* 1F2B4 80030354 8FAE00C0 */  lw      $t6, 0x00C0($sp)
/* 1F2B8 80030358 8FAD00CC */  lw      $t5, 0x00CC($sp)
/* 1F2BC 8003035C 8FB800C4 */  lw      $t8, 0x00C4($sp)
/* 1F2C0 80030360 8FAF00D0 */  lw      $t7, 0x00D0($sp)
/* 1F2C4 80030364 15AE0007 */  bne     $t5, $t6, .L80030384
/* 1F2C8 80030368 00000000 */  nop
/* 1F2CC 8003036C 15F80005 */  bne     $t7, $t8, .L80030384
/* 1F2D0 80030370 8FB900D4 */  lw      $t9, 0x00D4($sp)
/* 1F2D4 80030374 8FA800C8 */  lw      $t0, 0x00C8($sp)
/* 1F2D8 80030378 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 1F2DC 8003037C 132800B0 */  beq     $t9, $t0, .L80030640
/* 1F2E0 80030380 00000000 */  nop
.L80030384:
/* 1F2E4 80030384 8C650000 */  lw      $a1, 0x0000($v1)           ## FFFFFFE0
/* 1F2E8 80030388 8C460000 */  lw      $a2, 0x0000($v0)           ## FFFFFFEC
/* 1F2EC 8003038C 00A6082A */  slt     $at, $a1, $a2
/* 1F2F0 80030390 50200004 */  beql    $at, $zero, .L800303A4
/* 1F2F4 80030394 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = FFFFFFF0
/* 1F2F8 80030398 AC660000 */  sw      $a2, 0x0000($v1)           ## FFFFFFE0
/* 1F2FC 8003039C AC450000 */  sw      $a1, 0x0000($v0)           ## FFFFFFF0
/* 1F300 800303A0 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = FFFFFFF4
.L800303A4:
/* 1F304 800303A4 0047082B */  sltu    $at, $v0, $a3
/* 1F308 800303A8 1420FFF6 */  bne     $at, $zero, .L80030384
/* 1F30C 800303AC 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = FFFFFFE4
/* 1F310 800303B0 8E49001C */  lw      $t1, 0x001C($s2)           ## 0000001C
/* 1F314 800303B4 8E4A0020 */  lw      $t2, 0x0020($s2)           ## 00000020
/* 1F318 800303B8 8FAB00D4 */  lw      $t3, 0x00D4($sp)
/* 1F31C 800303BC 24040006 */  addiu   $a0, $zero, 0x0006         ## $a0 = 00000006
/* 1F320 800303C0 012A0019 */  multu   $t1, $t2
/* 1F324 800303C4 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 1F328 800303C8 8FA200C8 */  lw      $v0, 0x00C8($sp)
/* 1F32C 800303CC 8FA300C4 */  lw      $v1, 0x00C4($sp)
/* 1F330 800303D0 46803220 */  cvt.s.w $f8, $f6
/* 1F334 800303D4 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = FFFFFFF5
/* 1F338 800303D8 0162082A */  slt     $at, $t3, $v0
/* 1F33C 800303DC 24150001 */  addiu   $s5, $zero, 0x0001         ## $s5 = 00000001
/* 1F340 800303E0 27B40090 */  addiu   $s4, $sp, 0x0090           ## $s4 = FFFFFFB0
/* 1F344 800303E4 27B3009C */  addiu   $s3, $sp, 0x009C           ## $s3 = FFFFFFBC
/* 1F348 800303E8 00002812 */  mflo    $a1
/* 1F34C 800303EC 00057880 */  sll     $t7, $a1,  2
/* 1F350 800303F0 01E57823 */  subu    $t7, $t7, $a1
/* 1F354 800303F4 01650019 */  multu   $t3, $a1
/* 1F358 800303F8 000F7840 */  sll     $t7, $t7,  1
/* 1F35C 800303FC 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = FFFFFFE5
/* 1F360 80030400 00006012 */  mflo    $t4
/* 1F364 80030404 00000000 */  nop
/* 1F368 80030408 00000000 */  nop
/* 1F36C 8003040C 01840019 */  multu   $t4, $a0
/* 1F370 80030410 00006812 */  mflo    $t5
/* 1F374 80030414 01B07021 */  addu    $t6, $t5, $s0
/* 1F378 80030418 AFAE00D8 */  sw      $t6, 0x00D8($sp)
/* 1F37C 8003041C C64A0030 */  lwc1    $f10, 0x0030($s2)          ## 00000030
/* 1F380 80030420 C652000C */  lwc1    $f18, 0x000C($s2)          ## 0000000C
/* 1F384 80030424 460A4402 */  mul.s   $f16, $f8, $f10
/* 1F388 80030428 46128100 */  add.s   $f4, $f16, $f18
/* 1F38C 8003042C E7A400A4 */  swc1    $f4, 0x00A4($sp)
/* 1F390 80030430 C6460030 */  lwc1    $f6, 0x0030($s2)           ## 00000030
/* 1F394 80030434 AFAB00BC */  sw      $t3, 0x00BC($sp)
/* 1F398 80030438 46043200 */  add.s   $f8, $f6, $f4
/* 1F39C 8003043C 1020007C */  beq     $at, $zero, .L80030630
/* 1F3A0 80030440 E7A80098 */  swc1    $f8, 0x0098($sp)
/* 1F3A4 80030444 AFAF006C */  sw      $t7, 0x006C($sp)
/* 1F3A8 80030448 C7B40104 */  lwc1    $f20, 0x0104($sp)
/* 1F3AC 8003044C 8FBE0108 */  lw      $s8, 0x0108($sp)
.L80030450:
/* 1F3B0 80030450 8FA600D0 */  lw      $a2, 0x00D0($sp)
/* 1F3B4 80030454 8E59001C */  lw      $t9, 0x001C($s2)           ## 0000001C
/* 1F3B8 80030458 C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 1F3BC 8003045C 44865000 */  mtc1    $a2, $f10                  ## $f10 = 0.00
/* 1F3C0 80030460 00D90019 */  multu   $a2, $t9
/* 1F3C4 80030464 C6440008 */  lwc1    $f4, 0x0008($s2)           ## 00000008
/* 1F3C8 80030468 46805420 */  cvt.s.w $f16, $f10
/* 1F3CC 8003046C 8FAA00D8 */  lw      $t2, 0x00D8($sp)
/* 1F3D0 80030470 00C3082A */  slt     $at, $a2, $v1
/* 1F3D4 80030474 46128182 */  mul.s   $f6, $f16, $f18
/* 1F3D8 80030478 00004012 */  mflo    $t0
/* 1F3DC 8003047C 00000000 */  nop
/* 1F3E0 80030480 00000000 */  nop
/* 1F3E4 80030484 01040019 */  multu   $t0, $a0
/* 1F3E8 80030488 46043200 */  add.s   $f8, $f6, $f4
/* 1F3EC 8003048C E7A800A0 */  swc1    $f8, 0x00A0($sp)
/* 1F3F0 80030490 C64A002C */  lwc1    $f10, 0x002C($s2)          ## 0000002C
/* 1F3F4 80030494 46085400 */  add.s   $f16, $f10, $f8
/* 1F3F8 80030498 00004812 */  mflo    $t1
/* 1F3FC 8003049C 012A2821 */  addu    $a1, $t1, $t2
/* 1F400 800304A0 10200052 */  beq     $at, $zero, .L800305EC
/* 1F404 800304A4 E7B00094 */  swc1    $f16, 0x0094($sp)
/* 1F408 800304A8 8FA200C0 */  lw      $v0, 0x00C0($sp)
/* 1F40C 800304AC 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = FFFFFFF6
/* 1F410 800304B0 8FB100CC */  lw      $s1, 0x00CC($sp)
.L800304B4:
/* 1F414 800304B4 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 1F418 800304B8 C6480004 */  lwc1    $f8, 0x0004($s2)           ## 00000004
/* 1F41C 800304BC 44919000 */  mtc1    $s1, $f18                  ## $f18 = 0.00
/* 1F420 800304C0 02240019 */  multu   $s1, $a0
/* 1F424 800304C4 0222082A */  slt     $at, $s1, $v0
/* 1F428 800304C8 468091A0 */  cvt.s.w $f6, $f18
/* 1F42C 800304CC 46043282 */  mul.s   $f10, $f6, $f4
/* 1F430 800304D0 00006812 */  mflo    $t5
/* 1F434 800304D4 01A58021 */  addu    $s0, $t5, $a1
/* 1F438 800304D8 46085400 */  add.s   $f16, $f10, $f8
/* 1F43C 800304DC E7B0009C */  swc1    $f16, 0x009C($sp)
/* 1F440 800304E0 C6520028 */  lwc1    $f18, 0x0028($s2)          ## 00000028
/* 1F444 800304E4 46109180 */  add.s   $f6, $f18, $f16
/* 1F448 800304E8 1020002E */  beq     $at, $zero, .L800305A4
/* 1F44C 800304EC E7A60090 */  swc1    $f6, 0x0090($sp)
/* 1F450 800304F0 AFA50080 */  sw      $a1, 0x0080($sp)
/* 1F454 800304F4 AFA60084 */  sw      $a2, 0x0084($sp)
.L800304F8:
/* 1F458 800304F8 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFBC
/* 1F45C 800304FC 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFB0
/* 1F460 80030500 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 1F464 80030504 0C0296DB */  jal     func_800A5B6C
/* 1F468 80030508 02E03825 */  or      $a3, $s7, $zero            ## $a3 = FFFFFFC8
/* 1F46C 8003050C 14550012 */  bne     $v0, $s5, .L80030558
/* 1F470 80030510 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1F474 80030514 8FAE00F4 */  lw      $t6, 0x00F4($sp)
/* 1F478 80030518 8FAB00F8 */  lw      $t3, 0x00F8($sp)
/* 1F47C 8003051C 27AF00B4 */  addiu   $t7, $sp, 0x00B4           ## $t7 = FFFFFFD4
/* 1F480 80030520 AFAF0024 */  sw      $t7, 0x0024($sp)
/* 1F484 80030524 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 1F488 80030528 97A600E6 */  lhu     $a2, 0x00E6($sp)
/* 1F48C 8003052C 97A700EA */  lhu     $a3, 0x00EA($sp)
/* 1F490 80030530 AFB60010 */  sw      $s6, 0x0010($sp)
/* 1F494 80030534 AFB70014 */  sw      $s7, 0x0014($sp)
/* 1F498 80030538 E7B40020 */  swc1    $f20, 0x0020($sp)
/* 1F49C 8003053C AFBE0028 */  sw      $s8, 0x0028($sp)
/* 1F4A0 80030540 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 1F4A4 80030544 0C00B4E9 */  jal     func_8002D3A4
/* 1F4A8 80030548 AFAB001C */  sw      $t3, 0x001C($sp)
/* 1F4AC 8003054C 50400003 */  beql    $v0, $zero, .L8003055C
/* 1F4B0 80030550 C7A4009C */  lwc1    $f4, 0x009C($sp)
/* 1F4B4 80030554 AFB500B8 */  sw      $s5, 0x00B8($sp)
.L80030558:
/* 1F4B8 80030558 C7A4009C */  lwc1    $f4, 0x009C($sp)
.L8003055C:
/* 1F4BC 8003055C C64A0028 */  lwc1    $f10, 0x0028($s2)          ## 00000028
/* 1F4C0 80030560 C7B20090 */  lwc1    $f18, 0x0090($sp)
/* 1F4C4 80030564 8FA200C0 */  lw      $v0, 0x00C0($sp)
/* 1F4C8 80030568 460A2200 */  add.s   $f8, $f4, $f10
/* 1F4CC 8003056C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 1F4D0 80030570 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 1F4D4 80030574 0222082A */  slt     $at, $s1, $v0
/* 1F4D8 80030578 E7A8009C */  swc1    $f8, 0x009C($sp)
/* 1F4DC 8003057C C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 1F4E0 80030580 26100006 */  addiu   $s0, $s0, 0x0006           ## $s0 = 00000006
/* 1F4E4 80030584 46109180 */  add.s   $f6, $f18, $f16
/* 1F4E8 80030588 1420FFDB */  bne     $at, $zero, .L800304F8
/* 1F4EC 8003058C E7A60090 */  swc1    $f6, 0x0090($sp)
/* 1F4F0 80030590 8FA300C4 */  lw      $v1, 0x00C4($sp)
/* 1F4F4 80030594 8FA60084 */  lw      $a2, 0x0084($sp)
/* 1F4F8 80030598 8FA50080 */  lw      $a1, 0x0080($sp)
/* 1F4FC 8003059C 24040006 */  addiu   $a0, $zero, 0x0006         ## $a0 = 00000006
/* 1F500 800305A0 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
.L800305A4:
/* 1F504 800305A4 8E59001C */  lw      $t9, 0x001C($s2)           ## 0000001C
/* 1F508 800305A8 C7A400A0 */  lwc1    $f4, 0x00A0($sp)
/* 1F50C 800305AC C64A002C */  lwc1    $f10, 0x002C($s2)          ## 0000002C
/* 1F510 800305B0 03240019 */  multu   $t9, $a0
/* 1F514 800305B4 C7B20094 */  lwc1    $f18, 0x0094($sp)
/* 1F518 800305B8 460A2200 */  add.s   $f8, $f4, $f10
/* 1F51C 800305BC 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000001
/* 1F520 800305C0 00C3082A */  slt     $at, $a2, $v1
/* 1F524 800305C4 E7A800A0 */  swc1    $f8, 0x00A0($sp)
/* 1F528 800305C8 C650002C */  lwc1    $f16, 0x002C($s2)          ## 0000002C
/* 1F52C 800305CC 46109180 */  add.s   $f6, $f18, $f16
/* 1F530 800305D0 00004012 */  mflo    $t0
/* 1F534 800305D4 00A82821 */  addu    $a1, $a1, $t0
/* 1F538 800305D8 E7A60094 */  swc1    $f6, 0x0094($sp)
/* 1F53C 800305DC 5420FFB5 */  bnel    $at, $zero, .L800304B4
/* 1F540 800305E0 8FB100CC */  lw      $s1, 0x00CC($sp)
/* 1F544 800305E4 8FA200C8 */  lw      $v0, 0x00C8($sp)
/* 1F548 800305E8 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000002
.L800305EC:
/* 1F54C 800305EC 8FA900D8 */  lw      $t1, 0x00D8($sp)
/* 1F550 800305F0 8FAA006C */  lw      $t2, 0x006C($sp)
/* 1F554 800305F4 C7A400A4 */  lwc1    $f4, 0x00A4($sp)
/* 1F558 800305F8 C7B20098 */  lwc1    $f18, 0x0098($sp)
/* 1F55C 800305FC 012AC021 */  addu    $t8, $t1, $t2
/* 1F560 80030600 AFB800D8 */  sw      $t8, 0x00D8($sp)
/* 1F564 80030604 C64A0030 */  lwc1    $f10, 0x0030($s2)          ## 00000030
/* 1F568 80030608 8FAD00BC */  lw      $t5, 0x00BC($sp)
/* 1F56C 8003060C 460A2200 */  add.s   $f8, $f4, $f10
/* 1F570 80030610 25AC0001 */  addiu   $t4, $t5, 0x0001           ## $t4 = 00000001
/* 1F574 80030614 0182082A */  slt     $at, $t4, $v0
/* 1F578 80030618 E7A800A4 */  swc1    $f8, 0x00A4($sp)
/* 1F57C 8003061C C6500030 */  lwc1    $f16, 0x0030($s2)          ## 00000030
/* 1F580 80030620 46109180 */  add.s   $f6, $f18, $f16
/* 1F584 80030624 E7A60098 */  swc1    $f6, 0x0098($sp)
/* 1F588 80030628 1420FF89 */  bne     $at, $zero, .L80030450
/* 1F58C 8003062C AFAC00BC */  sw      $t4, 0x00BC($sp)
.L80030630:
/* 1F590 80030630 8FBE0108 */  lw      $s8, 0x0108($sp)
/* 1F594 80030634 C7B40104 */  lwc1    $f20, 0x0104($sp)
/* 1F598 80030638 10000023 */  beq     $zero, $zero, .L800306C8
/* 1F59C 8003063C 33D90010 */  andi    $t9, $s8, 0x0010           ## $t9 = 00000000
.L80030640:
/* 1F5A0 80030640 0C00BC2F */  jal     func_8002F0BC
/* 1F5A4 80030644 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 1F5A8 80030648 14400003 */  bne     $v0, $zero, .L80030658
/* 1F5AC 8003064C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 1F5B0 80030650 10000033 */  beq     $zero, $zero, .L80030720
/* 1F5B4 80030654 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80030658:
/* 1F5B8 80030658 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000006
/* 1F5BC 8003065C 0C00B60E */  jal     func_8002D838
/* 1F5C0 80030660 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 1F5C4 80030664 8FBE0108 */  lw      $s8, 0x0108($sp)
/* 1F5C8 80030668 C7B40104 */  lwc1    $f20, 0x0104($sp)
/* 1F5CC 8003066C 8FAE00F4 */  lw      $t6, 0x00F4($sp)
/* 1F5D0 80030670 8FAB00F8 */  lw      $t3, 0x00F8($sp)
/* 1F5D4 80030674 27AF00B4 */  addiu   $t7, $sp, 0x00B4           ## $t7 = FFFFFFD4
/* 1F5D8 80030678 AFAF0024 */  sw      $t7, 0x0024($sp)
/* 1F5DC 8003067C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1F5E0 80030680 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 1F5E4 80030684 97A600E6 */  lhu     $a2, 0x00E6($sp)
/* 1F5E8 80030688 97A700EA */  lhu     $a3, 0x00EA($sp)
/* 1F5EC 8003068C AFB60010 */  sw      $s6, 0x0010($sp)
/* 1F5F0 80030690 AFB70014 */  sw      $s7, 0x0014($sp)
/* 1F5F4 80030694 AFBE0028 */  sw      $s8, 0x0028($sp)
/* 1F5F8 80030698 E7B40020 */  swc1    $f20, 0x0020($sp)
/* 1F5FC 8003069C AFAE0018 */  sw      $t6, 0x0018($sp)
/* 1F600 800306A0 0C00B4E9 */  jal     func_8002D3A4
/* 1F604 800306A4 AFAB001C */  sw      $t3, 0x001C($sp)
/* 1F608 800306A8 24150001 */  addiu   $s5, $zero, 0x0001         ## $s5 = 00000001
/* 1F60C 800306AC 14550005 */  bne     $v0, $s5, .L800306C4
/* 1F610 800306B0 AFA200B8 */  sw      $v0, 0x00B8($sp)
/* 1F614 800306B4 8FA400F4 */  lw      $a0, 0x00F4($sp)
/* 1F618 800306B8 0C02954E */  jal     func_800A5538
/* 1F61C 800306BC 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 1F620 800306C0 E7A000B4 */  swc1    $f0, 0x00B4($sp)
.L800306C4:
/* 1F624 800306C4 33D90010 */  andi    $t9, $s8, 0x0010           ## $t9 = 00000000
.L800306C8:
/* 1F628 800306C8 13200014 */  beq     $t9, $zero, .L8003071C
/* 1F62C 800306CC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 1F630 800306D0 8FA800F4 */  lw      $t0, 0x00F4($sp)
/* 1F634 800306D4 8FA900F8 */  lw      $t1, 0x00F8($sp)
/* 1F638 800306D8 8FB800FC */  lw      $t8, 0x00FC($sp)
/* 1F63C 800306DC 8FAD0100 */  lw      $t5, 0x0100($sp)
/* 1F640 800306E0 27AA00B4 */  addiu   $t2, $sp, 0x00B4           ## $t2 = FFFFFFD4
/* 1F644 800306E4 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 1F648 800306E8 97A500E6 */  lhu     $a1, 0x00E6($sp)
/* 1F64C 800306EC 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 1F650 800306F0 02E03825 */  or      $a3, $s7, $zero            ## $a3 = FFFFFFC8
/* 1F654 800306F4 E7B40024 */  swc1    $f20, 0x0024($sp)
/* 1F658 800306F8 AFBE0028 */  sw      $s8, 0x0028($sp)
/* 1F65C 800306FC AFA80010 */  sw      $t0, 0x0010($sp)
/* 1F660 80030700 AFA90014 */  sw      $t1, 0x0014($sp)
/* 1F664 80030704 AFB8001C */  sw      $t8, 0x001C($sp)
/* 1F668 80030708 0C00CE2A */  jal     func_800338A8
/* 1F66C 8003070C AFAD0020 */  sw      $t5, 0x0020($sp)
/* 1F670 80030710 10400002 */  beq     $v0, $zero, .L8003071C
/* 1F674 80030714 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 1F678 80030718 AFAC00B8 */  sw      $t4, 0x00B8($sp)
.L8003071C:
/* 1F67C 8003071C 8FA200B8 */  lw      $v0, 0x00B8($sp)
.L80030720:
/* 1F680 80030720 8FBF0064 */  lw      $ra, 0x0064($sp)
/* 1F684 80030724 D7B40038 */  ldc1    $f20, 0x0038($sp)
/* 1F688 80030728 8FB00040 */  lw      $s0, 0x0040($sp)
/* 1F68C 8003072C 8FB10044 */  lw      $s1, 0x0044($sp)
/* 1F690 80030730 8FB20048 */  lw      $s2, 0x0048($sp)
/* 1F694 80030734 8FB3004C */  lw      $s3, 0x004C($sp)
/* 1F698 80030738 8FB40050 */  lw      $s4, 0x0050($sp)
/* 1F69C 8003073C 8FB50054 */  lw      $s5, 0x0054($sp)
/* 1F6A0 80030740 8FB60058 */  lw      $s6, 0x0058($sp)
/* 1F6A4 80030744 8FB7005C */  lw      $s7, 0x005C($sp)
/* 1F6A8 80030748 8FBE0060 */  lw      $s8, 0x0060($sp)
/* 1F6AC 8003074C 03E00008 */  jr      $ra
/* 1F6B0 80030750 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


glabel func_80030754
/* 1F6B4 80030754 10800002 */  beq     $a0, $zero, .L80030760
/* 1F6B8 80030758 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 1F6BC 8003075C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80030760:
/* 1F6C0 80030760 10A00002 */  beq     $a1, $zero, .L8003076C
/* 1F6C4 80030764 8FAE0010 */  lw      $t6, 0x0010($sp)
/* 1F6C8 80030768 34630002 */  ori     $v1, $v1, 0x0002           ## $v1 = 00000003
.L8003076C:
/* 1F6CC 8003076C 10C00002 */  beq     $a2, $zero, .L80030778
/* 1F6D0 80030770 00000000 */  nop
/* 1F6D4 80030774 34630004 */  ori     $v1, $v1, 0x0004           ## $v1 = 00000007
.L80030778:
/* 1F6D8 80030778 10E00002 */  beq     $a3, $zero, .L80030784
/* 1F6DC 8003077C 00000000 */  nop
/* 1F6E0 80030780 34630008 */  ori     $v1, $v1, 0x0008           ## $v1 = 0000000F
.L80030784:
/* 1F6E4 80030784 51C00003 */  beql    $t6, $zero, .L80030794
/* 1F6E8 80030788 00601025 */  or      $v0, $v1, $zero            ## $v0 = 0000000F
/* 1F6EC 8003078C 34630010 */  ori     $v1, $v1, 0x0010           ## $v1 = 0000001F
/* 1F6F0 80030790 00601025 */  or      $v0, $v1, $zero            ## $v0 = 0000001F
.L80030794:
/* 1F6F4 80030794 03E00008 */  jr      $ra
/* 1F6F8 80030798 00000000 */  nop


glabel func_8003079C
/* 1F6FC 8003079C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1F700 800307A0 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1F704 800307A4 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1F708 800307A8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1F70C 800307AC AFA60040 */  sw      $a2, 0x0040($sp)
/* 1F710 800307B0 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1F714 800307B4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F718 800307B8 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1F71C 800307BC 8FA4004C */  lw      $a0, 0x004C($sp)
/* 1F720 800307C0 8FA50050 */  lw      $a1, 0x0050($sp)
/* 1F724 800307C4 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1F728 800307C8 0C00C1D5 */  jal     func_80030754
/* 1F72C 800307CC 8FA70058 */  lw      $a3, 0x0058($sp)
/* 1F730 800307D0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1F734 800307D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1F738 800307D8 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1F73C 800307DC 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1F740 800307E0 8FB90048 */  lw      $t9, 0x0048($sp)
/* 1F744 800307E4 8FA8005C */  lw      $t0, 0x005C($sp)
/* 1F748 800307E8 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1F74C 800307EC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 1F750 800307F0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1F754 800307F4 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1F758 800307F8 AFA00020 */  sw      $zero, 0x0020($sp)
/* 1F75C 800307FC AFA20028 */  sw      $v0, 0x0028($sp)
/* 1F760 80030800 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1F764 80030804 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1F768 80030808 AFB80014 */  sw      $t8, 0x0014($sp)
/* 1F76C 8003080C AFB90018 */  sw      $t9, 0x0018($sp)
/* 1F770 80030810 0C00C09D */  jal     func_80030274
/* 1F774 80030814 AFA8001C */  sw      $t0, 0x001C($sp)
/* 1F778 80030818 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1F77C 8003081C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1F780 80030820 03E00008 */  jr      $ra
/* 1F784 80030824 00000000 */  nop


glabel func_80030828
/* 1F788 80030828 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1F78C 8003082C AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1F790 80030830 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1F794 80030834 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1F798 80030838 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1F79C 8003083C AFA70044 */  sw      $a3, 0x0044($sp)
/* 1F7A0 80030840 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F7A4 80030844 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1F7A8 80030848 8FA4004C */  lw      $a0, 0x004C($sp)
/* 1F7AC 8003084C 8FA50050 */  lw      $a1, 0x0050($sp)
/* 1F7B0 80030850 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1F7B4 80030854 0C00C1D5 */  jal     func_80030754
/* 1F7B8 80030858 8FA70058 */  lw      $a3, 0x0058($sp)
/* 1F7BC 8003085C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1F7C0 80030860 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1F7C4 80030864 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1F7C8 80030868 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1F7CC 8003086C 8FB90048 */  lw      $t9, 0x0048($sp)
/* 1F7D0 80030870 8FA8005C */  lw      $t0, 0x005C($sp)
/* 1F7D4 80030874 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1F7D8 80030878 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1F7DC 8003087C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1F7E0 80030880 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1F7E4 80030884 AFA00020 */  sw      $zero, 0x0020($sp)
/* 1F7E8 80030888 AFA20028 */  sw      $v0, 0x0028($sp)
/* 1F7EC 8003088C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1F7F0 80030890 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1F7F4 80030894 AFB80014 */  sw      $t8, 0x0014($sp)
/* 1F7F8 80030898 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1F7FC 8003089C 0C00C09D */  jal     func_80030274
/* 1F800 800308A0 AFA8001C */  sw      $t0, 0x001C($sp)
/* 1F804 800308A4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1F808 800308A8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1F80C 800308AC 03E00008 */  jr      $ra
/* 1F810 800308B0 00000000 */  nop


glabel func_800308B4
/* 1F814 800308B4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1F818 800308B8 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1F81C 800308BC AFA40038 */  sw      $a0, 0x0038($sp)
/* 1F820 800308C0 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1F824 800308C4 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1F828 800308C8 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1F82C 800308CC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F830 800308D0 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1F834 800308D4 8FA4004C */  lw      $a0, 0x004C($sp)
/* 1F838 800308D8 8FA50050 */  lw      $a1, 0x0050($sp)
/* 1F83C 800308DC 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1F840 800308E0 0C00C1D5 */  jal     func_80030754
/* 1F844 800308E4 8FA70058 */  lw      $a3, 0x0058($sp)
/* 1F848 800308E8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1F84C 800308EC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1F850 800308F0 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1F854 800308F4 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1F858 800308F8 8FB90048 */  lw      $t9, 0x0048($sp)
/* 1F85C 800308FC 8FA8005C */  lw      $t0, 0x005C($sp)
/* 1F860 80030900 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1F864 80030904 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1F868 80030908 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1F86C 8003090C 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1F870 80030910 AFA00020 */  sw      $zero, 0x0020($sp)
/* 1F874 80030914 AFA20028 */  sw      $v0, 0x0028($sp)
/* 1F878 80030918 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1F87C 8003091C E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1F880 80030920 AFB80014 */  sw      $t8, 0x0014($sp)
/* 1F884 80030924 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1F888 80030928 0C00C09D */  jal     func_80030274
/* 1F88C 8003092C AFA8001C */  sw      $t0, 0x001C($sp)
/* 1F890 80030930 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1F894 80030934 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1F898 80030938 03E00008 */  jr      $ra
/* 1F89C 8003093C 00000000 */  nop


glabel func_80030940
/* 1F8A0 80030940 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1F8A4 80030944 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1F8A8 80030948 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1F8AC 8003094C AFA5003C */  sw      $a1, 0x003C($sp)
/* 1F8B0 80030950 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1F8B4 80030954 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1F8B8 80030958 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F8BC 8003095C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1F8C0 80030960 8FA4004C */  lw      $a0, 0x004C($sp)
/* 1F8C4 80030964 8FA50050 */  lw      $a1, 0x0050($sp)
/* 1F8C8 80030968 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1F8CC 8003096C 0C00C1D5 */  jal     func_80030754
/* 1F8D0 80030970 8FA70058 */  lw      $a3, 0x0058($sp)
/* 1F8D4 80030974 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1F8D8 80030978 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1F8DC 8003097C 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1F8E0 80030980 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1F8E4 80030984 8FB90048 */  lw      $t9, 0x0048($sp)
/* 1F8E8 80030988 8FA8005C */  lw      $t0, 0x005C($sp)
/* 1F8EC 8003098C 8FA90060 */  lw      $t1, 0x0060($sp)
/* 1F8F0 80030990 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1F8F4 80030994 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1F8F8 80030998 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1F8FC 8003099C 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1F900 800309A0 AFA20028 */  sw      $v0, 0x0028($sp)
/* 1F904 800309A4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1F908 800309A8 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1F90C 800309AC AFB80014 */  sw      $t8, 0x0014($sp)
/* 1F910 800309B0 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1F914 800309B4 AFA8001C */  sw      $t0, 0x001C($sp)
/* 1F918 800309B8 0C00C09D */  jal     func_80030274
/* 1F91C 800309BC AFA90020 */  sw      $t1, 0x0020($sp)
/* 1F920 800309C0 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1F924 800309C4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1F928 800309C8 03E00008 */  jr      $ra
/* 1F92C 800309CC 00000000 */  nop


glabel func_800309D0
/* 1F930 800309D0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1F934 800309D4 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1F938 800309D8 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1F93C 800309DC AFA5003C */  sw      $a1, 0x003C($sp)
/* 1F940 800309E0 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1F944 800309E4 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1F948 800309E8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F94C 800309EC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1F950 800309F0 8FA4004C */  lw      $a0, 0x004C($sp)
/* 1F954 800309F4 8FA50050 */  lw      $a1, 0x0050($sp)
/* 1F958 800309F8 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1F95C 800309FC 0C00C1D5 */  jal     func_80030754
/* 1F960 80030A00 8FA70058 */  lw      $a3, 0x0058($sp)
/* 1F964 80030A04 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1F968 80030A08 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1F96C 80030A0C 8FB90048 */  lw      $t9, 0x0048($sp)
/* 1F970 80030A10 8FA8005C */  lw      $t0, 0x005C($sp)
/* 1F974 80030A14 8FA90060 */  lw      $t1, 0x0060($sp)
/* 1F978 80030A18 C7A40064 */  lwc1    $f4, 0x0064($sp)
/* 1F97C 80030A1C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1F980 80030A20 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1F984 80030A24 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1F988 80030A28 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1F98C 80030A2C AFA20028 */  sw      $v0, 0x0028($sp)
/* 1F990 80030A30 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1F994 80030A34 AFB80014 */  sw      $t8, 0x0014($sp)
/* 1F998 80030A38 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1F99C 80030A3C AFA8001C */  sw      $t0, 0x001C($sp)
/* 1F9A0 80030A40 AFA90020 */  sw      $t1, 0x0020($sp)
/* 1F9A4 80030A44 0C00C09D */  jal     func_80030274
/* 1F9A8 80030A48 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1F9AC 80030A4C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1F9B0 80030A50 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1F9B4 80030A54 03E00008 */  jr      $ra
/* 1F9B8 80030A58 00000000 */  nop


glabel func_80030A5C
/* 1F9BC 80030A5C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1F9C0 80030A60 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1F9C4 80030A64 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1F9C8 80030A68 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1F9CC 80030A6C AFA60040 */  sw      $a2, 0x0040($sp)
/* 1F9D0 80030A70 AFA70044 */  sw      $a3, 0x0044($sp)
/* 1F9D4 80030A74 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1F9D8 80030A78 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1F9DC 80030A7C 8FA4004C */  lw      $a0, 0x004C($sp)
/* 1F9E0 80030A80 8FA50050 */  lw      $a1, 0x0050($sp)
/* 1F9E4 80030A84 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1F9E8 80030A88 0C00C1D5 */  jal     func_80030754
/* 1F9EC 80030A8C 8FA70058 */  lw      $a3, 0x0058($sp)
/* 1F9F0 80030A90 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1F9F4 80030A94 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1F9F8 80030A98 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1F9FC 80030A9C 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1FA00 80030AA0 8FB90048 */  lw      $t9, 0x0048($sp)
/* 1FA04 80030AA4 8FA8005C */  lw      $t0, 0x005C($sp)
/* 1FA08 80030AA8 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1FA0C 80030AAC 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 1FA10 80030AB0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1FA14 80030AB4 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1FA18 80030AB8 AFA00020 */  sw      $zero, 0x0020($sp)
/* 1FA1C 80030ABC AFA20028 */  sw      $v0, 0x0028($sp)
/* 1FA20 80030AC0 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1FA24 80030AC4 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1FA28 80030AC8 AFB80014 */  sw      $t8, 0x0014($sp)
/* 1FA2C 80030ACC AFB90018 */  sw      $t9, 0x0018($sp)
/* 1FA30 80030AD0 0C00C09D */  jal     func_80030274
/* 1FA34 80030AD4 AFA8001C */  sw      $t0, 0x001C($sp)
/* 1FA38 80030AD8 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1FA3C 80030ADC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1FA40 80030AE0 03E00008 */  jr      $ra
/* 1FA44 80030AE4 00000000 */  nop


glabel func_80030AE8
/* 1FA48 80030AE8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1FA4C 80030AEC AFBF002C */  sw      $ra, 0x002C($sp)
/* 1FA50 80030AF0 8FAE0040 */  lw      $t6, 0x0040($sp)
/* 1FA54 80030AF4 8FA80044 */  lw      $t0, 0x0044($sp)
/* 1FA58 80030AF8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 1FA5C 80030AFC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 1FA60 80030B00 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 1FA64 80030B04 AFB9001C */  sw      $t9, 0x001C($sp)
/* 1FA68 80030B08 AFB80018 */  sw      $t8, 0x0018($sp)
/* 1FA6C 80030B0C AFAF0014 */  sw      $t7, 0x0014($sp)
/* 1FA70 80030B10 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1FA74 80030B14 0C00C2CB */  jal     func_80030B2C
/* 1FA78 80030B18 AFA80020 */  sw      $t0, 0x0020($sp)
/* 1FA7C 80030B1C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1FA80 80030B20 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1FA84 80030B24 03E00008 */  jr      $ra
/* 1FA88 80030B28 00000000 */  nop


glabel func_80030B2C
/* 1FA8C 80030B2C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 1FA90 80030B30 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1FA94 80030B34 AFA40040 */  sw      $a0, 0x0040($sp)
/* 1FA98 80030B38 AFA50044 */  sw      $a1, 0x0044($sp)
/* 1FA9C 80030B3C AFA60048 */  sw      $a2, 0x0048($sp)
/* 1FAA0 80030B40 AFA7004C */  sw      $a3, 0x004C($sp)
/* 1FAA4 80030B44 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1FAA8 80030B48 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1FAAC 80030B4C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 1FAB0 80030B50 8FA50058 */  lw      $a1, 0x0058($sp)
/* 1FAB4 80030B54 8FA6005C */  lw      $a2, 0x005C($sp)
/* 1FAB8 80030B58 0C00C1D5 */  jal     func_80030754
/* 1FABC 80030B5C 8FA70060 */  lw      $a3, 0x0060($sp)
/* 1FAC0 80030B60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1FAC4 80030B64 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1FAC8 80030B68 8FAF0048 */  lw      $t7, 0x0048($sp)
/* 1FACC 80030B6C 8FB8004C */  lw      $t8, 0x004C($sp)
/* 1FAD0 80030B70 8FB90050 */  lw      $t9, 0x0050($sp)
/* 1FAD4 80030B74 27A8003C */  addiu   $t0, $sp, 0x003C           ## $t0 = FFFFFFFC
/* 1FAD8 80030B78 AFA8001C */  sw      $t0, 0x001C($sp)
/* 1FADC 80030B7C 8FA40040 */  lw      $a0, 0x0040($sp)
/* 1FAE0 80030B80 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1FAE4 80030B84 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1FAE8 80030B88 8FA70044 */  lw      $a3, 0x0044($sp)
/* 1FAEC 80030B8C AFA00020 */  sw      $zero, 0x0020($sp)
/* 1FAF0 80030B90 AFA20028 */  sw      $v0, 0x0028($sp)
/* 1FAF4 80030B94 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1FAF8 80030B98 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1FAFC 80030B9C AFB80014 */  sw      $t8, 0x0014($sp)
/* 1FB00 80030BA0 0C00C09D */  jal     func_80030274
/* 1FB04 80030BA4 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1FB08 80030BA8 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1FB0C 80030BAC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 1FB10 80030BB0 03E00008 */  jr      $ra
/* 1FB14 80030BB4 00000000 */  nop


glabel func_80030BB8
/* 1FB18 80030BB8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1FB1C 80030BBC AFBF0034 */  sw      $ra, 0x0034($sp)
/* 1FB20 80030BC0 AFA40038 */  sw      $a0, 0x0038($sp)
/* 1FB24 80030BC4 AFA5003C */  sw      $a1, 0x003C($sp)
/* 1FB28 80030BC8 AFA60040 */  sw      $a2, 0x0040($sp)
/* 1FB2C 80030BCC AFA70044 */  sw      $a3, 0x0044($sp)
/* 1FB30 80030BD0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1FB34 80030BD4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1FB38 80030BD8 8FA4004C */  lw      $a0, 0x004C($sp)
/* 1FB3C 80030BDC 8FA50050 */  lw      $a1, 0x0050($sp)
/* 1FB40 80030BE0 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1FB44 80030BE4 0C00C1D5 */  jal     func_80030754
/* 1FB48 80030BE8 8FA70058 */  lw      $a3, 0x0058($sp)
/* 1FB4C 80030BEC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1FB50 80030BF0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 1FB54 80030BF4 8FAF0040 */  lw      $t7, 0x0040($sp)
/* 1FB58 80030BF8 8FB80044 */  lw      $t8, 0x0044($sp)
/* 1FB5C 80030BFC 8FB90048 */  lw      $t9, 0x0048($sp)
/* 1FB60 80030C00 8FA8005C */  lw      $t0, 0x005C($sp)
/* 1FB64 80030C04 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1FB68 80030C08 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1FB6C 80030C0C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1FB70 80030C10 8FA7003C */  lw      $a3, 0x003C($sp)
/* 1FB74 80030C14 AFA00020 */  sw      $zero, 0x0020($sp)
/* 1FB78 80030C18 AFA20028 */  sw      $v0, 0x0028($sp)
/* 1FB7C 80030C1C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 1FB80 80030C20 E7A40024 */  swc1    $f4, 0x0024($sp)
/* 1FB84 80030C24 AFB80014 */  sw      $t8, 0x0014($sp)
/* 1FB88 80030C28 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1FB8C 80030C2C 0C00C09D */  jal     func_80030274
/* 1FB90 80030C30 AFA8001C */  sw      $t0, 0x001C($sp)
/* 1FB94 80030C34 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 1FB98 80030C38 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1FB9C 80030C3C 03E00008 */  jr      $ra
/* 1FBA0 80030C40 00000000 */  nop


glabel func_80030C44
/* 1FBA4 80030C44 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1FBA8 80030C48 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1FBAC 80030C4C AFA5002C */  sw      $a1, 0x002C($sp)
/* 1FBB0 80030C50 AFA60030 */  sw      $a2, 0x0030($sp)
/* 1FBB4 80030C54 AFA70034 */  sw      $a3, 0x0034($sp)
/* 1FBB8 80030C58 8FAF0034 */  lw      $t7, 0x0034($sp)
/* 1FBBC 80030C5C 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 1FBC0 80030C60 ADEE0000 */  sw      $t6, 0x0000($t7)           ## 00000000
/* 1FBC4 80030C64 8C850040 */  lw      $a1, 0x0040($a0)           ## 00000040
/* 1FBC8 80030C68 AFA40028 */  sw      $a0, 0x0028($sp)
/* 1FBCC 80030C6C 0C00B63B */  jal     func_8002D8EC
/* 1FBD0 80030C70 8FA60038 */  lw      $a2, 0x0038($sp)
/* 1FBD4 80030C74 14400003 */  bne     $v0, $zero, .L80030C84
/* 1FBD8 80030C78 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1FBDC 80030C7C 1000001E */  beq     $zero, $zero, .L80030CF8
/* 1FBE0 80030C80 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80030C84:
/* 1FBE4 80030C84 C7A4003C */  lwc1    $f4, 0x003C($sp)
/* 1FBE8 80030C88 8FB80030 */  lw      $t8, 0x0030($sp)
/* 1FBEC 80030C8C 97B90046 */  lhu     $t9, 0x0046($sp)
/* 1FBF0 80030C90 97A5002E */  lhu     $a1, 0x002E($sp)
/* 1FBF4 80030C94 8FA60028 */  lw      $a2, 0x0028($sp)
/* 1FBF8 80030C98 8FA70038 */  lw      $a3, 0x0038($sp)
/* 1FBFC 80030C9C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 1FC00 80030CA0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 1FC04 80030CA4 0C00B5C0 */  jal     func_8002D700
/* 1FC08 80030CA8 AFB90018 */  sw      $t9, 0x0018($sp)
/* 1FC0C 80030CAC 1440000F */  bne     $v0, $zero, .L80030CEC
/* 1FC10 80030CB0 8FA40028 */  lw      $a0, 0x0028($sp)
/* 1FC14 80030CB4 8FA80038 */  lw      $t0, 0x0038($sp)
/* 1FC18 80030CB8 C7A6003C */  lwc1    $f6, 0x003C($sp)
/* 1FC1C 80030CBC 8FA90040 */  lw      $t1, 0x0040($sp)
/* 1FC20 80030CC0 97AA0046 */  lhu     $t2, 0x0046($sp)
/* 1FC24 80030CC4 97A5002E */  lhu     $a1, 0x002E($sp)
/* 1FC28 80030CC8 8FA60030 */  lw      $a2, 0x0030($sp)
/* 1FC2C 80030CCC 8FA70034 */  lw      $a3, 0x0034($sp)
/* 1FC30 80030CD0 AFA80010 */  sw      $t0, 0x0010($sp)
/* 1FC34 80030CD4 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 1FC38 80030CD8 AFA90018 */  sw      $t1, 0x0018($sp)
/* 1FC3C 80030CDC 0C00CF2E */  jal     func_80033CB8
/* 1FC40 80030CE0 AFAA001C */  sw      $t2, 0x001C($sp)
/* 1FC44 80030CE4 50400004 */  beql    $v0, $zero, .L80030CF8
/* 1FC48 80030CE8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80030CEC:
/* 1FC4C 80030CEC 10000002 */  beq     $zero, $zero, .L80030CF8
/* 1FC50 80030CF0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1FC54 80030CF4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80030CF8:
/* 1FC58 80030CF8 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1FC5C 80030CFC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1FC60 80030D00 03E00008 */  jr      $ra
/* 1FC64 80030D04 00000000 */  nop


glabel func_80030D08
/* 1FC68 80030D08 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1FC6C 80030D0C 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 1FC70 80030D10 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1FC74 80030D14 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1FC78 80030D18 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 1FC7C 80030D1C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1FC80 80030D20 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFFC
/* 1FC84 80030D24 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFF8
/* 1FC88 80030D28 E7AC0014 */  swc1    $f12, 0x0014($sp)
/* 1FC8C 80030D2C AFA00018 */  sw      $zero, 0x0018($sp)
/* 1FC90 80030D30 AFA0001C */  sw      $zero, 0x001C($sp)
/* 1FC94 80030D34 0C00C311 */  jal     func_80030C44
/* 1FC98 80030D38 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1FC9C 80030D3C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1FCA0 80030D40 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1FCA4 80030D44 03E00008 */  jr      $ra
/* 1FCA8 80030D48 00000000 */  nop


glabel func_80030D4C
/* 1FCAC 80030D4C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1FCB0 80030D50 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 1FCB4 80030D54 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 1FCB8 80030D58 AFA50034 */  sw      $a1, 0x0034($sp)
/* 1FCBC 80030D5C 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 1FCC0 80030D60 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 1FCC4 80030D64 AFAF001C */  sw      $t7, 0x001C($sp)
/* 1FCC8 80030D68 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1FCCC 80030D6C 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFFC
/* 1FCD0 80030D70 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFF8
/* 1FCD4 80030D74 E7AC0014 */  swc1    $f12, 0x0014($sp)
/* 1FCD8 80030D78 AFA00018 */  sw      $zero, 0x0018($sp)
/* 1FCDC 80030D7C 0C00C311 */  jal     func_80030C44
/* 1FCE0 80030D80 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 1FCE4 80030D84 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 1FCE8 80030D88 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1FCEC 80030D8C 03E00008 */  jr      $ra
/* 1FCF0 80030D90 00000000 */  nop


glabel func_80030D94
/* 1FCF4 80030D94 A4800000 */  sh      $zero, 0x0000($a0)         ## 00000000
/* 1FCF8 80030D98 A4800002 */  sh      $zero, 0x0002($a0)         ## 00000002
/* 1FCFC 80030D9C AC800004 */  sw      $zero, 0x0004($a0)         ## 00000004
/* 1FD00 80030DA0 AC800008 */  sw      $zero, 0x0008($a0)         ## 00000008
/* 1FD04 80030DA4 03E00008 */  jr      $ra
/* 1FD08 80030DA8 00000000 */  nop


glabel func_80030DAC
/* 1FD0C 80030DAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1FD10 80030DB0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1FD14 80030DB4 AFA40020 */  sw      $a0, 0x0020($sp)
/* 1FD18 80030DB8 AFA50024 */  sw      $a1, 0x0024($sp)
/* 1FD1C 80030DBC AFA60028 */  sw      $a2, 0x0028($sp)
/* 1FD20 80030DC0 AFA7002C */  sw      $a3, 0x002C($sp)
/* 1FD24 80030DC4 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 1FD28 80030DC8 8FAF0024 */  lw      $t7, 0x0024($sp)
/* 1FD2C 80030DCC 2406FFFE */  addiu   $a2, $zero, 0xFFFE         ## $a2 = FFFFFFFE
/* 1FD30 80030DD0 A5EE0000 */  sh      $t6, 0x0000($t7)           ## 00000000
/* 1FD34 80030DD4 8FB80024 */  lw      $t8, 0x0024($sp)
/* 1FD38 80030DD8 A7000002 */  sh      $zero, 0x0002($t8)         ## 00000002
/* 1FD3C 80030DDC 8FA40020 */  lw      $a0, 0x0020($sp)
/* 1FD40 80030DE0 8FA50028 */  lw      $a1, 0x0028($sp)
/* 1FD44 80030DE4 24840074 */  addiu   $a0, $a0, 0x0074           ## $a0 = 00000074
/* 1FD48 80030DE8 AFA4001C */  sw      $a0, 0x001C($sp)
/* 1FD4C 80030DEC 0C028076 */  jal     func_800A01D8
/* 1FD50 80030DF0 00052880 */  sll     $a1, $a1,  2
/* 1FD54 80030DF4 8FB90024 */  lw      $t9, 0x0024($sp)
/* 1FD58 80030DF8 8FA4001C */  lw      $a0, 0x001C($sp)
/* 1FD5C 80030DFC AF220004 */  sw      $v0, 0x0004($t9)           ## 00000004
/* 1FD60 80030E00 0C02806E */  jal     func_800A01B8
/* 1FD64 80030E04 8FA5002C */  lw      $a1, 0x002C($sp)
/* 1FD68 80030E08 8FA80024 */  lw      $t0, 0x0024($sp)
/* 1FD6C 80030E0C AD020008 */  sw      $v0, 0x0008($t0)           ## 00000008
/* 1FD70 80030E10 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1FD74 80030E14 03E00008 */  jr      $ra
/* 1FD78 80030E18 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel func_80030E1C
/* 1FD7C 80030E1C 94820002 */  lhu     $v0, 0x0002($a0)           ## 00000002
/* 1FD80 80030E20 94880000 */  lhu     $t0, 0x0000($a0)           ## 00000000
/* 1FD84 80030E24 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 1FD88 80030E28 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 1FD8C 80030E2C 3319FFFF */  andi    $t9, $t8, 0xFFFF           ## $t9 = 00000001
/* 1FD90 80030E30 00027880 */  sll     $t7, $v0,  2
/* 1FD94 80030E34 0328082A */  slt     $at, $t9, $t0
/* 1FD98 80030E38 A4980002 */  sh      $t8, 0x0002($a0)           ## 00000002
/* 1FD9C 80030E3C 14200003 */  bne     $at, $zero, .L80030E4C
/* 1FDA0 80030E40 01CF1821 */  addu    $v1, $t6, $t7
/* 1FDA4 80030E44 03E00008 */  jr      $ra
/* 1FDA8 80030E48 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80030E4C:
/* 1FDAC 80030E4C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 1FDB0 80030E50 03E00008 */  jr      $ra
/* 1FDB4 80030E54 00000000 */  nop


glabel func_80030E58
/* 1FDB8 80030E58 94820002 */  lhu     $v0, 0x0002($a0)           ## 00000002
/* 1FDBC 80030E5C 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 1FDC0 80030E60 A48E0002 */  sh      $t6, 0x0002($a0)           ## 00000002
/* 1FDC4 80030E64 03E00008 */  jr      $ra
/* 1FDC8 80030E68 00000000 */  nop


glabel func_80030E6C
/* 1FDCC 80030E6C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1FDD0 80030E70 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 1FDD4 80030E74 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 1FDD8 80030E78 00000000 */  nop
/* 1FDDC 80030E7C A4800010 */  sh      $zero, 0x0010($a0)         ## 00000010
/* 1FDE0 80030E80 84820010 */  lh      $v0, 0x0010($a0)           ## 00000010
/* 1FDE4 80030E84 E4800008 */  swc1    $f0, 0x0008($a0)           ## 00000008
/* 1FDE8 80030E88 E4800004 */  swc1    $f0, 0x0004($a0)           ## 00000004
/* 1FDEC 80030E8C E4800000 */  swc1    $f0, 0x0000($a0)           ## 00000000
/* 1FDF0 80030E90 E482001C */  swc1    $f2, 0x001C($a0)           ## 0000001C
/* 1FDF4 80030E94 E4820018 */  swc1    $f2, 0x0018($a0)           ## 00000018
/* 1FDF8 80030E98 E4820014 */  swc1    $f2, 0x0014($a0)           ## 00000014
/* 1FDFC 80030E9C A482000E */  sh      $v0, 0x000E($a0)           ## 0000000E
/* 1FE00 80030EA0 A482000C */  sh      $v0, 0x000C($a0)           ## 0000000C
/* 1FE04 80030EA4 03E00008 */  jr      $ra
/* 1FE08 80030EA8 00000000 */  nop


glabel func_80030EAC
/* 1FE0C 80030EAC 8CAF0000 */  lw      $t7, 0x0000($a1)           ## 00000000
/* 1FE10 80030EB0 AC8F0000 */  sw      $t7, 0x0000($a0)           ## 00000000
/* 1FE14 80030EB4 8CAE0004 */  lw      $t6, 0x0004($a1)           ## 00000004
/* 1FE18 80030EB8 AC8E0004 */  sw      $t6, 0x0004($a0)           ## 00000004
/* 1FE1C 80030EBC 8CAF0008 */  lw      $t7, 0x0008($a1)           ## 00000008
/* 1FE20 80030EC0 AC8F0008 */  sw      $t7, 0x0008($a0)           ## 00000008
/* 1FE24 80030EC4 88D90000 */  lwl     $t9, 0x0000($a2)           ## 00000000
/* 1FE28 80030EC8 98D90003 */  lwr     $t9, 0x0003($a2)           ## 00000003
/* 1FE2C 80030ECC A899000C */  swl     $t9, 0x000C($a0)           ## 0000000C
/* 1FE30 80030ED0 B899000F */  swr     $t9, 0x000F($a0)           ## 0000000F
/* 1FE34 80030ED4 94D90004 */  lhu     $t9, 0x0004($a2)           ## 00000004
/* 1FE38 80030ED8 A4990010 */  sh      $t9, 0x0010($a0)           ## 00000010
/* 1FE3C 80030EDC 8CE90000 */  lw      $t1, 0x0000($a3)           ## 00000000
/* 1FE40 80030EE0 AC890014 */  sw      $t1, 0x0014($a0)           ## 00000014
/* 1FE44 80030EE4 8CE80004 */  lw      $t0, 0x0004($a3)           ## 00000004
/* 1FE48 80030EE8 AC880018 */  sw      $t0, 0x0018($a0)           ## 00000018
/* 1FE4C 80030EEC 8CE90008 */  lw      $t1, 0x0008($a3)           ## 00000008
/* 1FE50 80030EF0 AC89001C */  sw      $t1, 0x001C($a0)           ## 0000001C
/* 1FE54 80030EF4 03E00008 */  jr      $ra
/* 1FE58 80030EF8 00000000 */  nop


glabel func_80030EFC
/* 1FE5C 80030EFC C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 1FE60 80030F00 C4860000 */  lwc1    $f6, 0x0000($a0)           ## 00000000
/* 1FE64 80030F04 46062032 */  c.eq.s  $f4, $f6
/* 1FE68 80030F08 00000000 */  nop
/* 1FE6C 80030F0C 4500002C */  bc1f    .L80030FC0
/* 1FE70 80030F10 00000000 */  nop
/* 1FE74 80030F14 C4A80004 */  lwc1    $f8, 0x0004($a1)           ## 00000004
/* 1FE78 80030F18 C48A0004 */  lwc1    $f10, 0x0004($a0)          ## 00000004
/* 1FE7C 80030F1C 460A4032 */  c.eq.s  $f8, $f10
/* 1FE80 80030F20 00000000 */  nop
/* 1FE84 80030F24 45000026 */  bc1f    .L80030FC0
/* 1FE88 80030F28 00000000 */  nop
/* 1FE8C 80030F2C C4B00008 */  lwc1    $f16, 0x0008($a1)          ## 00000008
/* 1FE90 80030F30 C4920008 */  lwc1    $f18, 0x0008($a0)          ## 00000008
/* 1FE94 80030F34 46128032 */  c.eq.s  $f16, $f18
/* 1FE98 80030F38 00000000 */  nop
/* 1FE9C 80030F3C 45000020 */  bc1f    .L80030FC0
/* 1FEA0 80030F40 00000000 */  nop
/* 1FEA4 80030F44 84AE000C */  lh      $t6, 0x000C($a1)           ## 0000000C
/* 1FEA8 80030F48 848F000C */  lh      $t7, 0x000C($a0)           ## 0000000C
/* 1FEAC 80030F4C 15CF001C */  bne     $t6, $t7, .L80030FC0
/* 1FEB0 80030F50 00000000 */  nop
/* 1FEB4 80030F54 84B8000E */  lh      $t8, 0x000E($a1)           ## 0000000E
/* 1FEB8 80030F58 8499000E */  lh      $t9, 0x000E($a0)           ## 0000000E
/* 1FEBC 80030F5C 17190018 */  bne     $t8, $t9, .L80030FC0
/* 1FEC0 80030F60 00000000 */  nop
/* 1FEC4 80030F64 84A80010 */  lh      $t0, 0x0010($a1)           ## 00000010
/* 1FEC8 80030F68 84890010 */  lh      $t1, 0x0010($a0)           ## 00000010
/* 1FECC 80030F6C 15090014 */  bne     $t0, $t1, .L80030FC0
/* 1FED0 80030F70 00000000 */  nop
/* 1FED4 80030F74 C4A40014 */  lwc1    $f4, 0x0014($a1)           ## 00000014
/* 1FED8 80030F78 C4860014 */  lwc1    $f6, 0x0014($a0)           ## 00000014
/* 1FEDC 80030F7C 46062032 */  c.eq.s  $f4, $f6
/* 1FEE0 80030F80 00000000 */  nop
/* 1FEE4 80030F84 4500000E */  bc1f    .L80030FC0
/* 1FEE8 80030F88 00000000 */  nop
/* 1FEEC 80030F8C C4A80018 */  lwc1    $f8, 0x0018($a1)           ## 00000018
/* 1FEF0 80030F90 C48A0018 */  lwc1    $f10, 0x0018($a0)          ## 00000018
/* 1FEF4 80030F94 460A4032 */  c.eq.s  $f8, $f10
/* 1FEF8 80030F98 00000000 */  nop
/* 1FEFC 80030F9C 45000008 */  bc1f    .L80030FC0
/* 1FF00 80030FA0 00000000 */  nop
/* 1FF04 80030FA4 C4B0001C */  lwc1    $f16, 0x001C($a1)          ## 0000001C
/* 1FF08 80030FA8 C492001C */  lwc1    $f18, 0x001C($a0)          ## 0000001C
/* 1FF0C 80030FAC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1FF10 80030FB0 46128032 */  c.eq.s  $f16, $f18
/* 1FF14 80030FB4 00000000 */  nop
/* 1FF18 80030FB8 45010003 */  bc1t    .L80030FC8
/* 1FF1C 80030FBC 00000000 */  nop
.L80030FC0:
/* 1FF20 80030FC0 03E00008 */  jr      $ra
/* 1FF24 80030FC4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80030FC8:
/* 1FF28 80030FC8 03E00008 */  jr      $ra
/* 1FF2C 80030FCC 00000000 */  nop


glabel func_80030FD0
/* 1FF30 80030FD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FF34 80030FD4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1FF38 80030FD8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 1FF3C 80030FDC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 1FF40 80030FE0 0C00ACDF */  jal     func_8002B37C
/* 1FF44 80030FE4 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 1FF48 80030FE8 8FA40018 */  lw      $a0, 0x0018($sp)
/* 1FF4C 80030FEC 0C00ACDF */  jal     func_8002B37C
/* 1FF50 80030FF0 24840004 */  addiu   $a0, $a0, 0x0004           ## $a0 = 00000004
/* 1FF54 80030FF4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 1FF58 80030FF8 0C00ACDF */  jal     func_8002B37C
/* 1FF5C 80030FFC 24840006 */  addiu   $a0, $a0, 0x0006           ## $a0 = 00000006
/* 1FF60 80031000 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1FF64 80031004 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FF68 80031008 03E00008 */  jr      $ra
/* 1FF6C 8003100C 00000000 */  nop


glabel func_80031010
/* 1FF70 80031010 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FF74 80031014 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 1FF78 80031018 0C00C3F4 */  jal     func_80030FD0
/* 1FF7C 8003101C A4800000 */  sh      $zero, 0x0000($a0)         ## 00000000
/* 1FF80 80031020 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 1FF84 80031024 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FF88 80031028 03E00008 */  jr      $ra
/* 1FF8C 8003102C 00000000 */  nop


glabel func_80031030
/* 1FF90 80031030 A4800000 */  sh      $zero, 0x0000($a0)         ## 00000000
/* 1FF94 80031034 03E00008 */  jr      $ra
/* 1FF98 80031038 00000000 */  nop


glabel func_8003103C
/* 1FF9C 8003103C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1FFA0 80031040 AFB00018 */  sw      $s0, 0x0018($sp)
/* 1FFA4 80031044 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1FFA8 80031048 AFBF001C */  sw      $ra, 0x001C($sp)
/* 1FFAC 8003104C AFA40020 */  sw      $a0, 0x0020($sp)
/* 1FFB0 80031050 AE000000 */  sw      $zero, 0x0000($s0)         ## 00000000
/* 1FFB4 80031054 AE000004 */  sw      $zero, 0x0004($s0)         ## 00000004
/* 1FFB8 80031058 0C00C39B */  jal     func_80030E6C
/* 1FFBC 8003105C 26040014 */  addiu   $a0, $s0, 0x0014           ## $a0 = 00000014
/* 1FFC0 80031060 0C00C39B */  jal     func_80030E6C
/* 1FFC4 80031064 26040034 */  addiu   $a0, $s0, 0x0034           ## $a0 = 00000034
/* 1FFC8 80031068 0C00C404 */  jal     func_80031010
/* 1FFCC 8003106C 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 1FFD0 80031070 0C00C40C */  jal     func_80031030
/* 1FFD4 80031074 26040010 */  addiu   $a0, $s0, 0x0010           ## $a0 = 00000010
/* 1FFD8 80031078 A6000058 */  sh      $zero, 0x0058($s0)         ## 00000058
/* 1FFDC 8003107C 86020058 */  lh      $v0, 0x0058($s0)           ## 00000058
/* 1FFE0 80031080 A600005A */  sh      $zero, 0x005A($s0)         ## 0000005A
/* 1FFE4 80031084 A6020056 */  sh      $v0, 0x0056($s0)           ## 00000056
/* 1FFE8 80031088 A6020054 */  sh      $v0, 0x0054($s0)           ## 00000054
/* 1FFEC 8003108C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 1FFF0 80031090 8FB00018 */  lw      $s0, 0x0018($sp)
/* 1FFF4 80031094 03E00008 */  jr      $ra
/* 1FFF8 80031098 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


glabel func_8003109C
/* 1FFFC 8003109C AC850000 */  sw      $a1, 0x0000($a0)           ## 00000000
/* 20000 800310A0 AC860004 */  sw      $a2, 0x0004($a0)           ## 00000004
/* 20004 800310A4 24A20050 */  addiu   $v0, $a1, 0x0050           ## $v0 = 00000050
/* 20008 800310A8 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 00000050
/* 2000C 800310AC 24A300B4 */  addiu   $v1, $a1, 0x00B4           ## $v1 = 000000B4
/* 20010 800310B0 24A70024 */  addiu   $a3, $a1, 0x0024           ## $a3 = 00000024
/* 20014 800310B4 AC8F0014 */  sw      $t7, 0x0014($a0)           ## 00000014
/* 20018 800310B8 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 00000054
/* 2001C 800310BC AC8E0018 */  sw      $t6, 0x0018($a0)           ## 00000018
/* 20020 800310C0 8C4F0008 */  lw      $t7, 0x0008($v0)           ## 00000058
/* 20024 800310C4 AC8F001C */  sw      $t7, 0x001C($a0)           ## 0000001C
/* 20028 800310C8 88790000 */  lwl     $t9, 0x0000($v1)           ## 000000B4
/* 2002C 800310CC 98790003 */  lwr     $t9, 0x0003($v1)           ## 000000B7
/* 20030 800310D0 A8990020 */  swl     $t9, 0x0020($a0)           ## 00000020
/* 20034 800310D4 B8990023 */  swr     $t9, 0x0023($a0)           ## 00000023
/* 20038 800310D8 84880020 */  lh      $t0, 0x0020($a0)           ## 00000020
/* 2003C 800310DC 94790004 */  lhu     $t9, 0x0004($v1)           ## 000000B8
/* 20040 800310E0 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = FFFFFFFF
/* 20044 800310E4 A4890020 */  sh      $t1, 0x0020($a0)           ## 00000020
/* 20048 800310E8 A4990024 */  sh      $t9, 0x0024($a0)           ## 00000024
/* 2004C 800310EC 8CEB0000 */  lw      $t3, 0x0000($a3)           ## 00000024
/* 20050 800310F0 AC8B0028 */  sw      $t3, 0x0028($a0)           ## 00000028
/* 20054 800310F4 8CEA0004 */  lw      $t2, 0x0004($a3)           ## 00000028
/* 20058 800310F8 AC8A002C */  sw      $t2, 0x002C($a0)           ## 0000002C
/* 2005C 800310FC 8CEB0008 */  lw      $t3, 0x0008($a3)           ## 0000002C
/* 20060 80031100 AC8B0030 */  sw      $t3, 0x0030($a0)           ## 00000030
/* 20064 80031104 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000050
/* 20068 80031108 AC8D0034 */  sw      $t5, 0x0034($a0)           ## 00000034
/* 2006C 8003110C 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 00000054
/* 20070 80031110 AC8C0038 */  sw      $t4, 0x0038($a0)           ## 00000038
/* 20074 80031114 8C4D0008 */  lw      $t5, 0x0008($v0)           ## 00000058
/* 20078 80031118 AC8D003C */  sw      $t5, 0x003C($a0)           ## 0000003C
/* 2007C 8003111C 886F0000 */  lwl     $t7, 0x0000($v1)           ## 000000B4
/* 20080 80031120 986F0003 */  lwr     $t7, 0x0003($v1)           ## 000000B7
/* 20084 80031124 A88F0040 */  swl     $t7, 0x0040($a0)           ## 00000040
/* 20088 80031128 B88F0043 */  swr     $t7, 0x0043($a0)           ## 00000043
/* 2008C 8003112C 946F0004 */  lhu     $t7, 0x0004($v1)           ## 000000B8
/* 20090 80031130 A48F0044 */  sh      $t7, 0x0044($a0)           ## 00000044
/* 20094 80031134 8CF90000 */  lw      $t9, 0x0000($a3)           ## 00000024
/* 20098 80031138 AC990048 */  sw      $t9, 0x0048($a0)           ## 00000048
/* 2009C 8003113C 8CF80004 */  lw      $t8, 0x0004($a3)           ## 00000028
/* 200A0 80031140 AC98004C */  sw      $t8, 0x004C($a0)           ## 0000004C
/* 200A4 80031144 8CF90008 */  lw      $t9, 0x0008($a3)           ## 0000002C
/* 200A8 80031148 AC990050 */  sw      $t9, 0x0050($a0)           ## 00000050
/* 200AC 8003114C 03E00008 */  jr      $ra
/* 200B0 80031150 00000000 */  nop


glabel func_80031154
/* 200B4 80031154 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 200B8 80031158 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 200BC 8003115C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 200C0 80031160 24C40014 */  addiu   $a0, $a2, 0x0014           ## $a0 = 00000014
/* 200C4 80031164 0C00C3BF */  jal     func_80030EFC
/* 200C8 80031168 24C50034 */  addiu   $a1, $a2, 0x0034           ## $a1 = 00000034
/* 200CC 8003116C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 200D0 80031170 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 200D4 80031174 03E00008 */  jr      $ra
/* 200D8 80031178 00000000 */  nop


glabel func_8003117C
/* 200DC 8003117C AC800000 */  sw      $zero, 0x0000($a0)         ## 00000000
/* 200E0 80031180 03E00008 */  jr      $ra
/* 200E4 80031184 00000000 */  nop


glabel func_80031188
/* 200E8 80031188 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 200EC 8003118C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 200F0 80031190 AFA5001C */  sw      $a1, 0x001C($sp)
/* 200F4 80031194 AFA60020 */  sw      $a2, 0x0020($sp)
/* 200F8 80031198 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 200FC 8003119C 8FA50020 */  lw      $a1, 0x0020($sp)
/* 20100 800311A0 24E40074 */  addiu   $a0, $a3, 0x0074           ## $a0 = 00000074
/* 20104 800311A4 2406FFFE */  addiu   $a2, $zero, 0xFFFE         ## $a2 = FFFFFFFE
/* 20108 800311A8 0C028076 */  jal     func_800A01D8
/* 2010C 800311AC 00052900 */  sll     $a1, $a1,  4
/* 20110 800311B0 8FAE001C */  lw      $t6, 0x001C($sp)
/* 20114 800311B4 ADC20000 */  sw      $v0, 0x0000($t6)           ## 00000000
/* 20118 800311B8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2011C 800311BC 03E00008 */  jr      $ra
/* 20120 800311C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_800311C4
/* 20124 800311C4 AC800000 */  sw      $zero, 0x0000($a0)         ## 00000000
/* 20128 800311C8 03E00008 */  jr      $ra
/* 2012C 800311CC 00000000 */  nop


glabel func_800311D0
/* 20130 800311D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 20134 800311D4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 20138 800311D8 AFA5001C */  sw      $a1, 0x001C($sp)
/* 2013C 800311DC AFA60020 */  sw      $a2, 0x0020($sp)
/* 20140 800311E0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 20144 800311E4 8FA50020 */  lw      $a1, 0x0020($sp)
/* 20148 800311E8 24E40074 */  addiu   $a0, $a3, 0x0074           ## $a0 = 00000074
/* 2014C 800311EC 2406FFFE */  addiu   $a2, $zero, 0xFFFE         ## $a2 = FFFFFFFE
/* 20150 800311F0 00A00821 */  addu    $at, $a1, $zero
/* 20154 800311F4 00052880 */  sll     $a1, $a1,  2
/* 20158 800311F8 00A12823 */  subu    $a1, $a1, $at
/* 2015C 800311FC 0C028076 */  jal     func_800A01D8
/* 20160 80031200 00052840 */  sll     $a1, $a1,  1
/* 20164 80031204 8FAE001C */  lw      $t6, 0x001C($sp)
/* 20168 80031208 ADC20000 */  sw      $v0, 0x0000($t6)           ## 00000000
/* 2016C 8003120C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 20170 80031210 03E00008 */  jr      $ra
/* 20174 80031214 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_80031218
/* 20178 80031218 AFA40000 */  sw      $a0, 0x0000($sp)
/* 2017C 8003121C 8CAF0034 */  lw      $t7, 0x0034($a1)           ## 00000034
/* 20180 80031220 8CAE0038 */  lw      $t6, 0x0038($a1)           ## 00000038
/* 20184 80031224 ACAF0014 */  sw      $t7, 0x0014($a1)           ## 00000014
/* 20188 80031228 ACAE0018 */  sw      $t6, 0x0018($a1)           ## 00000018
/* 2018C 8003122C 8CAE0040 */  lw      $t6, 0x0040($a1)           ## 00000040
/* 20190 80031230 8CAF003C */  lw      $t7, 0x003C($a1)           ## 0000003C
/* 20194 80031234 ACAE0020 */  sw      $t6, 0x0020($a1)           ## 00000020
/* 20198 80031238 ACAF001C */  sw      $t7, 0x001C($a1)           ## 0000001C
/* 2019C 8003123C 8CAF0044 */  lw      $t7, 0x0044($a1)           ## 00000044
/* 201A0 80031240 8CAE0048 */  lw      $t6, 0x0048($a1)           ## 00000048
/* 201A4 80031244 ACAF0024 */  sw      $t7, 0x0024($a1)           ## 00000024
/* 201A8 80031248 ACAE0028 */  sw      $t6, 0x0028($a1)           ## 00000028
/* 201AC 8003124C 8CAE0050 */  lw      $t6, 0x0050($a1)           ## 00000050
/* 201B0 80031250 8CAF004C */  lw      $t7, 0x004C($a1)           ## 0000004C
/* 201B4 80031254 ACAE0030 */  sw      $t6, 0x0030($a1)           ## 00000030
/* 201B8 80031258 ACAF002C */  sw      $t7, 0x002C($a1)           ## 0000002C
/* 201BC 8003125C 03E00008 */  jr      $ra
/* 201C0 80031260 00000000 */  nop


glabel func_80031264
/* 201C4 80031264 04800003 */  bltz    $a0, .L80031274
/* 201C8 80031268 28810032 */  slti    $at, $a0, 0x0032
/* 201CC 8003126C 14200003 */  bne     $at, $zero, .L8003127C
/* 201D0 80031270 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80031274:
/* 201D4 80031274 03E00008 */  jr      $ra
/* 201D8 80031278 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8003127C:
/* 201DC 8003127C 03E00008 */  jr      $ra
/* 201E0 80031280 00000000 */  nop


glabel func_80031284
/* 201E4 80031284 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 201E8 80031288 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 201EC 8003128C AFA40018 */  sw      $a0, 0x0018($sp)
/* 201F0 80031290 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 201F4 80031294 A0AE0000 */  sb      $t6, 0x0000($a1)           ## 00000000
/* 201F8 80031298 AFA5001C */  sw      $a1, 0x001C($sp)
/* 201FC 8003129C 0C00C45F */  jal     func_8003117C
/* 20200 800312A0 24A413F0 */  addiu   $a0, $a1, 0x13F0           ## $a0 = 000013F0
/* 20204 800312A4 8FA4001C */  lw      $a0, 0x001C($sp)
/* 20208 800312A8 0C00C471 */  jal     func_800311C4
/* 2020C 800312AC 248413F4 */  addiu   $a0, $a0, 0x13F4           ## $a0 = 000013F4
/* 20210 800312B0 8FA5001C */  lw      $a1, 0x001C($sp)
/* 20214 800312B4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 20218 800312B8 0C00AD0F */  jal     func_8002B43C
/* 2021C 800312BC 24A513F8 */  addiu   $a1, $a1, 0x13F8           ## $a1 = 000013F8
/* 20220 800312C0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 20224 800312C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 20228 800312C8 03E00008 */  jr      $ra
/* 2022C 800312CC 00000000 */  nop


glabel func_800312D0
/* 20230 800312D0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 20234 800312D4 AFB50028 */  sw      $s5, 0x0028($sp)
/* 20238 800312D8 AFB40024 */  sw      $s4, 0x0024($sp)
/* 2023C 800312DC 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 20240 800312E0 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 20244 800312E4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 20248 800312E8 AFB30020 */  sw      $s3, 0x0020($sp)
/* 2024C 800312EC AFB2001C */  sw      $s2, 0x001C($sp)
/* 20250 800312F0 AFB10018 */  sw      $s1, 0x0018($sp)
/* 20254 800312F4 AFB00014 */  sw      $s0, 0x0014($sp)
/* 20258 800312F8 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 2025C 800312FC 26B10004 */  addiu   $s1, $s5, 0x0004           ## $s1 = 00000004
/* 20260 80031300 02A09025 */  or      $s2, $s5, $zero            ## $s2 = 00000000
/* 20264 80031304 24131388 */  addiu   $s3, $zero, 0x1388         ## $s3 = 00001388
.L80031308:
/* 20268 80031308 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 2026C 8003130C 0C00C40F */  jal     func_8003103C
/* 20270 80031310 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000004
/* 20274 80031314 26100064 */  addiu   $s0, $s0, 0x0064           ## $s0 = 00000064
/* 20278 80031318 26310064 */  addiu   $s1, $s1, 0x0064           ## $s1 = 00000068
/* 2027C 8003131C 26520002 */  addiu   $s2, $s2, 0x0002           ## $s2 = 00000002
/* 20280 80031320 1613FFF9 */  bne     $s0, $s3, .L80031308
/* 20284 80031324 A640138A */  sh      $zero, 0x138A($s2)         ## 0000138C
/* 20288 80031328 26B013F0 */  addiu   $s0, $s5, 0x13F0           ## $s0 = 000013F0
/* 2028C 8003132C 0C00C45F */  jal     func_8003117C
/* 20290 80031330 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000013F0
/* 20294 80031334 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 20298 80031338 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000013F0
/* 2029C 8003133C 0C00C462 */  jal     func_80031188
/* 202A0 80031340 8EA61408 */  lw      $a2, 0x1408($s5)           ## 00001408
/* 202A4 80031344 26B013F4 */  addiu   $s0, $s5, 0x13F4           ## $s0 = 000013F4
/* 202A8 80031348 0C00C471 */  jal     func_800311C4
/* 202AC 8003134C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000013F4
/* 202B0 80031350 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 202B4 80031354 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000013F4
/* 202B8 80031358 0C00C474 */  jal     func_800311D0
/* 202BC 8003135C 8EA6140C */  lw      $a2, 0x140C($s5)           ## 0000140C
/* 202C0 80031360 26B013F8 */  addiu   $s0, $s5, 0x13F8           ## $s0 = 000013F8
/* 202C4 80031364 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000013F8
/* 202C8 80031368 0C00AD0F */  jal     func_8002B43C
/* 202CC 8003136C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 202D0 80031370 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 202D4 80031374 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000013F8
/* 202D8 80031378 0C00AD14 */  jal     func_8002B450
/* 202DC 8003137C 8EA61404 */  lw      $a2, 0x1404($s5)           ## 00001404
/* 202E0 80031380 8FBF002C */  lw      $ra, 0x002C($sp)
/* 202E4 80031384 8FB00014 */  lw      $s0, 0x0014($sp)
/* 202E8 80031388 8FB10018 */  lw      $s1, 0x0018($sp)
/* 202EC 8003138C 8FB2001C */  lw      $s2, 0x001C($sp)
/* 202F0 80031390 8FB30020 */  lw      $s3, 0x0020($sp)
/* 202F4 80031394 8FB40024 */  lw      $s4, 0x0024($sp)
/* 202F8 80031398 8FB50028 */  lw      $s5, 0x0028($sp)
/* 202FC 8003139C 03E00008 */  jr      $ra
/* 20300 800313A0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


glabel DynaPolyInfo_RegisterActor
/* 20304 800313A4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 20308 800313A8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 2030C 800313AC AFA40028 */  sw      $a0, 0x0028($sp)
/* 20310 800313B0 AFA5002C */  sw      $a1, 0x002C($sp)
/* 20314 800313B4 AFA60030 */  sw      $a2, 0x0030($sp)
/* 20318 800313B8 00004825 */  or      $t1, $zero, $zero          ## $t1 = 00000000
/* 2031C 800313BC 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 20320 800313C0 8FA3002C */  lw      $v1, 0x002C($sp)
/* 20324 800313C4 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
.L800313C8:
/* 20328 800313C8 9462138C */  lhu     $v0, 0x138C($v1)           ## 0000138C
/* 2032C 800313CC 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 20330 800313D0 15C00004 */  bne     $t6, $zero, .L800313E4
/* 20334 800313D4 344F0001 */  ori     $t7, $v0, 0x0001           ## $t7 = 00000001
/* 20338 800313D8 A46F138C */  sh      $t7, 0x138C($v1)           ## 0000138C
/* 2033C 800313DC 10000004 */  beq     $zero, $zero, .L800313F0
/* 20340 800313E0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
.L800313E4:
/* 20344 800313E4 25080001 */  addiu   $t0, $t0, 0x0001           ## $t0 = 00000001
/* 20348 800313E8 1504FFF7 */  bne     $t0, $a0, .L800313C8
/* 2034C 800313EC 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000002
.L800313F0:
/* 20350 800313F0 15200003 */  bne     $t1, $zero, .L80031400
/* 20354 800313F4 8FB8002C */  lw      $t8, 0x002C($sp)
/* 20358 800313F8 10000016 */  beq     $zero, $zero, .L80031454
/* 2035C 800313FC 24020032 */  addiu   $v0, $zero, 0x0032         ## $v0 = 00000032
.L80031400:
/* 20360 80031400 0008C880 */  sll     $t9, $t0,  2
/* 20364 80031404 0328C823 */  subu    $t9, $t9, $t0
/* 20368 80031408 0019C8C0 */  sll     $t9, $t9,  3
/* 2036C 8003140C 0328C821 */  addu    $t9, $t9, $t0
/* 20370 80031410 0019C880 */  sll     $t9, $t9,  2
/* 20374 80031414 03192021 */  addu    $a0, $t8, $t9
/* 20378 80031418 24840004 */  addiu   $a0, $a0, 0x0004           ## $a0 = 00000036
/* 2037C 8003141C 8FA50030 */  lw      $a1, 0x0030($sp)
/* 20380 80031420 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
/* 20384 80031424 AFA3001C */  sw      $v1, 0x001C($sp)
/* 20388 80031428 0C00C427 */  jal     func_8003109C
/* 2038C 8003142C AFA80024 */  sw      $t0, 0x0024($sp)
/* 20390 80031430 8FA4002C */  lw      $a0, 0x002C($sp)
/* 20394 80031434 8FA3001C */  lw      $v1, 0x001C($sp)
/* 20398 80031438 8FA20024 */  lw      $v0, 0x0024($sp)
/* 2039C 8003143C 908A0000 */  lbu     $t2, 0x0000($a0)           ## 00000000
/* 203A0 80031440 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 203A4 80031444 A08B0000 */  sb      $t3, 0x0000($a0)           ## 00000000
/* 203A8 80031448 946C138C */  lhu     $t4, 0x138C($v1)           ## 0000138C
/* 203AC 8003144C 318DFFFD */  andi    $t5, $t4, 0xFFFD           ## $t5 = 00000000
/* 203B0 80031450 A46D138C */  sh      $t5, 0x138C($v1)           ## 0000138C
.L80031454:
/* 203B4 80031454 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 203B8 80031458 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 203BC 8003145C 03E00008 */  jr      $ra
/* 203C0 80031460 00000000 */  nop


glabel func_80031464
/* 203C4 80031464 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 203C8 80031468 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 203CC 8003146C AFA40018 */  sw      $a0, 0x0018($sp)
/* 203D0 80031470 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 203D4 80031474 0C00C499 */  jal     func_80031264
/* 203D8 80031478 AFA5001C */  sw      $a1, 0x001C($sp)
/* 203DC 8003147C 8FA30018 */  lw      $v1, 0x0018($sp)
/* 203E0 80031480 10400009 */  beq     $v0, $zero, .L800314A8
/* 203E4 80031484 8FA5001C */  lw      $a1, 0x001C($sp)
/* 203E8 80031488 00057040 */  sll     $t6, $a1,  1
/* 203EC 8003148C 006E7821 */  addu    $t7, $v1, $t6
/* 203F0 80031490 95E213DC */  lhu     $v0, 0x13DC($t7)           ## 000013DC
/* 203F4 80031494 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 203F8 80031498 13000003 */  beq     $t8, $zero, .L800314A8
/* 203FC 8003149C 30590002 */  andi    $t9, $v0, 0x0002           ## $t9 = 00000000
/* 20400 800314A0 13200003 */  beq     $t9, $zero, .L800314B0
/* 20404 800314A4 00054080 */  sll     $t0, $a1,  2
.L800314A8:
/* 20408 800314A8 10000007 */  beq     $zero, $zero, .L800314C8
/* 2040C 800314AC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800314B0:
/* 20410 800314B0 01054023 */  subu    $t0, $t0, $a1
/* 20414 800314B4 000840C0 */  sll     $t0, $t0,  3
/* 20418 800314B8 01054021 */  addu    $t0, $t0, $a1
/* 2041C 800314BC 00084080 */  sll     $t0, $t0,  2
/* 20420 800314C0 00684821 */  addu    $t1, $v1, $t0
/* 20424 800314C4 8D220054 */  lw      $v0, 0x0054($t1)           ## 00000054
.L800314C8:
/* 20428 800314C8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2042C 800314CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 20430 800314D0 03E00008 */  jr      $ra
/* 20434 800314D4 00000000 */  nop


glabel func_800314D8
/* 20438 800314D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 2043C 800314DC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 20440 800314E0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 20444 800314E4 AFA60020 */  sw      $a2, 0x0020($sp)
/* 20448 800314E8 8FA40020 */  lw      $a0, 0x0020($sp)
/* 2044C 800314EC 0C00C499 */  jal     func_80031264
/* 20450 800314F0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 20454 800314F4 1040000A */  beq     $v0, $zero, .L80031520
/* 20458 800314F8 8FA5001C */  lw      $a1, 0x001C($sp)
/* 2045C 800314FC 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 20460 80031500 000E7840 */  sll     $t7, $t6,  1
/* 20464 80031504 00AF1021 */  addu    $v0, $a1, $t7
/* 20468 80031508 9458138C */  lhu     $t8, 0x138C($v0)           ## 0000138C
/* 2046C 8003150C 37190004 */  ori     $t9, $t8, 0x0004           ## $t9 = 00000004
/* 20470 80031510 A459138C */  sh      $t9, 0x138C($v0)           ## 0000138C
/* 20474 80031514 90A80000 */  lbu     $t0, 0x0000($a1)           ## 00000000
/* 20478 80031518 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 2047C 8003151C A0A90000 */  sb      $t1, 0x0000($a1)           ## 00000000
.L80031520:
/* 20480 80031520 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 20484 80031524 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 20488 80031528 03E00008 */  jr      $ra
/* 2048C 8003152C 00000000 */  nop


glabel func_80031530
/* 20490 80031530 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 20494 80031534 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 20498 80031538 AFA40018 */  sw      $a0, 0x0018($sp)
/* 2049C 8003153C AFA60020 */  sw      $a2, 0x0020($sp)
/* 204A0 80031540 8FA40020 */  lw      $a0, 0x0020($sp)
/* 204A4 80031544 0C00C499 */  jal     func_80031264
/* 204A8 80031548 AFA5001C */  sw      $a1, 0x001C($sp)
/* 204AC 8003154C 1040000A */  beq     $v0, $zero, .L80031578
/* 204B0 80031550 8FA5001C */  lw      $a1, 0x001C($sp)
/* 204B4 80031554 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 204B8 80031558 000E7840 */  sll     $t7, $t6,  1
/* 204BC 8003155C 00AF1021 */  addu    $v0, $a1, $t7
/* 204C0 80031560 9458138C */  lhu     $t8, 0x138C($v0)           ## 0000138C
/* 204C4 80031564 3319FFFB */  andi    $t9, $t8, 0xFFFB           ## $t9 = 00000000
/* 204C8 80031568 A459138C */  sh      $t9, 0x138C($v0)           ## 0000138C
/* 204CC 8003156C 90A80000 */  lbu     $t0, 0x0000($a1)           ## 00000000
/* 204D0 80031570 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 204D4 80031574 A0A90000 */  sb      $t1, 0x0000($a1)           ## 00000000
.L80031578:
/* 204D8 80031578 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 204DC 8003157C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 204E0 80031580 03E00008 */  jr      $ra
/* 204E4 80031584 00000000 */  nop


glabel func_80031588
/* 204E8 80031588 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 204EC 8003158C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 204F0 80031590 AFA40018 */  sw      $a0, 0x0018($sp)
/* 204F4 80031594 AFA60020 */  sw      $a2, 0x0020($sp)
/* 204F8 80031598 8FA40020 */  lw      $a0, 0x0020($sp)
/* 204FC 8003159C 0C00C499 */  jal     func_80031264
/* 20500 800315A0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 20504 800315A4 1040000A */  beq     $v0, $zero, .L800315D0
/* 20508 800315A8 8FA5001C */  lw      $a1, 0x001C($sp)
/* 2050C 800315AC 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 20510 800315B0 000E7840 */  sll     $t7, $t6,  1
/* 20514 800315B4 00AF1021 */  addu    $v0, $a1, $t7
/* 20518 800315B8 9458138C */  lhu     $t8, 0x138C($v0)           ## 0000138C
/* 2051C 800315BC 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 20520 800315C0 A459138C */  sh      $t9, 0x138C($v0)           ## 0000138C
/* 20524 800315C4 90A80000 */  lbu     $t0, 0x0000($a1)           ## 00000000
/* 20528 800315C8 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 2052C 800315CC A0A90000 */  sb      $t1, 0x0000($a1)           ## 00000000
.L800315D0:
/* 20530 800315D0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 20534 800315D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 20538 800315D8 03E00008 */  jr      $ra
/* 2053C 800315DC 00000000 */  nop


glabel func_800315E0
/* 20540 800315E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 20544 800315E4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 20548 800315E8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 2054C 800315EC AFA60020 */  sw      $a2, 0x0020($sp)
/* 20550 800315F0 8FA40020 */  lw      $a0, 0x0020($sp)
/* 20554 800315F4 0C00C499 */  jal     func_80031264
/* 20558 800315F8 AFA5001C */  sw      $a1, 0x001C($sp)
/* 2055C 800315FC 1040000A */  beq     $v0, $zero, .L80031628
/* 20560 80031600 8FA5001C */  lw      $a1, 0x001C($sp)
/* 20564 80031604 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 20568 80031608 000E7840 */  sll     $t7, $t6,  1
/* 2056C 8003160C 00AF1021 */  addu    $v0, $a1, $t7
/* 20570 80031610 9458138C */  lhu     $t8, 0x138C($v0)           ## 0000138C
/* 20574 80031614 3319FFF7 */  andi    $t9, $t8, 0xFFF7           ## $t9 = 00000000
/* 20578 80031618 A459138C */  sh      $t9, 0x138C($v0)           ## 0000138C
/* 2057C 8003161C 90A80000 */  lbu     $t0, 0x0000($a1)           ## 00000000
/* 20580 80031620 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 20584 80031624 A0A90000 */  sb      $t1, 0x0000($a1)           ## 00000000
.L80031628:
/* 20588 80031628 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2058C 8003162C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 20590 80031630 03E00008 */  jr      $ra
/* 20594 80031634 00000000 */  nop


glabel DynaPolyInfo_Free
/* 20598 80031638 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 2059C 8003163C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 205A0 80031640 AFA40018 */  sw      $a0, 0x0018($sp)
/* 205A4 80031644 AFA5001C */  sw      $a1, 0x001C($sp)
/* 205A8 80031648 AFA60020 */  sw      $a2, 0x0020($sp)
/* 205AC 8003164C 0C00C499 */  jal     func_80031264
/* 205B0 80031650 8FA40020 */  lw      $a0, 0x0020($sp)
/* 205B4 80031654 10400016 */  beq     $v0, $zero, .L800316B0
/* 205B8 80031658 8FA40018 */  lw      $a0, 0x0018($sp)
/* 205BC 8003165C 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 205C0 80031660 0C00C519 */  jal     func_80031464
/* 205C4 80031664 8FA50020 */  lw      $a1, 0x0020($sp)
/* 205C8 80031668 10400011 */  beq     $v0, $zero, .L800316B0
/* 205CC 8003166C 8FA4001C */  lw      $a0, 0x001C($sp)
/* 205D0 80031670 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 205D4 80031674 AC4E013C */  sw      $t6, 0x013C($v0)           ## 0000013C
/* 205D8 80031678 8FAF0020 */  lw      $t7, 0x0020($sp)
/* 205DC 8003167C 000FC080 */  sll     $t8, $t7,  2
/* 205E0 80031680 030FC023 */  subu    $t8, $t8, $t7
/* 205E4 80031684 0018C0C0 */  sll     $t8, $t8,  3
/* 205E8 80031688 030FC021 */  addu    $t8, $t8, $t7
/* 205EC 8003168C 0018C080 */  sll     $t8, $t8,  2
/* 205F0 80031690 0098C821 */  addu    $t9, $a0, $t8
/* 205F4 80031694 AF200004 */  sw      $zero, 0x0004($t9)         ## 00000004
/* 205F8 80031698 8FA80020 */  lw      $t0, 0x0020($sp)
/* 205FC 8003169C 00084840 */  sll     $t1, $t0,  1
/* 20600 800316A0 00891821 */  addu    $v1, $a0, $t1
/* 20604 800316A4 946A138C */  lhu     $t2, 0x138C($v1)           ## 0000138C
/* 20608 800316A8 354B0002 */  ori     $t3, $t2, 0x0002           ## $t3 = 00000002
/* 2060C 800316AC A46B138C */  sh      $t3, 0x138C($v1)           ## 0000138C
.L800316B0:
/* 20610 800316B0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 20614 800316B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 20618 800316B8 03E00008 */  jr      $ra
/* 2061C 800316BC 00000000 */  nop


glabel func_800316C0
/* 20620 800316C0 AFA40000 */  sw      $a0, 0x0000($sp)
/* 20624 800316C4 90AE0000 */  lbu     $t6, 0x0000($a1)           ## 00000000
/* 20628 800316C8 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 2062C 800316CC A0AF0000 */  sb      $t7, 0x0000($a1)           ## 00000000
/* 20630 800316D0 03E00008 */  jr      $ra
/* 20634 800316D4 00000000 */  nop


glabel func_800316D8
/* 20638 800316D8 27BDFE98 */  addiu   $sp, $sp, 0xFE98           ## $sp = FFFFFE98
/* 2063C 800316DC AFB5004C */  sw      $s5, 0x004C($sp)
/* 20640 800316E0 AFB00038 */  sw      $s0, 0x0038($sp)
/* 20644 800316E4 AFA70174 */  sw      $a3, 0x0174($sp)
/* 20648 800316E8 27A70108 */  addiu   $a3, $sp, 0x0108           ## $a3 = FFFFFFA0
/* 2064C 800316EC 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 20650 800316F0 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 20654 800316F4 AFBF005C */  sw      $ra, 0x005C($sp)
/* 20658 800316F8 AFBE0058 */  sw      $s8, 0x0058($sp)
/* 2065C 800316FC AFB70054 */  sw      $s7, 0x0054($sp)
/* 20660 80031700 AFB60050 */  sw      $s6, 0x0050($sp)
/* 20664 80031704 AFB40048 */  sw      $s4, 0x0048($sp)
/* 20668 80031708 AFB30044 */  sw      $s3, 0x0044($sp)
/* 2066C 8003170C AFB20040 */  sw      $s2, 0x0040($sp)
/* 20670 80031710 AFB1003C */  sw      $s1, 0x003C($sp)
/* 20674 80031714 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 20678 80031718 AFA40168 */  sw      $a0, 0x0168($sp)
/* 2067C 8003171C 8FAF0178 */  lw      $t7, 0x0178($sp)
/* 20680 80031720 00107080 */  sll     $t6, $s0,  2
/* 20684 80031724 01D07023 */  subu    $t6, $t6, $s0
/* 20688 80031728 000E70C0 */  sll     $t6, $t6,  3
/* 2068C 8003172C 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 20690 80031730 01D07021 */  addu    $t6, $t6, $s0
/* 20694 80031734 000E7080 */  sll     $t6, $t6,  2
/* 20698 80031738 02AEA021 */  addu    $s4, $s5, $t6
/* 2069C 8003173C A698000C */  sh      $t8, 0x000C($s4)           ## 0000000C
/* 206A0 80031740 8FB90174 */  lw      $t9, 0x0174($sp)
/* 206A4 80031744 8E820004 */  lw      $v0, 0x0004($s4)           ## 00000004
/* 206A8 80031748 8E9E0008 */  lw      $s8, 0x0008($s4)           ## 00000008
/* 206AC 8003174C 8F290000 */  lw      $t1, 0x0000($t9)           ## 00000000
/* 206B0 80031750 26840038 */  addiu   $a0, $s4, 0x0038           ## $a0 = 00000038
/* 206B4 80031754 24450050 */  addiu   $a1, $v0, 0x0050           ## $a1 = 00000050
/* 206B8 80031758 A6890014 */  sh      $t1, 0x0014($s4)           ## 00000014
/* 206BC 8003175C 8C4B0024 */  lw      $t3, 0x0024($v0)           ## 00000024
/* 206C0 80031760 244600B4 */  addiu   $a2, $v0, 0x00B4           ## $a2 = 000000B4
/* 206C4 80031764 ACEB0000 */  sw      $t3, 0x0000($a3)           ## FFFFFFA0
/* 206C8 80031768 8C4A0028 */  lw      $t2, 0x0028($v0)           ## 00000028
/* 206CC 8003176C ACEA0004 */  sw      $t2, 0x0004($a3)           ## FFFFFFA4
/* 206D0 80031770 8C4B002C */  lw      $t3, 0x002C($v0)           ## 0000002C
/* 206D4 80031774 ACEB0008 */  sw      $t3, 0x0008($a3)           ## FFFFFFA8
/* 206D8 80031778 C4460054 */  lwc1    $f6, 0x0054($v0)           ## 00000054
/* 206DC 8003177C C44400BC */  lwc1    $f4, 0x00BC($v0)           ## 000000BC
/* 206E0 80031780 C7AA010C */  lwc1    $f10, 0x010C($sp)
/* 206E4 80031784 46062202 */  mul.s   $f8, $f4, $f6
/* 206E8 80031788 46085400 */  add.s   $f16, $f10, $f8
/* 206EC 8003178C 0C00C3AB */  jal     func_80030EAC
/* 206F0 80031790 E7B0010C */  swc1    $f16, 0x010C($sp)
/* 206F4 80031794 00106040 */  sll     $t4, $s0,  1
/* 206F8 80031798 02ACB821 */  addu    $s7, $s5, $t4
/* 206FC 8003179C 96ED138C */  lhu     $t5, 0x138C($s7)           ## 0000138C
/* 20700 800317A0 31AE0004 */  andi    $t6, $t5, 0x0004           ## $t6 = 00000000
/* 20704 800317A4 55C00213 */  bnel    $t6, $zero, .L80031FF4
/* 20708 800317A8 8FBF005C */  lw      $ra, 0x005C($sp)
/* 2070C 800317AC 92AF0000 */  lbu     $t7, 0x0000($s5)           ## 00000000
/* 20710 800317B0 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 20714 800317B4 57000046 */  bnel    $t8, $zero, .L800318D0
/* 20718 800317B8 86990044 */  lh      $t9, 0x0044($s4)           ## 00000044
/* 2071C 800317BC 0C00C455 */  jal     func_80031154
/* 20720 800317C0 26840004 */  addiu   $a0, $s4, 0x0004           ## $a0 = 00000004
/* 20724 800317C4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 20728 800317C8 14410040 */  bne     $v0, $at, .L800318CC
/* 2072C 800317CC 8FB90178 */  lw      $t9, 0x0178($sp)
/* 20730 800317D0 8F220000 */  lw      $v0, 0x0000($t9)           ## 00000000
/* 20734 800317D4 97C90014 */  lhu     $t1, 0x0014($s8)           ## 00000014
/* 20738 800317D8 27B6009C */  addiu   $s6, $sp, 0x009C           ## $s6 = FFFFFF34
/* 2073C 800317DC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 20740 800317E0 00492021 */  addu    $a0, $v0, $t1
/* 20744 800317E4 0044082A */  slt     $at, $v0, $a0
/* 20748 800317E8 10200030 */  beq     $at, $zero, .L800318AC
/* 2074C 800317EC 00028900 */  sll     $s1, $v0,  4
/* 20750 800317F0 27B3009E */  addiu   $s3, $sp, 0x009E           ## $s3 = FFFFFF36
/* 20754 800317F4 27B200A0 */  addiu   $s2, $sp, 0x00A0           ## $s2 = FFFFFF38
.L800317F8:
/* 20758 800317F8 8EAA13F0 */  lw      $t2, 0x13F0($s5)           ## 000013F0
/* 2075C 800317FC 26850012 */  addiu   $a1, $s4, 0x0012           ## $a1 = 00000012
/* 20760 80031800 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFF38
/* 20764 80031804 01511021 */  addu    $v0, $t2, $s1
/* 20768 80031808 8443000A */  lh      $v1, 0x000A($v0)           ## 0000000A
/* 2076C 8003180C 28614000 */  slti    $at, $v1, 0x4000
/* 20770 80031810 5420000A */  bnel    $at, $zero, .L8003183C
/* 20774 80031814 2861999B */  slti    $at, $v1, 0x999B
/* 20778 80031818 A7B000A0 */  sh      $s0, 0x00A0($sp)
/* 2077C 8003181C 0C00ACF9 */  jal     func_8002B3E4
/* 20780 80031820 26A413F8 */  addiu   $a0, $s5, 0x13F8           ## $a0 = 000013F8
/* 20784 80031824 8FAB0178 */  lw      $t3, 0x0178($sp)
/* 20788 80031828 97CD0014 */  lhu     $t5, 0x0014($s8)           ## 00000014
/* 2078C 8003182C 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 20790 80031830 1000001A */  beq     $zero, $zero, .L8003189C
/* 20794 80031834 018D2021 */  addu    $a0, $t4, $t5
/* 20798 80031838 2861999B */  slti    $at, $v1, 0x999B
.L8003183C:
/* 2079C 8003183C 1020000F */  beq     $at, $zero, .L8003187C
/* 207A0 80031840 26850010 */  addiu   $a1, $s4, 0x0010           ## $a1 = 00000010
/* 207A4 80031844 96EE138C */  lhu     $t6, 0x138C($s7)           ## 0000138C
/* 207A8 80031848 2685000E */  addiu   $a1, $s4, 0x000E           ## $a1 = 0000000E
/* 207AC 8003184C 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFF36
/* 207B0 80031850 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 207B4 80031854 55E00012 */  bnel    $t7, $zero, .L800318A0
/* 207B8 80031858 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 207BC 8003185C A7B0009E */  sh      $s0, 0x009E($sp)
/* 207C0 80031860 0C00ACF9 */  jal     func_8002B3E4
/* 207C4 80031864 26A413F8 */  addiu   $a0, $s5, 0x13F8           ## $a0 = 000013F8
/* 207C8 80031868 8FB80178 */  lw      $t8, 0x0178($sp)
/* 207CC 8003186C 97C90014 */  lhu     $t1, 0x0014($s8)           ## 00000014
/* 207D0 80031870 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 207D4 80031874 10000009 */  beq     $zero, $zero, .L8003189C
/* 207D8 80031878 03292021 */  addu    $a0, $t9, $t1
.L8003187C:
/* 207DC 8003187C A7B0009C */  sh      $s0, 0x009C($sp)
/* 207E0 80031880 26A413F8 */  addiu   $a0, $s5, 0x13F8           ## $a0 = 000013F8
/* 207E4 80031884 0C00ACF9 */  jal     func_8002B3E4
/* 207E8 80031888 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFF34
/* 207EC 8003188C 8FAA0178 */  lw      $t2, 0x0178($sp)
/* 207F0 80031890 97CC0014 */  lhu     $t4, 0x0014($s8)           ## 00000014
/* 207F4 80031894 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 207F8 80031898 016C2021 */  addu    $a0, $t3, $t4
.L8003189C:
/* 207FC 8003189C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
.L800318A0:
/* 20800 800318A0 0204082A */  slt     $at, $s0, $a0
/* 20804 800318A4 1420FFD4 */  bne     $at, $zero, .L800317F8
/* 20808 800318A8 26310010 */  addiu   $s1, $s1, 0x0010           ## $s1 = 00000010
.L800318AC:
/* 2080C 800318AC 8FAD0178 */  lw      $t5, 0x0178($sp)
/* 20810 800318B0 8FA20174 */  lw      $v0, 0x0174($sp)
/* 20814 800318B4 ADA40000 */  sw      $a0, 0x0000($t5)           ## 00000000
/* 20818 800318B8 97CF000C */  lhu     $t7, 0x000C($s8)           ## 0000000C
/* 2081C 800318BC 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 00000000
/* 20820 800318C0 01CFC021 */  addu    $t8, $t6, $t7
/* 20824 800318C4 100001CA */  beq     $zero, $zero, .L80031FF0
/* 20828 800318C8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
.L800318CC:
/* 2082C 800318CC 86990044 */  lh      $t9, 0x0044($s4)           ## 00000044
.L800318D0:
/* 20830 800318D0 8E850038 */  lw      $a1, 0x0038($s4)           ## 00000038
/* 20834 800318D4 8E86003C */  lw      $a2, 0x003C($s4)           ## 0000003C
/* 20838 800318D8 8E870040 */  lw      $a3, 0x0040($s4)           ## 00000040
/* 2083C 800318DC AFB90010 */  sw      $t9, 0x0010($sp)
/* 20840 800318E0 86890046 */  lh      $t1, 0x0046($s4)           ## 00000046
/* 20844 800318E4 27B60128 */  addiu   $s6, $sp, 0x0128           ## $s6 = FFFFFFC0
/* 20848 800318E8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = FFFFFFC0
/* 2084C 800318EC AFA90014 */  sw      $t1, 0x0014($sp)
/* 20850 800318F0 868A0048 */  lh      $t2, 0x0048($s4)           ## 00000048
/* 20854 800318F4 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 20858 800318F8 C692004C */  lwc1    $f18, 0x004C($s4)          ## 0000004C
/* 2085C 800318FC E7B2001C */  swc1    $f18, 0x001C($sp)
/* 20860 80031900 C6840050 */  lwc1    $f4, 0x0050($s4)           ## 00000050
/* 20864 80031904 E7A40020 */  swc1    $f4, 0x0020($sp)
/* 20868 80031908 C6860054 */  lwc1    $f6, 0x0054($s4)           ## 00000054
/* 2086C 8003190C 0C023E45 */  jal     func_8008F914
/* 20870 80031910 E7A60024 */  swc1    $f6, 0x0024($sp)
/* 20874 80031914 97CB000C */  lhu     $t3, 0x000C($s8)           ## 0000000C
/* 20878 80031918 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 2087C 8003191C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 20880 80031920 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 20884 80031924 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 20888 80031928 05610005 */  bgez    $t3, .L80031940
/* 2088C 8003192C 46804420 */  cvt.s.w $f16, $f8
/* 20890 80031930 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 20894 80031934 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 20898 80031938 00000000 */  nop
/* 2089C 8003193C 46128400 */  add.s   $f16, $f16, $f18
.L80031940:
/* 208A0 80031940 E7A000F8 */  swc1    $f0, 0x00F8($sp)
/* 208A4 80031944 E7A000F4 */  swc1    $f0, 0x00F4($sp)
/* 208A8 80031948 E7A000F0 */  swc1    $f0, 0x00F0($sp)
/* 208AC 8003194C 97CC000C */  lhu     $t4, 0x000C($s8)           ## 0000000C
/* 208B0 80031950 46105503 */  div.s   $f20, $f10, $f16
/* 208B4 80031954 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 208B8 80031958 1980003E */  blez    $t4, .L80031A54
/* 208BC 8003195C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 208C0 80031960 24170006 */  addiu   $s7, $zero, 0x0006         ## $s7 = 00000006
/* 208C4 80031964 27B20084 */  addiu   $s2, $sp, 0x0084           ## $s2 = FFFFFF1C
/* 208C8 80031968 27B10090 */  addiu   $s1, $sp, 0x0090           ## $s1 = FFFFFF28
/* 208CC 8003196C 8FCD0010 */  lw      $t5, 0x0010($s8)           ## 00000010
.L80031970:
/* 208D0 80031970 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFF28
/* 208D4 80031974 0C018F33 */  jal     Math_Vec3s_ToVec3f              ## Vec3f_CopyVec3s
/* 208D8 80031978 01B02821 */  addu    $a1, $t5, $s0
/* 208DC 8003197C 02C02025 */  or      $a0, $s6, $zero            ## $a0 = FFFFFFC0
/* 208E0 80031980 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFF28
/* 208E4 80031984 0C023B42 */  jal     func_8008ED08
/* 208E8 80031988 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFF1C
/* 208EC 8003198C 8FAE0174 */  lw      $t6, 0x0174($sp)
/* 208F0 80031990 8EA913F4 */  lw      $t1, 0x13F4($s5)           ## 000013F4
/* 208F4 80031994 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFF1C
/* 208F8 80031998 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 208FC 8003199C 01F3C021 */  addu    $t8, $t7, $s3
/* 20900 800319A0 03170019 */  multu   $t8, $s7
/* 20904 800319A4 0000C812 */  mflo    $t9
/* 20908 800319A8 03292021 */  addu    $a0, $t9, $t1
/* 2090C 800319AC 0C00AD48 */  jal     func_8002B520
/* 20910 800319B0 00000000 */  nop
/* 20914 800319B4 16600006 */  bne     $s3, $zero, .L800319D0
/* 20918 800319B8 C7A80088 */  lwc1    $f8, 0x0088($sp)
/* 2091C 800319BC C7A40088 */  lwc1    $f4, 0x0088($sp)
/* 20920 800319C0 E6840064 */  swc1    $f4, 0x0064($s4)           ## 00000064
/* 20924 800319C4 C6860064 */  lwc1    $f6, 0x0064($s4)           ## 00000064
/* 20928 800319C8 1000000F */  beq     $zero, $zero, .L80031A08
/* 2092C 800319CC E6860060 */  swc1    $f6, 0x0060($s4)           ## 00000060
.L800319D0:
/* 20930 800319D0 C6920060 */  lwc1    $f18, 0x0060($s4)          ## 00000060
/* 20934 800319D4 C7B00088 */  lwc1    $f16, 0x0088($sp)
/* 20938 800319D8 4612403C */  c.lt.s  $f8, $f18
/* 2093C 800319DC 00000000 */  nop
/* 20940 800319E0 45020004 */  bc1fl   .L800319F4
/* 20944 800319E4 C68A0064 */  lwc1    $f10, 0x0064($s4)          ## 00000064
/* 20948 800319E8 10000007 */  beq     $zero, $zero, .L80031A08
/* 2094C 800319EC E6880060 */  swc1    $f8, 0x0060($s4)           ## 00000060
/* 20950 800319F0 C68A0064 */  lwc1    $f10, 0x0064($s4)          ## 00000064
.L800319F4:
/* 20954 800319F4 4610503C */  c.lt.s  $f10, $f16
/* 20958 800319F8 00000000 */  nop
/* 2095C 800319FC 45020003 */  bc1fl   .L80031A0C
/* 20960 80031A00 C7A400F0 */  lwc1    $f4, 0x00F0($sp)
/* 20964 80031A04 E6900064 */  swc1    $f16, 0x0064($s4)          ## 00000064
.L80031A08:
/* 20968 80031A08 C7A400F0 */  lwc1    $f4, 0x00F0($sp)
.L80031A0C:
/* 2096C 80031A0C C7A60084 */  lwc1    $f6, 0x0084($sp)
/* 20970 80031A10 C7A800F4 */  lwc1    $f8, 0x00F4($sp)
/* 20974 80031A14 C7AA0088 */  lwc1    $f10, 0x0088($sp)
/* 20978 80031A18 46062480 */  add.s   $f18, $f4, $f6
/* 2097C 80031A1C C7A6008C */  lwc1    $f6, 0x008C($sp)
/* 20980 80031A20 C7A400F8 */  lwc1    $f4, 0x00F8($sp)
/* 20984 80031A24 460A4400 */  add.s   $f16, $f8, $f10
/* 20988 80031A28 E7B200F0 */  swc1    $f18, 0x00F0($sp)
/* 2098C 80031A2C 46062480 */  add.s   $f18, $f4, $f6
/* 20990 80031A30 E7B000F4 */  swc1    $f16, 0x00F4($sp)
/* 20994 80031A34 E7B200F8 */  swc1    $f18, 0x00F8($sp)
/* 20998 80031A38 97CA000C */  lhu     $t2, 0x000C($s8)           ## 0000000C
/* 2099C 80031A3C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 209A0 80031A40 26100006 */  addiu   $s0, $s0, 0x0006           ## $s0 = 00000006
/* 209A4 80031A44 026A082A */  slt     $at, $s3, $t2
/* 209A8 80031A48 5420FFC9 */  bnel    $at, $zero, .L80031970
/* 209AC 80031A4C 8FCD0010 */  lw      $t5, 0x0010($s8)           ## 00000010
/* 209B0 80031A50 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
.L80031A54:
/* 209B4 80031A54 C7A800F0 */  lwc1    $f8, 0x00F0($sp)
/* 209B8 80031A58 C7B000F4 */  lwc1    $f16, 0x00F4($sp)
/* 209BC 80031A5C C7A600F8 */  lwc1    $f6, 0x00F8($sp)
/* 209C0 80031A60 46144282 */  mul.s   $f10, $f8, $f20
/* 209C4 80031A64 26960058 */  addiu   $s6, $s4, 0x0058           ## $s6 = 00000058
/* 209C8 80031A68 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 209CC 80031A6C 46148102 */  mul.s   $f4, $f16, $f20
/* 209D0 80031A70 44811000 */  mtc1    $at, $f2                   ## $f2 = -100.00
/* 209D4 80031A74 46143482 */  mul.s   $f18, $f6, $f20
/* 209D8 80031A78 E7AA00F0 */  swc1    $f10, 0x00F0($sp)
/* 209DC 80031A7C E7A400F4 */  swc1    $f4, 0x00F4($sp)
/* 209E0 80031A80 4600520D */  trunc.w.s $f8, $f10
/* 209E4 80031A84 E7B200F8 */  swc1    $f18, 0x00F8($sp)
/* 209E8 80031A88 440C4000 */  mfc1    $t4, $f8
/* 209EC 80031A8C 00000000 */  nop
/* 209F0 80031A90 A6CC0000 */  sh      $t4, 0x0000($s6)           ## 00000058
/* 209F4 80031A94 C7B000F4 */  lwc1    $f16, 0x00F4($sp)
/* 209F8 80031A98 4600810D */  trunc.w.s $f4, $f16
/* 209FC 80031A9C 440E2000 */  mfc1    $t6, $f4
/* 20A00 80031AA0 00000000 */  nop
/* 20A04 80031AA4 A6CE0002 */  sh      $t6, 0x0002($s6)           ## 0000005A
/* 20A08 80031AA8 C7A600F8 */  lwc1    $f6, 0x00F8($sp)
/* 20A0C 80031AAC 4600348D */  trunc.w.s $f18, $f6
/* 20A10 80031AB0 44189000 */  mfc1    $t8, $f18
/* 20A14 80031AB4 00000000 */  nop
/* 20A18 80031AB8 A6D80004 */  sh      $t8, 0x0004($s6)           ## 0000005C
/* 20A1C 80031ABC 97D9000C */  lhu     $t9, 0x000C($s8)           ## 0000000C
/* 20A20 80031AC0 1B200039 */  blez    $t9, .L80031BA8
/* 20A24 80031AC4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 20A28 80031AC8 27B200F0 */  addiu   $s2, $sp, 0x00F0           ## $s2 = FFFFFF88
/* 20A2C 80031ACC 27B100DC */  addiu   $s1, $sp, 0x00DC           ## $s1 = FFFFFF74
/* 20A30 80031AD0 8FA20174 */  lw      $v0, 0x0174($sp)
.L80031AD4:
/* 20A34 80031AD4 8EA913F4 */  lw      $t1, 0x13F4($s5)           ## 000013F4
/* 20A38 80031AD8 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFF74
/* 20A3C 80031ADC 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 00000000
/* 20A40 80031AE0 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFF88
/* 20A44 80031AE4 000A5880 */  sll     $t3, $t2,  2
/* 20A48 80031AE8 016A5823 */  subu    $t3, $t3, $t2
/* 20A4C 80031AEC 000B5840 */  sll     $t3, $t3,  1
/* 20A50 80031AF0 012B6021 */  addu    $t4, $t1, $t3
/* 20A54 80031AF4 01906821 */  addu    $t5, $t4, $s0
/* 20A58 80031AF8 85AE0000 */  lh      $t6, 0x0000($t5)           ## 00000000
/* 20A5C 80031AFC 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 20A60 80031B00 00000000 */  nop
/* 20A64 80031B04 46805220 */  cvt.s.w $f8, $f10
/* 20A68 80031B08 E7A800DC */  swc1    $f8, 0x00DC($sp)
/* 20A6C 80031B0C 8C580000 */  lw      $t8, 0x0000($v0)           ## 00000000
/* 20A70 80031B10 8EAF13F4 */  lw      $t7, 0x13F4($s5)           ## 000013F4
/* 20A74 80031B14 0018C880 */  sll     $t9, $t8,  2
/* 20A78 80031B18 0338C823 */  subu    $t9, $t9, $t8
/* 20A7C 80031B1C 0019C840 */  sll     $t9, $t9,  1
/* 20A80 80031B20 01F95021 */  addu    $t2, $t7, $t9
/* 20A84 80031B24 01504821 */  addu    $t1, $t2, $s0
/* 20A88 80031B28 852B0002 */  lh      $t3, 0x0002($t1)           ## 00000002
/* 20A8C 80031B2C 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 20A90 80031B30 00000000 */  nop
/* 20A94 80031B34 46808120 */  cvt.s.w $f4, $f16
/* 20A98 80031B38 E7A400E0 */  swc1    $f4, 0x00E0($sp)
/* 20A9C 80031B3C 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000000
/* 20AA0 80031B40 8EAC13F4 */  lw      $t4, 0x13F4($s5)           ## 000013F4
/* 20AA4 80031B44 000D7080 */  sll     $t6, $t5,  2
/* 20AA8 80031B48 01CD7023 */  subu    $t6, $t6, $t5
/* 20AAC 80031B4C 000E7040 */  sll     $t6, $t6,  1
/* 20AB0 80031B50 018EC021 */  addu    $t8, $t4, $t6
/* 20AB4 80031B54 03107821 */  addu    $t7, $t8, $s0
/* 20AB8 80031B58 85F90004 */  lh      $t9, 0x0004($t7)           ## 00000004
/* 20ABC 80031B5C E7A200EC */  swc1    $f2, 0x00EC($sp)
/* 20AC0 80031B60 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 20AC4 80031B64 00000000 */  nop
/* 20AC8 80031B68 468034A0 */  cvt.s.w $f18, $f6
/* 20ACC 80031B6C 0C02954E */  jal     func_800A5538
/* 20AD0 80031B70 E7B200E4 */  swc1    $f18, 0x00E4($sp)
/* 20AD4 80031B74 C7A200EC */  lwc1    $f2, 0x00EC($sp)
/* 20AD8 80031B78 4600103C */  c.lt.s  $f2, $f0
/* 20ADC 80031B7C 00000000 */  nop
/* 20AE0 80031B80 45020003 */  bc1fl   .L80031B90
/* 20AE4 80031B84 97CA000C */  lhu     $t2, 0x000C($s8)           ## 0000000C
/* 20AE8 80031B88 46000086 */  mov.s   $f2, $f0
/* 20AEC 80031B8C 97CA000C */  lhu     $t2, 0x000C($s8)           ## 0000000C
.L80031B90:
/* 20AF0 80031B90 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 20AF4 80031B94 26100006 */  addiu   $s0, $s0, 0x0006           ## $s0 = 00000006
/* 20AF8 80031B98 026A082A */  slt     $at, $s3, $t2
/* 20AFC 80031B9C 5420FFCD */  bnel    $at, $zero, .L80031AD4
/* 20B00 80031BA0 8FA20174 */  lw      $v0, 0x0174($sp)
/* 20B04 80031BA4 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
.L80031BA8:
/* 20B08 80031BA8 46001004 */  sqrt.s  $f0, $f2
/* 20B0C 80031BAC 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 20B10 80031BB0 C42A6AC4 */  lwc1    $f10, 0x6AC4($at)          ## 80106AC4
/* 20B14 80031BB4 460A0202 */  mul.s   $f8, $f0, $f10
/* 20B18 80031BB8 4600440D */  trunc.w.s $f16, $f8
/* 20B1C 80031BBC 440B8000 */  mfc1    $t3, $f16
/* 20B20 80031BC0 00000000 */  nop
/* 20B24 80031BC4 A6CB0006 */  sh      $t3, 0x0006($s6)           ## 0000005E
/* 20B28 80031BC8 97C20014 */  lhu     $v0, 0x0014($s8)           ## 00000014
/* 20B2C 80031BCC 184000FF */  blez    $v0, .L80031FCC
/* 20B30 80031BD0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 20B34 80031BD4 C4346AC8 */  lwc1    $f20, 0x6AC8($at)          ## 80106AC8
/* 20B38 80031BD8 26B613F8 */  addiu   $s6, $s5, 0x13F8           ## $s6 = 000013F8
/* 20B3C 80031BDC 0000B825 */  or      $s7, $zero, $zero          ## $s7 = 00000000
/* 20B40 80031BE0 24120006 */  addiu   $s2, $zero, 0x0006         ## $s2 = 00000006
/* 20B44 80031BE4 8FA80174 */  lw      $t0, 0x0174($sp)
.L80031BE8:
/* 20B48 80031BE8 8FAD0178 */  lw      $t5, 0x0178($sp)
/* 20B4C 80031BEC 8FD90018 */  lw      $t9, 0x0018($s8)           ## 00000018
/* 20B50 80031BF0 8EAF13F0 */  lw      $t7, 0x13F0($s5)           ## 000013F0
/* 20B54 80031BF4 8DAC0000 */  lw      $t4, 0x0000($t5)           ## 00000000
/* 20B58 80031BF8 03375021 */  addu    $t2, $t9, $s7
/* 20B5C 80031BFC 894B0000 */  lwl     $t3, 0x0000($t2)           ## 00000000
/* 20B60 80031C00 994B0003 */  lwr     $t3, 0x0003($t2)           ## 00000003
/* 20B64 80031C04 01937021 */  addu    $t6, $t4, $s3
/* 20B68 80031C08 000EC100 */  sll     $t8, $t6,  4
/* 20B6C 80031C0C 030F8021 */  addu    $s0, $t8, $t7
/* 20B70 80031C10 AA0B0000 */  swl     $t3, 0x0000($s0)           ## 00000006
/* 20B74 80031C14 BA0B0003 */  swr     $t3, 0x0003($s0)           ## 00000009
/* 20B78 80031C18 89490004 */  lwl     $t1, 0x0004($t2)           ## 00000004
/* 20B7C 80031C1C 99490007 */  lwr     $t1, 0x0007($t2)           ## 00000007
/* 20B80 80031C20 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000008
/* 20B84 80031C24 27A400D0 */  addiu   $a0, $sp, 0x00D0           ## $a0 = FFFFFF68
/* 20B88 80031C28 AA090004 */  swl     $t1, 0x0004($s0)           ## 0000000A
/* 20B8C 80031C2C BA090007 */  swr     $t1, 0x0007($s0)           ## 0000000D
/* 20B90 80031C30 894B0008 */  lwl     $t3, 0x0008($t2)           ## 00000008
/* 20B94 80031C34 994B000B */  lwr     $t3, 0x000B($t2)           ## 0000000B
/* 20B98 80031C38 304D1FFF */  andi    $t5, $v0, 0x1FFF           ## $t5 = 00000000
/* 20B9C 80031C3C 3058E000 */  andi    $t8, $v0, 0xE000           ## $t8 = 00000000
/* 20BA0 80031C40 AA0B0008 */  swl     $t3, 0x0008($s0)           ## 0000000E
/* 20BA4 80031C44 BA0B000B */  swr     $t3, 0x000B($s0)           ## 00000011
/* 20BA8 80031C48 8949000C */  lwl     $t1, 0x000C($t2)           ## 0000000C
/* 20BAC 80031C4C 9949000F */  lwr     $t1, 0x000F($t2)           ## 0000000F
/* 20BB0 80031C50 96030004 */  lhu     $v1, 0x0004($s0)           ## 0000000A
/* 20BB4 80031C54 27A500C4 */  addiu   $a1, $sp, 0x00C4           ## $a1 = FFFFFF5C
/* 20BB8 80031C58 AA09000C */  swl     $t1, 0x000C($s0)           ## 00000012
/* 20BBC 80031C5C BA09000F */  swr     $t1, 0x000F($s0)           ## 00000015
/* 20BC0 80031C60 8D0C0000 */  lw      $t4, 0x0000($t0)           ## 00000000
/* 20BC4 80031C64 30791FFF */  andi    $t9, $v1, 0x1FFF           ## $t9 = 00000000
/* 20BC8 80031C68 306BE000 */  andi    $t3, $v1, 0xE000           ## $t3 = 00000000
/* 20BCC 80031C6C 01AC7021 */  addu    $t6, $t5, $t4
/* 20BD0 80031C70 030E7825 */  or      $t7, $t8, $t6              ## $t7 = 00000000
/* 20BD4 80031C74 A60F0002 */  sh      $t7, 0x0002($s0)           ## 00000008
/* 20BD8 80031C78 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 00000000
/* 20BDC 80031C7C 96180006 */  lhu     $t8, 0x0006($s0)           ## 0000000C
/* 20BE0 80031C80 27A600B8 */  addiu   $a2, $sp, 0x00B8           ## $a2 = FFFFFF50
/* 20BE4 80031C84 032A4821 */  addu    $t1, $t9, $t2
/* 20BE8 80031C88 31F91FFF */  andi    $t9, $t7, 0x1FFF           ## $t9 = 00000000
/* 20BEC 80031C8C 03320019 */  multu   $t9, $s2
/* 20BF0 80031C90 01696825 */  or      $t5, $t3, $t1              ## $t5 = 00000000
/* 20BF4 80031C94 A60D0004 */  sh      $t5, 0x0004($s0)           ## 0000000A
/* 20BF8 80031C98 8D0C0000 */  lw      $t4, 0x0000($t0)           ## 00000000
/* 20BFC 80031C9C 27A700AC */  addiu   $a3, $sp, 0x00AC           ## $a3 = FFFFFF44
/* 20C00 80031CA0 01987021 */  addu    $t6, $t4, $t8
/* 20C04 80031CA4 A60E0006 */  sh      $t6, 0x0006($s0)           ## 0000000C
/* 20C08 80031CA8 8EB113F4 */  lw      $s1, 0x13F4($s5)           ## 000013F4
/* 20C0C 80031CAC 00005012 */  mflo    $t2
/* 20C10 80031CB0 022A5821 */  addu    $t3, $s1, $t2
/* 20C14 80031CB4 85690000 */  lh      $t1, 0x0000($t3)           ## 00000000
/* 20C18 80031CB8 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 20C1C 80031CBC 00000000 */  nop
/* 20C20 80031CC0 468021A0 */  cvt.s.w $f6, $f4
/* 20C24 80031CC4 E7A600D0 */  swc1    $f6, 0x00D0($sp)
/* 20C28 80031CC8 960D0002 */  lhu     $t5, 0x0002($s0)           ## 00000008
/* 20C2C 80031CCC 31AC1FFF */  andi    $t4, $t5, 0x1FFF           ## $t4 = 00000000
/* 20C30 80031CD0 01920019 */  multu   $t4, $s2
/* 20C34 80031CD4 0000C012 */  mflo    $t8
/* 20C38 80031CD8 02387021 */  addu    $t6, $s1, $t8
/* 20C3C 80031CDC 85CF0002 */  lh      $t7, 0x0002($t6)           ## 00000002
/* 20C40 80031CE0 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 20C44 80031CE4 00000000 */  nop
/* 20C48 80031CE8 468092A0 */  cvt.s.w $f10, $f18
/* 20C4C 80031CEC E7AA00D4 */  swc1    $f10, 0x00D4($sp)
/* 20C50 80031CF0 96190002 */  lhu     $t9, 0x0002($s0)           ## 00000008
/* 20C54 80031CF4 332A1FFF */  andi    $t2, $t9, 0x1FFF           ## $t2 = 00000000
/* 20C58 80031CF8 01520019 */  multu   $t2, $s2
/* 20C5C 80031CFC 00005812 */  mflo    $t3
/* 20C60 80031D00 022B4821 */  addu    $t1, $s1, $t3
/* 20C64 80031D04 852D0004 */  lh      $t5, 0x0004($t1)           ## 00000004
/* 20C68 80031D08 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 20C6C 80031D0C 00000000 */  nop
/* 20C70 80031D10 46804420 */  cvt.s.w $f16, $f8
/* 20C74 80031D14 E7B000D8 */  swc1    $f16, 0x00D8($sp)
/* 20C78 80031D18 960C0004 */  lhu     $t4, 0x0004($s0)           ## 0000000A
/* 20C7C 80031D1C 31981FFF */  andi    $t8, $t4, 0x1FFF           ## $t8 = 00000000
/* 20C80 80031D20 03120019 */  multu   $t8, $s2
/* 20C84 80031D24 00007012 */  mflo    $t6
/* 20C88 80031D28 022E7821 */  addu    $t7, $s1, $t6
/* 20C8C 80031D2C 85F90000 */  lh      $t9, 0x0000($t7)           ## 00000000
/* 20C90 80031D30 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 20C94 80031D34 00000000 */  nop
/* 20C98 80031D38 468021A0 */  cvt.s.w $f6, $f4
/* 20C9C 80031D3C E7A600C4 */  swc1    $f6, 0x00C4($sp)
/* 20CA0 80031D40 960A0004 */  lhu     $t2, 0x0004($s0)           ## 0000000A
/* 20CA4 80031D44 314B1FFF */  andi    $t3, $t2, 0x1FFF           ## $t3 = 00000000
/* 20CA8 80031D48 01720019 */  multu   $t3, $s2
/* 20CAC 80031D4C 00004812 */  mflo    $t1
/* 20CB0 80031D50 02296821 */  addu    $t5, $s1, $t1
/* 20CB4 80031D54 85AC0002 */  lh      $t4, 0x0002($t5)           ## 00000002
/* 20CB8 80031D58 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 20CBC 80031D5C 00000000 */  nop
/* 20CC0 80031D60 468092A0 */  cvt.s.w $f10, $f18
/* 20CC4 80031D64 E7AA00C8 */  swc1    $f10, 0x00C8($sp)
/* 20CC8 80031D68 96180004 */  lhu     $t8, 0x0004($s0)           ## 0000000A
/* 20CCC 80031D6C 330E1FFF */  andi    $t6, $t8, 0x1FFF           ## $t6 = 00000000
/* 20CD0 80031D70 01D20019 */  multu   $t6, $s2
/* 20CD4 80031D74 00007812 */  mflo    $t7
/* 20CD8 80031D78 022FC821 */  addu    $t9, $s1, $t7
/* 20CDC 80031D7C 872A0004 */  lh      $t2, 0x0004($t9)           ## 00000004
/* 20CE0 80031D80 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 20CE4 80031D84 00000000 */  nop
/* 20CE8 80031D88 46804420 */  cvt.s.w $f16, $f8
/* 20CEC 80031D8C E7B000CC */  swc1    $f16, 0x00CC($sp)
/* 20CF0 80031D90 960B0006 */  lhu     $t3, 0x0006($s0)           ## 0000000C
/* 20CF4 80031D94 01720019 */  multu   $t3, $s2
/* 20CF8 80031D98 00004812 */  mflo    $t1
/* 20CFC 80031D9C 02296821 */  addu    $t5, $s1, $t1
/* 20D00 80031DA0 85AC0000 */  lh      $t4, 0x0000($t5)           ## 00000000
/* 20D04 80031DA4 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 20D08 80031DA8 00000000 */  nop
/* 20D0C 80031DAC 468021A0 */  cvt.s.w $f6, $f4
/* 20D10 80031DB0 E7A600B8 */  swc1    $f6, 0x00B8($sp)
/* 20D14 80031DB4 96180006 */  lhu     $t8, 0x0006($s0)           ## 0000000C
/* 20D18 80031DB8 03120019 */  multu   $t8, $s2
/* 20D1C 80031DBC 00007012 */  mflo    $t6
/* 20D20 80031DC0 022E7821 */  addu    $t7, $s1, $t6
/* 20D24 80031DC4 85F90002 */  lh      $t9, 0x0002($t7)           ## 00000002
/* 20D28 80031DC8 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 20D2C 80031DCC 00000000 */  nop
/* 20D30 80031DD0 468092A0 */  cvt.s.w $f10, $f18
/* 20D34 80031DD4 E7AA00BC */  swc1    $f10, 0x00BC($sp)
/* 20D38 80031DD8 960A0006 */  lhu     $t2, 0x0006($s0)           ## 0000000C
/* 20D3C 80031DDC 01520019 */  multu   $t2, $s2
/* 20D40 80031DE0 00005812 */  mflo    $t3
/* 20D44 80031DE4 022B4821 */  addu    $t1, $s1, $t3
/* 20D48 80031DE8 852D0004 */  lh      $t5, 0x0004($t1)           ## 00000004
/* 20D4C 80031DEC 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 20D50 80031DF0 00000000 */  nop
/* 20D54 80031DF4 46804420 */  cvt.s.w $f16, $f8
/* 20D58 80031DF8 0C0295CB */  jal     func_800A572C
/* 20D5C 80031DFC E7B000C0 */  swc1    $f16, 0x00C0($sp)
/* 20D60 80031E00 0C029544 */  jal     func_800A5510
/* 20D64 80031E04 27A400AC */  addiu   $a0, $sp, 0x00AC           ## $a0 = FFFFFF44
/* 20D68 80031E08 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 20D6C 80031E0C C4246ACC */  lwc1    $f4, 0x6ACC($at)           ## 80106ACC
/* 20D70 80031E10 46000086 */  mov.s   $f2, $f0
/* 20D74 80031E14 46000005 */  abs.s   $f0, $f0
/* 20D78 80031E18 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 20D7C 80031E1C 4604003C */  c.lt.s  $f0, $f4
/* 20D80 80031E20 00000000 */  nop
/* 20D84 80031E24 45030020 */  bc1tl   .L80031EA8
/* 20D88 80031E28 960B0002 */  lhu     $t3, 0x0002($s0)           ## 00000008
/* 20D8C 80031E2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 20D90 80031E30 C7B200AC */  lwc1    $f18, 0x00AC($sp)
/* 20D94 80031E34 C7A800B0 */  lwc1    $f8, 0x00B0($sp)
/* 20D98 80031E38 46023003 */  div.s   $f0, $f6, $f2
/* 20D9C 80031E3C C7A400B4 */  lwc1    $f4, 0x00B4($sp)
/* 20DA0 80031E40 46009282 */  mul.s   $f10, $f18, $f0
/* 20DA4 80031E44 00000000 */  nop
/* 20DA8 80031E48 46004402 */  mul.s   $f16, $f8, $f0
/* 20DAC 80031E4C 00000000 */  nop
/* 20DB0 80031E50 46002182 */  mul.s   $f6, $f4, $f0
/* 20DB4 80031E54 E7AA00AC */  swc1    $f10, 0x00AC($sp)
/* 20DB8 80031E58 46145482 */  mul.s   $f18, $f10, $f20
/* 20DBC 80031E5C E7B000B0 */  swc1    $f16, 0x00B0($sp)
/* 20DC0 80031E60 E7A600B4 */  swc1    $f6, 0x00B4($sp)
/* 20DC4 80031E64 4600920D */  trunc.w.s $f8, $f18
/* 20DC8 80031E68 44184000 */  mfc1    $t8, $f8
/* 20DCC 80031E6C 00000000 */  nop
/* 20DD0 80031E70 A6180008 */  sh      $t8, 0x0008($s0)           ## 0000000E
/* 20DD4 80031E74 C7B000B0 */  lwc1    $f16, 0x00B0($sp)
/* 20DD8 80031E78 46148102 */  mul.s   $f4, $f16, $f20
/* 20DDC 80031E7C 4600218D */  trunc.w.s $f6, $f4
/* 20DE0 80031E80 440F3000 */  mfc1    $t7, $f6
/* 20DE4 80031E84 00000000 */  nop
/* 20DE8 80031E88 A60F000A */  sh      $t7, 0x000A($s0)           ## 00000010
/* 20DEC 80031E8C C7AA00B4 */  lwc1    $f10, 0x00B4($sp)
/* 20DF0 80031E90 46145482 */  mul.s   $f18, $f10, $f20
/* 20DF4 80031E94 4600920D */  trunc.w.s $f8, $f18
/* 20DF8 80031E98 440A4000 */  mfc1    $t2, $f8
/* 20DFC 80031E9C 00000000 */  nop
/* 20E00 80031EA0 A60A000C */  sh      $t2, 0x000C($s0)           ## 00000012
/* 20E04 80031EA4 960B0002 */  lhu     $t3, 0x0002($s0)           ## 00000008
.L80031EA8:
/* 20E08 80031EA8 C7B000AC */  lwc1    $f16, 0x00AC($sp)
/* 20E0C 80031EAC C7B200B0 */  lwc1    $f18, 0x00B0($sp)
/* 20E10 80031EB0 31691FFF */  andi    $t1, $t3, 0x1FFF           ## $t1 = 00000000
/* 20E14 80031EB4 01320019 */  multu   $t1, $s2
/* 20E18 80031EB8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 20E1C 80031EBC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 000013F8
/* 20E20 80031EC0 00006812 */  mflo    $t5
/* 20E24 80031EC4 022D1021 */  addu    $v0, $s1, $t5
/* 20E28 80031EC8 844C0000 */  lh      $t4, 0x0000($v0)           ## 00000000
/* 20E2C 80031ECC 84580002 */  lh      $t8, 0x0002($v0)           ## 00000002
/* 20E30 80031ED0 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000004
/* 20E34 80031ED4 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 20E38 80031ED8 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 20E3C 80031EDC 468021A0 */  cvt.s.w $f6, $f4
/* 20E40 80031EE0 46804120 */  cvt.s.w $f4, $f8
/* 20E44 80031EE4 46068282 */  mul.s   $f10, $f16, $f6
/* 20E48 80031EE8 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 20E4C 80031EEC 46049402 */  mul.s   $f16, $f18, $f4
/* 20E50 80031EF0 C7A400B4 */  lwc1    $f4, 0x00B4($sp)
/* 20E54 80031EF4 468044A0 */  cvt.s.w $f18, $f8
/* 20E58 80031EF8 46105180 */  add.s   $f6, $f10, $f16
/* 20E5C 80031EFC 46049282 */  mul.s   $f10, $f18, $f4
/* 20E60 80031F00 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 20E64 80031F04 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 20E68 80031F08 46065400 */  add.s   $f16, $f10, $f6
/* 20E6C 80031F0C 46008207 */  neg.s   $f8, $f16
/* 20E70 80031F10 4600448D */  trunc.w.s $f18, $f8
/* 20E74 80031F14 44199000 */  mfc1    $t9, $f18
/* 20E78 80031F18 00000000 */  nop
/* 20E7C 80031F1C A619000E */  sh      $t9, 0x000E($s0)           ## 00000014
/* 20E80 80031F20 C7AA00B0 */  lwc1    $f10, 0x00B0($sp)
/* 20E84 80031F24 8FAA0178 */  lw      $t2, 0x0178($sp)
/* 20E88 80031F28 C7A600B0 */  lwc1    $f6, 0x00B0($sp)
/* 20E8C 80031F2C 460A203C */  c.lt.s  $f4, $f10
/* 20E90 80031F30 00000000 */  nop
/* 20E94 80031F34 45000009 */  bc1f    .L80031F5C
/* 20E98 80031F38 00000000 */  nop
/* 20E9C 80031F3C 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 20EA0 80031F40 26850012 */  addiu   $a1, $s4, 0x0012           ## $a1 = 00000012
/* 20EA4 80031F44 27A60076 */  addiu   $a2, $sp, 0x0076           ## $a2 = FFFFFF0E
/* 20EA8 80031F48 01734821 */  addu    $t1, $t3, $s3
/* 20EAC 80031F4C 0C00ACF9 */  jal     func_8002B3E4
/* 20EB0 80031F50 A7A90076 */  sh      $t1, 0x0076($sp)
/* 20EB4 80031F54 10000018 */  beq     $zero, $zero, .L80031FB8
/* 20EB8 80031F58 97C20014 */  lhu     $v0, 0x0014($s8)           ## 00000014
.L80031F5C:
/* 20EBC 80031F5C C4306AD0 */  lwc1    $f16, 0x6AD0($at)          ## 00006AD0
/* 20EC0 80031F60 8FAD0178 */  lw      $t5, 0x0178($sp)
/* 20EC4 80031F64 2685000E */  addiu   $a1, $s4, 0x000E           ## $a1 = 0000000E
/* 20EC8 80031F68 4610303C */  c.lt.s  $f6, $f16
/* 20ECC 80031F6C 8FAE0178 */  lw      $t6, 0x0178($sp)
/* 20ED0 80031F70 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 000013F8
/* 20ED4 80031F74 4502000A */  bc1fl   .L80031FA0
/* 20ED8 80031F78 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 20EDC 80031F7C 8DAC0000 */  lw      $t4, 0x0000($t5)           ## 00000000
/* 20EE0 80031F80 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 000013F8
/* 20EE4 80031F84 27A60074 */  addiu   $a2, $sp, 0x0074           ## $a2 = FFFFFF0C
/* 20EE8 80031F88 0193C021 */  addu    $t8, $t4, $s3
/* 20EEC 80031F8C 0C00ACF9 */  jal     func_8002B3E4
/* 20EF0 80031F90 A7B80074 */  sh      $t8, 0x0074($sp)
/* 20EF4 80031F94 10000008 */  beq     $zero, $zero, .L80031FB8
/* 20EF8 80031F98 97C20014 */  lhu     $v0, 0x0014($s8)           ## 00000014
/* 20EFC 80031F9C 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
.L80031FA0:
/* 20F00 80031FA0 26850010 */  addiu   $a1, $s4, 0x0010           ## $a1 = 00000010
/* 20F04 80031FA4 27A60072 */  addiu   $a2, $sp, 0x0072           ## $a2 = FFFFFF0A
/* 20F08 80031FA8 01F3C821 */  addu    $t9, $t7, $s3
/* 20F0C 80031FAC 0C00ACF9 */  jal     func_8002B3E4
/* 20F10 80031FB0 A7B90072 */  sh      $t9, 0x0072($sp)
/* 20F14 80031FB4 97C20014 */  lhu     $v0, 0x0014($s8)           ## 00000014
.L80031FB8:
/* 20F18 80031FB8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 20F1C 80031FBC 26F70010 */  addiu   $s7, $s7, 0x0010           ## $s7 = 00000010
/* 20F20 80031FC0 0262082A */  slt     $at, $s3, $v0
/* 20F24 80031FC4 5420FF08 */  bnel    $at, $zero, .L80031BE8
/* 20F28 80031FC8 8FA80174 */  lw      $t0, 0x0174($sp)
.L80031FCC:
/* 20F2C 80031FCC 8FA30178 */  lw      $v1, 0x0178($sp)
/* 20F30 80031FD0 8C6A0000 */  lw      $t2, 0x0000($v1)           ## 00000000
/* 20F34 80031FD4 01425821 */  addu    $t3, $t2, $v0
/* 20F38 80031FD8 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 20F3C 80031FDC 8FA90174 */  lw      $t1, 0x0174($sp)
/* 20F40 80031FE0 97CC000C */  lhu     $t4, 0x000C($s8)           ## 0000000C
/* 20F44 80031FE4 8D2D0000 */  lw      $t5, 0x0000($t1)           ## 00000000
/* 20F48 80031FE8 01ACC021 */  addu    $t8, $t5, $t4
/* 20F4C 80031FEC AD380000 */  sw      $t8, 0x0000($t1)           ## 00000000
.L80031FF0:
/* 20F50 80031FF0 8FBF005C */  lw      $ra, 0x005C($sp)
.L80031FF4:
/* 20F54 80031FF4 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 20F58 80031FF8 8FB00038 */  lw      $s0, 0x0038($sp)
/* 20F5C 80031FFC 8FB1003C */  lw      $s1, 0x003C($sp)
/* 20F60 80032000 8FB20040 */  lw      $s2, 0x0040($sp)
/* 20F64 80032004 8FB30044 */  lw      $s3, 0x0044($sp)
/* 20F68 80032008 8FB40048 */  lw      $s4, 0x0048($sp)
/* 20F6C 8003200C 8FB5004C */  lw      $s5, 0x004C($sp)
/* 20F70 80032010 8FB60050 */  lw      $s6, 0x0050($sp)
/* 20F74 80032014 8FB70054 */  lw      $s7, 0x0054($sp)
/* 20F78 80032018 8FBE0058 */  lw      $s8, 0x0058($sp)
/* 20F7C 8003201C 03E00008 */  jr      $ra
/* 20F80 80032020 27BD0168 */  addiu   $sp, $sp, 0x0168           ## $sp = 00000000


glabel func_80032024
/* 20F84 80032024 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 20F88 80032028 AFB40028 */  sw      $s4, 0x0028($sp)
/* 20F8C 8003202C AFB30024 */  sw      $s3, 0x0024($sp)
/* 20F90 80032030 00C09825 */  or      $s3, $a2, $zero            ## $s3 = 00000000
/* 20F94 80032034 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 20F98 80032038 AFBF002C */  sw      $ra, 0x002C($sp)
/* 20F9C 8003203C AFB20020 */  sw      $s2, 0x0020($sp)
/* 20FA0 80032040 AFB1001C */  sw      $s1, 0x001C($sp)
/* 20FA4 80032044 AFB00018 */  sw      $s0, 0x0018($sp)
/* 20FA8 80032048 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 20FAC 8003204C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 20FB0 80032050 24120032 */  addiu   $s2, $zero, 0x0032         ## $s2 = 00000032
.L80032054:
/* 20FB4 80032054 962E138C */  lhu     $t6, 0x138C($s1)           ## 0000138C
/* 20FB8 80032058 268407C0 */  addiu   $a0, $s4, 0x07C0           ## $a0 = 000007C0
/* 20FBC 8003205C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 20FC0 80032060 51E0000C */  beql    $t7, $zero, .L80032094
/* 20FC4 80032064 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 20FC8 80032068 0C00C519 */  jal     func_80031464
/* 20FCC 8003206C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000001
/* 20FD0 80032070 50400008 */  beql    $v0, $zero, .L80032094
/* 20FD4 80032074 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 20FD8 80032078 54530006 */  bnel    $v0, $s3, .L80032094
/* 20FDC 8003207C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000003
/* 20FE0 80032080 0C00D4A1 */  jal     func_80035284
/* 20FE4 80032084 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 20FE8 80032088 10000005 */  beq     $zero, $zero, .L800320A0
/* 20FEC 8003208C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 20FF0 80032090 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000004
.L80032094:
/* 20FF4 80032094 1612FFEF */  bne     $s0, $s2, .L80032054
/* 20FF8 80032098 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 00000002
/* 20FFC 8003209C 8FBF002C */  lw      $ra, 0x002C($sp)
.L800320A0:
/* 21000 800320A0 8FB00018 */  lw      $s0, 0x0018($sp)
/* 21004 800320A4 8FB1001C */  lw      $s1, 0x001C($sp)
/* 21008 800320A8 8FB20020 */  lw      $s2, 0x0020($sp)
/* 2100C 800320AC 8FB30024 */  lw      $s3, 0x0024($sp)
/* 21010 800320B0 8FB40028 */  lw      $s4, 0x0028($sp)
/* 21014 800320B4 03E00008 */  jr      $ra
/* 21018 800320B8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


glabel func_800320BC
/* 2101C 800320BC 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 21020 800320C0 AFB40030 */  sw      $s4, 0x0030($sp)
/* 21024 800320C4 AFB3002C */  sw      $s3, 0x002C($sp)
/* 21028 800320C8 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 2102C 800320CC 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 21030 800320D0 AFBF003C */  sw      $ra, 0x003C($sp)
/* 21034 800320D4 AFB60038 */  sw      $s6, 0x0038($sp)
/* 21038 800320D8 AFB50034 */  sw      $s5, 0x0034($sp)
/* 2103C 800320DC AFB20028 */  sw      $s2, 0x0028($sp)
/* 21040 800320E0 AFB10024 */  sw      $s1, 0x0024($sp)
/* 21044 800320E4 AFB00020 */  sw      $s0, 0x0020($sp)
/* 21048 800320E8 0C00AD28 */  jal     func_8002B4A0
/* 2104C 800320EC 266413F8 */  addiu   $a0, $s3, 0x13F8           ## $a0 = 000013F8
/* 21050 800320F0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 21054 800320F4 2672000C */  addiu   $s2, $s3, 0x000C           ## $s2 = 0000000C
.L800320F8:
/* 21058 800320F8 0C00C3F4 */  jal     func_80030FD0
/* 2105C 800320FC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 0000000C
/* 21060 80032100 26310064 */  addiu   $s1, $s1, 0x0064           ## $s1 = 00000064
/* 21064 80032104 2A211388 */  slti    $at, $s1, 0x1388
/* 21068 80032108 1420FFFB */  bne     $at, $zero, .L800320F8
/* 2106C 8003210C 26520064 */  addiu   $s2, $s2, 0x0064           ## $s2 = 00000070
/* 21070 80032110 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 21074 80032114 02609025 */  or      $s2, $s3, $zero            ## $s2 = 00000000
/* 21078 80032118 02608825 */  or      $s1, $s3, $zero            ## $s1 = 00000000
/* 2107C 8003211C 2415FFFF */  addiu   $s5, $zero, 0xFFFF         ## $s5 = FFFFFFFF
.L80032120:
/* 21080 80032120 962E138C */  lhu     $t6, 0x138C($s1)           ## 0000138C
/* 21084 80032124 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 21088 80032128 26450004 */  addiu   $a1, $s2, 0x0004           ## $a1 = 00000004
/* 2108C 8003212C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 21090 80032130 51E00007 */  beql    $t7, $zero, .L80032150
/* 21094 80032134 8E420004 */  lw      $v0, 0x0004($s2)           ## 00000004
/* 21098 80032138 0C00C40F */  jal     func_8003103C
/* 2109C 8003213C A620138C */  sh      $zero, 0x138C($s1)         ## 0000138C
/* 210A0 80032140 92780000 */  lbu     $t8, 0x0000($s3)           ## 00000000
/* 210A4 80032144 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 210A8 80032148 A2790000 */  sb      $t9, 0x0000($s3)           ## 00000000
/* 210AC 8003214C 8E420004 */  lw      $v0, 0x0004($s2)           ## 00000004
.L80032150:
/* 210B0 80032150 50400011 */  beql    $v0, $zero, .L80032198
/* 210B4 80032154 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 210B8 80032158 8C480130 */  lw      $t0, 0x0130($v0)           ## 00000130
/* 210BC 8003215C 268407C0 */  addiu   $a0, $s4, 0x07C0           ## $a0 = 000007C0
/* 210C0 80032160 5500000D */  bnel    $t0, $zero, .L80032198
/* 210C4 80032164 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 210C8 80032168 0C00C519 */  jal     func_80031464
/* 210CC 8003216C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000002
/* 210D0 80032170 10400023 */  beq     $v0, $zero, .L80032200
/* 210D4 80032174 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 210D8 80032178 AC55013C */  sw      $s5, 0x013C($v0)           ## 0000013C
/* 210DC 8003217C A620138C */  sh      $zero, 0x138C($s1)         ## 0000138C
/* 210E0 80032180 0C00C40F */  jal     func_8003103C
/* 210E4 80032184 26450004 */  addiu   $a1, $s2, 0x0004           ## $a1 = 00000004
/* 210E8 80032188 92690000 */  lbu     $t1, 0x0000($s3)           ## 00000000
/* 210EC 8003218C 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 210F0 80032190 A26A0000 */  sb      $t2, 0x0000($s3)           ## 00000000
/* 210F4 80032194 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000003
.L80032198:
/* 210F8 80032198 2A010032 */  slti    $at, $s0, 0x0032
/* 210FC 8003219C 26520064 */  addiu   $s2, $s2, 0x0064           ## $s2 = 00000064
/* 21100 800321A0 1420FFDF */  bne     $at, $zero, .L80032120
/* 21104 800321A4 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 00000002
/* 21108 800321A8 AFA00058 */  sw      $zero, 0x0058($sp)
/* 2110C 800321AC AFA00054 */  sw      $zero, 0x0054($sp)
/* 21110 800321B0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 21114 800321B4 02608825 */  or      $s1, $s3, $zero            ## $s1 = 00000000
/* 21118 800321B8 24160032 */  addiu   $s6, $zero, 0x0032         ## $s6 = 00000032
/* 2111C 800321BC 27B50054 */  addiu   $s5, $sp, 0x0054           ## $s5 = FFFFFFF4
/* 21120 800321C0 27B20058 */  addiu   $s2, $sp, 0x0058           ## $s2 = FFFFFFF8
.L800321C4:
/* 21124 800321C4 962B138C */  lhu     $t3, 0x138C($s1)           ## 0000138C
/* 21128 800321C8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 2112C 800321CC 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 21130 800321D0 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 21134 800321D4 11800004 */  beq     $t4, $zero, .L800321E8
/* 21138 800321D8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 2113C 800321DC 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFF8
/* 21140 800321E0 0C00C5B6 */  jal     func_800316D8
/* 21144 800321E4 AFB50010 */  sw      $s5, 0x0010($sp)
.L800321E8:
/* 21148 800321E8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 2114C 800321EC 1616FFF5 */  bne     $s0, $s6, .L800321C4
/* 21150 800321F0 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 00000002
/* 21154 800321F4 926D0000 */  lbu     $t5, 0x0000($s3)           ## 00000000
/* 21158 800321F8 31AEFFFE */  andi    $t6, $t5, 0xFFFE           ## $t6 = 00000000
/* 2115C 800321FC A26E0000 */  sb      $t6, 0x0000($s3)           ## 00000000
.L80032200:
/* 21160 80032200 8FBF003C */  lw      $ra, 0x003C($sp)
/* 21164 80032204 8FB00020 */  lw      $s0, 0x0020($sp)
/* 21168 80032208 8FB10024 */  lw      $s1, 0x0024($sp)
/* 2116C 8003220C 8FB20028 */  lw      $s2, 0x0028($sp)
/* 21170 80032210 8FB3002C */  lw      $s3, 0x002C($sp)
/* 21174 80032214 8FB40030 */  lw      $s4, 0x0030($sp)
/* 21178 80032218 8FB50034 */  lw      $s5, 0x0034($sp)
/* 2117C 8003221C 8FB60038 */  lw      $s6, 0x0038($sp)
/* 21180 80032220 03E00008 */  jr      $ra
/* 21184 80032224 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000


glabel func_80032228
/* 21188 80032228 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 2118C 8003222C AFB30020 */  sw      $s3, 0x0020($sp)
/* 21190 80032230 AFB2001C */  sw      $s2, 0x001C($sp)
/* 21194 80032234 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 21198 80032238 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 2119C 8003223C AFBF002C */  sw      $ra, 0x002C($sp)
/* 211A0 80032240 AFB50028 */  sw      $s5, 0x0028($sp)
/* 211A4 80032244 AFB40024 */  sw      $s4, 0x0024($sp)
/* 211A8 80032248 AFB10018 */  sw      $s1, 0x0018($sp)
/* 211AC 8003224C AFB00014 */  sw      $s0, 0x0014($sp)
/* 211B0 80032250 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 211B4 80032254 02408825 */  or      $s1, $s2, $zero            ## $s1 = 00000000
/* 211B8 80032258 24150032 */  addiu   $s5, $zero, 0x0032         ## $s5 = 00000032
/* 211BC 8003225C 24140064 */  addiu   $s4, $zero, 0x0064         ## $s4 = 00000064
.L80032260:
/* 211C0 80032260 962E138C */  lhu     $t6, 0x138C($s1)           ## 0000138C
/* 211C4 80032264 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 211C8 80032268 51E00008 */  beql    $t7, $zero, .L8003228C
/* 211CC 8003226C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 211D0 80032270 02140019 */  multu   $s0, $s4
/* 211D4 80032274 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 211D8 80032278 0000C012 */  mflo    $t8
/* 211DC 8003227C 02582821 */  addu    $a1, $s2, $t8
/* 211E0 80032280 0C00C486 */  jal     func_80031218
/* 211E4 80032284 24A50004 */  addiu   $a1, $a1, 0x0004           ## $a1 = 00000004
/* 211E8 80032288 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
.L8003228C:
/* 211EC 8003228C 1615FFF4 */  bne     $s0, $s5, .L80032260
/* 211F0 80032290 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 00000002
/* 211F4 80032294 8FBF002C */  lw      $ra, 0x002C($sp)
/* 211F8 80032298 8FB00014 */  lw      $s0, 0x0014($sp)
/* 211FC 8003229C 8FB10018 */  lw      $s1, 0x0018($sp)
/* 21200 800322A0 8FB2001C */  lw      $s2, 0x001C($sp)
/* 21204 800322A4 8FB30020 */  lw      $s3, 0x0020($sp)
/* 21208 800322A8 8FB40024 */  lw      $s4, 0x0024($sp)
/* 2120C 800322AC 8FB50028 */  lw      $s5, 0x0028($sp)
/* 21210 800322B0 03E00008 */  jr      $ra
/* 21214 800322B4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


glabel func_800322B8
/* 21218 800322B8 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 2121C 800322BC AFB70050 */  sw      $s7, 0x0050($sp)
/* 21220 800322C0 AFB30040 */  sw      $s3, 0x0040($sp)
/* 21224 800322C4 AFB10038 */  sw      $s1, 0x0038($sp)
/* 21228 800322C8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 2122C 800322CC 3413FFFF */  ori     $s3, $zero, 0xFFFF         ## $s3 = 0000FFFF
/* 21230 800322D0 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 21234 800322D4 AFBF0054 */  sw      $ra, 0x0054($sp)
/* 21238 800322D8 AFB6004C */  sw      $s6, 0x004C($sp)
/* 2123C 800322DC AFB50048 */  sw      $s5, 0x0048($sp)
/* 21240 800322E0 AFB40044 */  sw      $s4, 0x0044($sp)
/* 21244 800322E4 AFB2003C */  sw      $s2, 0x003C($sp)
/* 21248 800322E8 AFB00034 */  sw      $s0, 0x0034($sp)
/* 2124C 800322EC F7B80028 */  sdc1    $f24, 0x0028($sp)
/* 21250 800322F0 F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 21254 800322F4 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 21258 800322F8 8E2E002C */  lw      $t6, 0x002C($s1)           ## 0000002C
/* 2125C 800322FC C6340010 */  lwc1    $f20, 0x0010($s1)          ## 00000010
/* 21260 80032300 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 21264 80032304 95C20000 */  lhu     $v0, 0x0000($t6)           ## 00000000
/* 21268 80032308 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
/* 2126C 8003230C 27B50070 */  addiu   $s5, $sp, 0x0070           ## $s5 = FFFFFFF0
/* 21270 80032310 16620003 */  bne     $s3, $v0, .L80032320
/* 21274 80032314 00027880 */  sll     $t7, $v0,  2
/* 21278 80032318 10000053 */  beq     $zero, $zero, .L80032468
/* 2127C 8003231C 4600A006 */  mov.s   $f0, $f20
.L80032320:
/* 21280 80032320 8E280028 */  lw      $t0, 0x0028($s1)           ## 00000028
/* 21284 80032324 96250008 */  lhu     $a1, 0x0008($s1)           ## 00000008
/* 21288 80032328 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 2128C 8003232C 8D0413F8 */  lw      $a0, 0x13F8($t0)           ## 000013F8
/* 21290 80032330 30A50007 */  andi    $a1, $a1, 0x0007           ## $a1 = 00000000
/* 21294 80032334 00052B40 */  sll     $a1, $a1, 13
/* 21298 80032338 C4366AD4 */  lwc1    $f22, 0x6AD4($at)          ## 80106AD4
/* 2129C 8003233C 8D1413F0 */  lw      $s4, 0x13F0($t0)           ## 000013F0
/* 212A0 80032340 008F8021 */  addu    $s0, $a0, $t7
.L80032344:
/* 212A4 80032344 86020000 */  lh      $v0, 0x0000($s0)           ## 00000000
/* 212A8 80032348 32EA0006 */  andi    $t2, $s7, 0x0006           ## $t2 = 00000000
/* 212AC 8003234C 00029100 */  sll     $s2, $v0,  4
/* 212B0 80032350 02921821 */  addu    $v1, $s4, $s2
/* 212B4 80032354 94780002 */  lhu     $t8, 0x0002($v1)           ## 00000002
/* 212B8 80032358 0305C824 */  and     $t9, $t8, $a1
/* 212BC 8003235C 13200006 */  beq     $t9, $zero, .L80032378
/* 212C0 80032360 00000000 */  nop
/* 212C4 80032364 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 212C8 80032368 1262003E */  beq     $s3, $v0, .L80032464
/* 212CC 8003236C 00024880 */  sll     $t1, $v0,  2
/* 212D0 80032370 1000FFF4 */  beq     $zero, $zero, .L80032344
/* 212D4 80032374 00898021 */  addu    $s0, $a0, $t1
.L80032378:
/* 212D8 80032378 51400014 */  beql    $t2, $zero, .L800323CC
/* 212DC 8003237C 8E220014 */  lw      $v0, 0x0014($s1)           ## 00000014
/* 212E0 80032380 8E2B0020 */  lw      $t3, 0x0020($s1)           ## 00000020
/* 212E4 80032384 316C0010 */  andi    $t4, $t3, 0x0010           ## $t4 = 00000000
/* 212E8 80032388 51800010 */  beql    $t4, $zero, .L800323CC
/* 212EC 8003238C 8E220014 */  lw      $v0, 0x0014($s1)           ## 00000014
/* 212F0 80032390 846D000A */  lh      $t5, 0x000A($v1)           ## 0000000A
/* 212F4 80032394 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 212F8 80032398 00000000 */  nop
/* 212FC 8003239C 468021A0 */  cvt.s.w $f6, $f4
/* 21300 800323A0 46163202 */  mul.s   $f8, $f6, $f22
/* 21304 800323A4 4618403C */  c.lt.s  $f8, $f24
/* 21308 800323A8 00000000 */  nop
/* 2130C 800323AC 45020007 */  bc1fl   .L800323CC
/* 21310 800323B0 8E220014 */  lw      $v0, 0x0014($s1)           ## 00000014
/* 21314 800323B4 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 21318 800323B8 1262002A */  beq     $s3, $v0, .L80032464
/* 2131C 800323BC 00027080 */  sll     $t6, $v0,  2
/* 21320 800323C0 1000FFE0 */  beq     $zero, $zero, .L80032344
/* 21324 800323C4 008E8021 */  addu    $s0, $a0, $t6
/* 21328 800323C8 8E220014 */  lw      $v0, 0x0014($s1)           ## 00000014
.L800323CC:
/* 2132C 800323CC 8D0513F4 */  lw      $a1, 0x13F4($t0)           ## 000013F4
/* 21330 800323D0 02542021 */  addu    $a0, $s2, $s4
/* 21334 800323D4 8C460000 */  lw      $a2, 0x0000($v0)           ## 00000000
/* 21338 800323D8 8C470008 */  lw      $a3, 0x0008($v0)           ## 00000008
/* 2133C 800323DC AFB50010 */  sw      $s5, 0x0010($sp)
/* 21340 800323E0 C62A0024 */  lwc1    $f10, 0x0024($s1)          ## 00000024
/* 21344 800323E4 0C00AE51 */  jal     func_8002B944
/* 21348 800323E8 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 2134C 800323EC 54560013 */  bnel    $v0, $s6, .L8003243C
/* 21350 800323F0 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 21354 800323F4 8E2F0014 */  lw      $t7, 0x0014($s1)           ## 00000014
/* 21358 800323F8 C7B00070 */  lwc1    $f16, 0x0070($sp)
/* 2135C 800323FC C5F20004 */  lwc1    $f18, 0x0004($t7)          ## 00000004
/* 21360 80032400 4612803C */  c.lt.s  $f16, $f18
/* 21364 80032404 00000000 */  nop
/* 21368 80032408 4502000C */  bc1fl   .L8003243C
/* 2136C 8003240C 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 21370 80032410 4610A03C */  c.lt.s  $f20, $f16
/* 21374 80032414 00000000 */  nop
/* 21378 80032418 45020008 */  bc1fl   .L8003243C
/* 2137C 8003241C 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 21380 80032420 8E380028 */  lw      $t8, 0x0028($s1)           ## 00000028
/* 21384 80032424 8E2A000C */  lw      $t2, 0x000C($s1)           ## 0000000C
/* 21388 80032428 46008506 */  mov.s   $f20, $f16
/* 2138C 8003242C 8F1913F0 */  lw      $t9, 0x13F0($t8)           ## 000013F0
/* 21390 80032430 03324821 */  addu    $t1, $t9, $s2
/* 21394 80032434 AD490000 */  sw      $t1, 0x0000($t2)           ## 00000000
/* 21398 80032438 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
.L8003243C:
/* 2139C 8003243C 5262000A */  beql    $s3, $v0, .L80032468
/* 213A0 80032440 4600A006 */  mov.s   $f0, $f20
/* 213A4 80032444 8E280028 */  lw      $t0, 0x0028($s1)           ## 00000028
/* 213A8 80032448 96250008 */  lhu     $a1, 0x0008($s1)           ## 00000008
/* 213AC 8003244C 00025880 */  sll     $t3, $v0,  2
/* 213B0 80032450 8D0413F8 */  lw      $a0, 0x13F8($t0)           ## 000013F8
/* 213B4 80032454 30A50007 */  andi    $a1, $a1, 0x0007           ## $a1 = 00000000
/* 213B8 80032458 00052B40 */  sll     $a1, $a1, 13
/* 213BC 8003245C 1000FFB9 */  beq     $zero, $zero, .L80032344
/* 213C0 80032460 008B8021 */  addu    $s0, $a0, $t3
.L80032464:
/* 213C4 80032464 4600A006 */  mov.s   $f0, $f20
.L80032468:
/* 213C8 80032468 8FBF0054 */  lw      $ra, 0x0054($sp)
/* 213CC 8003246C D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 213D0 80032470 D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 213D4 80032474 D7B80028 */  ldc1    $f24, 0x0028($sp)
/* 213D8 80032478 8FB00034 */  lw      $s0, 0x0034($sp)
/* 213DC 8003247C 8FB10038 */  lw      $s1, 0x0038($sp)
/* 213E0 80032480 8FB2003C */  lw      $s2, 0x003C($sp)
/* 213E4 80032484 8FB30040 */  lw      $s3, 0x0040($sp)
/* 213E8 80032488 8FB40044 */  lw      $s4, 0x0044($sp)
/* 213EC 8003248C 8FB50048 */  lw      $s5, 0x0048($sp)
/* 213F0 80032490 8FB6004C */  lw      $s6, 0x004C($sp)
/* 213F4 80032494 8FB70050 */  lw      $s7, 0x0050($sp)
/* 213F8 80032498 03E00008 */  jr      $ra
/* 213FC 8003249C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000


glabel func_800324A0
/* 21400 800324A0 27BDFEE0 */  addiu   $sp, $sp, 0xFEE0           ## $sp = FFFFFEE0
/* 21404 800324A4 AFB0003C */  sw      $s0, 0x003C($sp)
/* 21408 800324A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 2140C 800324AC AFBF004C */  sw      $ra, 0x004C($sp)
/* 21410 800324B0 AFB30048 */  sw      $s3, 0x0048($sp)
/* 21414 800324B4 AFB20044 */  sw      $s2, 0x0044($sp)
/* 21418 800324B8 AFB10040 */  sw      $s1, 0x0040($sp)
/* 2141C 800324BC F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 21420 800324C0 8E0F0018 */  lw      $t7, 0x0018($s0)           ## 00000018
/* 21424 800324C4 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 21428 800324C8 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 2142C 800324CC ADEE0000 */  sw      $t6, 0x0000($t7)           ## 00000000
/* 21430 800324D0 4481A000 */  mtc1    $at, $f20                  ## $f20 = -32000.00
/* 21434 800324D4 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
/* 21438 800324D8 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 2143C 800324DC 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
.L800324E0:
/* 21440 800324E0 00D3C021 */  addu    $t8, $a2, $s3
/* 21444 800324E4 971913DC */  lhu     $t9, 0x13DC($t8)           ## 000013DC
/* 21448 800324E8 00128880 */  sll     $s1, $s2,  2
/* 2144C 800324EC 02328823 */  subu    $s1, $s1, $s2
/* 21450 800324F0 332C0001 */  andi    $t4, $t9, 0x0001           ## $t4 = 00000000
/* 21454 800324F4 1180005C */  beq     $t4, $zero, .L80032668
/* 21458 800324F8 001188C0 */  sll     $s1, $s1,  3
/* 2145C 800324FC 02328821 */  addu    $s1, $s1, $s2
/* 21460 80032500 00118880 */  sll     $s1, $s1,  2
/* 21464 80032504 00D11821 */  addu    $v1, $a2, $s1
/* 21468 80032508 8C6E0054 */  lw      $t6, 0x0054($v1)           ## 00000054
/* 2146C 8003250C 8E0D001C */  lw      $t5, 0x001C($s0)           ## 0000001C
/* 21470 80032510 51AE0056 */  beql    $t5, $t6, .L8003266C
/* 21474 80032514 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 21478 80032518 8E020014 */  lw      $v0, 0x0014($s0)           ## 00000014
/* 2147C 8003251C C46600B0 */  lwc1    $f6, 0x00B0($v1)           ## 000000B0
/* 21480 80032520 246400A8 */  addiu   $a0, $v1, 0x00A8           ## $a0 = 000000A8
/* 21484 80032524 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 00000004
/* 21488 80032528 4606203C */  c.lt.s  $f4, $f6
/* 2148C 8003252C 00000000 */  nop
/* 21490 80032530 4503004E */  bc1tl   .L8003266C
/* 21494 80032534 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000002
/* 21498 80032538 8C450000 */  lw      $a1, 0x0000($v0)           ## 00000000
/* 2149C 8003253C 0C02A8C8 */  jal     func_800AA320
/* 214A0 80032540 8C460008 */  lw      $a2, 0x0008($v0)           ## 00000008
/* 214A4 80032544 54400004 */  bnel    $v0, $zero, .L80032558
/* 214A8 80032548 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
/* 214AC 8003254C 10000046 */  beq     $zero, $zero, .L80032668
/* 214B0 80032550 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
/* 214B4 80032554 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
.L80032558:
/* 214B8 80032558 8E180020 */  lw      $t8, 0x0020($s0)           ## 00000020
/* 214BC 8003255C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 214C0 80032560 24CF0050 */  addiu   $t7, $a2, 0x0050           ## $t7 = 00000050
/* 214C4 80032564 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 214C8 80032568 1320000F */  beq     $t9, $zero, .L800325A8
/* 214CC 8003256C AE0F0028 */  sw      $t7, 0x0028($s0)           ## 00000028
/* 214D0 80032570 00D16021 */  addu    $t4, $a2, $s1
/* 214D4 80032574 258D0062 */  addiu   $t5, $t4, 0x0062           ## $t5 = 00000062
/* 214D8 80032578 AE0D002C */  sw      $t5, 0x002C($s0)           ## 0000002C
/* 214DC 8003257C 0C00C8AE */  jal     func_800322B8
/* 214E0 80032580 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 214E4 80032584 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 214E8 80032588 4600403C */  c.lt.s  $f8, $f0
/* 214EC 8003258C 00000000 */  nop
/* 214F0 80032590 45020006 */  bc1fl   .L800325AC
/* 214F4 80032594 8E020020 */  lw      $v0, 0x0020($s0)           ## 00000020
/* 214F8 80032598 8E0E0018 */  lw      $t6, 0x0018($s0)           ## 00000018
/* 214FC 8003259C E6000010 */  swc1    $f0, 0x0010($s0)           ## 00000010
/* 21500 800325A0 46000506 */  mov.s   $f20, $f0
/* 21504 800325A4 ADD20000 */  sw      $s2, 0x0000($t6)           ## 00000000
.L800325A8:
/* 21508 800325A8 8E020020 */  lw      $v0, 0x0020($s0)           ## 00000020
.L800325AC:
/* 2150C 800325AC 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 21510 800325B0 55E00009 */  bnel    $t7, $zero, .L800325D8
/* 21514 800325B4 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 21518 800325B8 8E18000C */  lw      $t8, 0x000C($s0)           ## 0000000C
/* 2151C 800325BC 304C0008 */  andi    $t4, $v0, 0x0008           ## $t4 = 00000000
/* 21520 800325C0 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 21524 800325C4 57200014 */  bnel    $t9, $zero, .L80032618
/* 21528 800325C8 8E190020 */  lw      $t9, 0x0020($s0)           ## 00000020
/* 2152C 800325CC 51800012 */  beql    $t4, $zero, .L80032618
/* 21530 800325D0 8E190020 */  lw      $t9, 0x0020($s0)           ## 00000020
/* 21534 800325D4 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
.L800325D8:
/* 21538 800325D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 2153C 800325DC 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 21540 800325E0 01B17021 */  addu    $t6, $t5, $s1
/* 21544 800325E4 25CF0060 */  addiu   $t7, $t6, 0x0060           ## $t7 = 00000060
/* 21548 800325E8 0C00C8AE */  jal     func_800322B8
/* 2154C 800325EC AE0F002C */  sw      $t7, 0x002C($s0)           ## 0000002C
/* 21550 800325F0 C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000010
/* 21554 800325F4 4600503C */  c.lt.s  $f10, $f0
/* 21558 800325F8 00000000 */  nop
/* 2155C 800325FC 45020006 */  bc1fl   .L80032618
/* 21560 80032600 8E190020 */  lw      $t9, 0x0020($s0)           ## 00000020
/* 21564 80032604 8E180018 */  lw      $t8, 0x0018($s0)           ## 00000018
/* 21568 80032608 E6000010 */  swc1    $f0, 0x0010($s0)           ## 00000010
/* 2156C 8003260C 46000506 */  mov.s   $f20, $f0
/* 21570 80032610 AF120000 */  sw      $s2, 0x0000($t8)           ## 00000000
/* 21574 80032614 8E190020 */  lw      $t9, 0x0020($s0)           ## 00000020
.L80032618:
/* 21578 80032618 332C0001 */  andi    $t4, $t9, 0x0001           ## $t4 = 00000000
/* 2157C 8003261C 51800012 */  beql    $t4, $zero, .L80032668
/* 21580 80032620 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
/* 21584 80032624 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 21588 80032628 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 2158C 8003262C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 21590 80032630 01B17021 */  addu    $t6, $t5, $s1
/* 21594 80032634 25CF005E */  addiu   $t7, $t6, 0x005E           ## $t7 = 0000005E
/* 21598 80032638 0C00C8AE */  jal     func_800322B8
/* 2159C 8003263C AE0F002C */  sw      $t7, 0x002C($s0)           ## 0000002C
/* 215A0 80032640 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 215A4 80032644 4600803C */  c.lt.s  $f16, $f0
/* 215A8 80032648 00000000 */  nop
/* 215AC 8003264C 45020006 */  bc1fl   .L80032668
/* 215B0 80032650 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
/* 215B4 80032654 8E180018 */  lw      $t8, 0x0018($s0)           ## 00000018
/* 215B8 80032658 E6000010 */  swc1    $f0, 0x0010($s0)           ## 00000010
/* 215BC 8003265C 46000506 */  mov.s   $f20, $f0
/* 215C0 80032660 AF120000 */  sw      $s2, 0x0000($t8)           ## 00000000
/* 215C4 80032664 8E060004 */  lw      $a2, 0x0004($s0)           ## 00000004
.L80032668:
/* 215C8 80032668 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000003
.L8003266C:
/* 215CC 8003266C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 215D0 80032670 1641FF9B */  bne     $s2, $at, .L800324E0
/* 215D4 80032674 26730002 */  addiu   $s3, $s3, 0x0002           ## $s3 = 00000002
/* 215D8 80032678 8E190018 */  lw      $t9, 0x0018($s0)           ## 00000018
/* 215DC 8003267C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 215E0 80032680 0C00C519 */  jal     func_80031464
/* 215E4 80032684 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 215E8 80032688 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 215EC 8003268C 44819000 */  mtc1    $at, $f18                  ## $f18 = -32000.00
/* 215F0 80032690 00000000 */  nop
/* 215F4 80032694 4612A032 */  c.eq.s  $f20, $f18
/* 215F8 80032698 00000000 */  nop
/* 215FC 8003269C 450300A2 */  bc1tl   .L80032928
/* 21600 800326A0 4600A006 */  mov.s   $f0, $f20
/* 21604 800326A4 504000A0 */  beql    $v0, $zero, .L80032928
/* 21608 800326A8 4600A006 */  mov.s   $f0, $f20
/* 2160C 800326AC 8E030000 */  lw      $v1, 0x0000($s0)           ## 00000000
/* 21610 800326B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 21614 800326B4 1060009B */  beq     $v1, $zero, .L80032924
/* 21618 800326B8 00612021 */  addu    $a0, $v1, $at
/* 2161C 800326BC 94820934 */  lhu     $v0, 0x0934($a0)           ## 00000934
/* 21620 800326C0 0002102B */  sltu    $v0, $zero, $v0
/* 21624 800326C4 14400003 */  bne     $v0, $zero, .L800326D4
/* 21628 800326C8 00000000 */  nop
/* 2162C 800326CC 94820936 */  lhu     $v0, 0x0936($a0)           ## 00000936
/* 21630 800326D0 0002102B */  sltu    $v0, $zero, $v0
.L800326D4:
/* 21634 800326D4 54400094 */  bnel    $v0, $zero, .L80032928
/* 21638 800326D8 4600A006 */  mov.s   $f0, $f20
/* 2163C 800326DC 8E0C0018 */  lw      $t4, 0x0018($s0)           ## 00000018
/* 21640 800326E0 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 21644 800326E4 8D8B0000 */  lw      $t3, 0x0000($t4)           ## 00000000
/* 21648 800326E8 000B7040 */  sll     $t6, $t3,  1
/* 2164C 800326EC 01AE7821 */  addu    $t7, $t5, $t6
/* 21650 800326F0 95F813DC */  lhu     $t8, 0x13DC($t7)           ## 000013DC
/* 21654 800326F4 000B6080 */  sll     $t4, $t3,  2
/* 21658 800326F8 018B6023 */  subu    $t4, $t4, $t3
/* 2165C 800326FC 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 21660 80032700 13200088 */  beq     $t9, $zero, .L80032924
/* 21664 80032704 000C60C0 */  sll     $t4, $t4,  3
/* 21668 80032708 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 2166C 8003270C 018B6021 */  addu    $t4, $t4, $t3
/* 21670 80032710 000C6080 */  sll     $t4, $t4,  2
/* 21674 80032714 010C1821 */  addu    $v1, $t0, $t4
/* 21678 80032718 946D000C */  lhu     $t5, 0x000C($v1)           ## 0000000C
/* 2167C 8003271C 8D0F13F0 */  lw      $t7, 0x13F0($t0)           ## 000013F0
/* 21680 80032720 24620038 */  addiu   $v0, $v1, 0x0038           ## $v0 = 00000038
/* 21684 80032724 000D7100 */  sll     $t6, $t5,  4
/* 21688 80032728 8E18000C */  lw      $t8, 0x000C($s0)           ## 0000000C
/* 2168C 8003272C 8C6C0008 */  lw      $t4, 0x0008($v1)           ## 00000008
/* 21690 80032730 01CF4821 */  addu    $t1, $t6, $t7
/* 21694 80032734 844F000C */  lh      $t7, 0x000C($v0)           ## 00000044
/* 21698 80032738 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 2169C 8003273C 8D8D0018 */  lw      $t5, 0x0018($t4)           ## 00000018
/* 216A0 80032740 8C450000 */  lw      $a1, 0x0000($v0)           ## 00000038
/* 216A4 80032744 8C460004 */  lw      $a2, 0x0004($v0)           ## 0000003C
/* 216A8 80032748 8C470008 */  lw      $a3, 0x0008($v0)           ## 00000040
/* 216AC 8003274C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 216B0 80032750 8458000E */  lh      $t8, 0x000E($v0)           ## 00000046
/* 216B4 80032754 03295023 */  subu    $t2, $t9, $t1
/* 216B8 80032758 000A5103 */  sra     $t2, $t2,  4
/* 216BC 8003275C AFB80014 */  sw      $t8, 0x0014($sp)
/* 216C0 80032760 84590010 */  lh      $t9, 0x0010($v0)           ## 00000048
/* 216C4 80032764 000A7100 */  sll     $t6, $t2,  4
/* 216C8 80032768 27A4008C */  addiu   $a0, $sp, 0x008C           ## $a0 = FFFFFF6C
/* 216CC 8003276C AFB90018 */  sw      $t9, 0x0018($sp)
/* 216D0 80032770 C4440014 */  lwc1    $f4, 0x0014($v0)           ## 0000004C
/* 216D4 80032774 01AE9821 */  addu    $s3, $t5, $t6
/* 216D8 80032778 E7A4001C */  swc1    $f4, 0x001C($sp)
/* 216DC 8003277C C4460018 */  lwc1    $f6, 0x0018($v0)           ## 00000050
/* 216E0 80032780 E7A60020 */  swc1    $f6, 0x0020($sp)
/* 216E4 80032784 C448001C */  lwc1    $f8, 0x001C($v0)           ## 00000054
/* 216E8 80032788 0C023E45 */  jal     func_8008F914
/* 216EC 8003278C E7A80024 */  swc1    $f8, 0x0024($sp)
/* 216F0 80032790 8E0D0018 */  lw      $t5, 0x0018($s0)           ## 00000018
/* 216F4 80032794 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 216F8 80032798 02609025 */  or      $s2, $s3, $zero            ## $s2 = 00000002
/* 216FC 8003279C 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 21700 800327A0 27B30074 */  addiu   $s3, $sp, 0x0074           ## $s3 = FFFFFF54
/* 21704 800327A4 27B100E0 */  addiu   $s1, $sp, 0x00E0           ## $s1 = FFFFFFC0
/* 21708 800327A8 000E7880 */  sll     $t7, $t6,  2
/* 2170C 800327AC 01EE7823 */  subu    $t7, $t7, $t6
/* 21710 800327B0 000F78C0 */  sll     $t7, $t7,  3
/* 21714 800327B4 01EE7821 */  addu    $t7, $t7, $t6
/* 21718 800327B8 000F7880 */  sll     $t7, $t7,  2
/* 2171C 800327BC 018FC021 */  addu    $t8, $t4, $t7
/* 21720 800327C0 8F190008 */  lw      $t9, 0x0008($t8)           ## 00000008
/* 21724 800327C4 8F220010 */  lw      $v0, 0x0010($t9)           ## 00000010
/* 21728 800327C8 AFA20084 */  sw      $v0, 0x0084($sp)
.L800327CC:
/* 2172C 800327CC 8FA20084 */  lw      $v0, 0x0084($sp)
/* 21730 800327D0 964D0002 */  lhu     $t5, 0x0002($s2)           ## 00000004
/* 21734 800327D4 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFF54
/* 21738 800327D8 31AE1FFF */  andi    $t6, $t5, 0x1FFF           ## $t6 = 00000000
/* 2173C 800327DC 000E6080 */  sll     $t4, $t6,  2
/* 21740 800327E0 018E6023 */  subu    $t4, $t4, $t6
/* 21744 800327E4 000C6040 */  sll     $t4, $t4,  1
/* 21748 800327E8 0C018F33 */  jal     Math_Vec3s_ToVec3f              ## Vec3f_CopyVec3s
/* 2174C 800327EC 01822821 */  addu    $a1, $t4, $v0
/* 21750 800327F0 27A4008C */  addiu   $a0, $sp, 0x008C           ## $a0 = FFFFFF6C
/* 21754 800327F4 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFF54
/* 21758 800327F8 0C023B42 */  jal     func_8008ED08
/* 2175C 800327FC 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFC0
/* 21760 80032800 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = FFFFFFCC
/* 21764 80032804 27AF0104 */  addiu   $t7, $sp, 0x0104           ## $t7 = FFFFFFE4
/* 21768 80032808 162FFFF0 */  bne     $s1, $t7, .L800327CC
/* 2176C 8003280C 26520002 */  addiu   $s2, $s2, 0x0002           ## $s2 = 00000004
/* 21770 80032810 27B100E0 */  addiu   $s1, $sp, 0x00E0           ## $s1 = FFFFFFC0
/* 21774 80032814 27B200EC */  addiu   $s2, $sp, 0x00EC           ## $s2 = FFFFFFCC
/* 21778 80032818 27B300F8 */  addiu   $s3, $sp, 0x00F8           ## $s3 = FFFFFFD8
/* 2177C 8003281C 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFD8
/* 21780 80032820 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFCC
/* 21784 80032824 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFC0
/* 21788 80032828 0C0295CB */  jal     func_800A572C
/* 2178C 8003282C 27A700D4 */  addiu   $a3, $sp, 0x00D4           ## $a3 = FFFFFFB4
/* 21790 80032830 0C029544 */  jal     func_800A5510
/* 21794 80032834 27A400D4 */  addiu   $a0, $sp, 0x00D4           ## $a0 = FFFFFFB4
/* 21798 80032838 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 2179C 8003283C C42A6AD8 */  lwc1    $f10, 0x6AD8($at)          ## 80106AD8
/* 217A0 80032840 46000306 */  mov.s   $f12, $f0
/* 217A4 80032844 46000005 */  abs.s   $f0, $f0
/* 217A8 80032848 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 217AC 8003284C 460A003C */  c.lt.s  $f0, $f10
/* 217B0 80032850 00000000 */  nop
/* 217B4 80032854 45030034 */  bc1tl   .L80032928
/* 217B8 80032858 4600A006 */  mov.s   $f0, $f20
/* 217BC 8003285C 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 217C0 80032860 C7B200D4 */  lwc1    $f18, 0x00D4($sp)
/* 217C4 80032864 C7A600D8 */  lwc1    $f6, 0x00D8($sp)
/* 217C8 80032868 460C8003 */  div.s   $f0, $f16, $f12
/* 217CC 8003286C C7AA00DC */  lwc1    $f10, 0x00DC($sp)
/* 217D0 80032870 27B80070 */  addiu   $t8, $sp, 0x0070           ## $t8 = FFFFFF50
/* 217D4 80032874 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFC0
/* 217D8 80032878 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFCC
/* 217DC 8003287C 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFD8
/* 217E0 80032880 46009102 */  mul.s   $f4, $f18, $f0
/* 217E4 80032884 C7B200E0 */  lwc1    $f18, 0x00E0($sp)
/* 217E8 80032888 46003202 */  mul.s   $f8, $f6, $f0
/* 217EC 8003288C 00000000 */  nop
/* 217F0 80032890 46005402 */  mul.s   $f16, $f10, $f0
/* 217F4 80032894 C7AA00E4 */  lwc1    $f10, 0x00E4($sp)
/* 217F8 80032898 E7A400D4 */  swc1    $f4, 0x00D4($sp)
/* 217FC 8003289C 46122182 */  mul.s   $f6, $f4, $f18
/* 21800 800328A0 E7A800D8 */  swc1    $f8, 0x00D8($sp)
/* 21804 800328A4 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 21808 800328A8 460A4482 */  mul.s   $f18, $f8, $f10
/* 2180C 800328AC E7B000DC */  swc1    $f16, 0x00DC($sp)
/* 21810 800328B0 E7B00014 */  swc1    $f16, 0x0014($sp)
/* 21814 800328B4 44072000 */  mfc1    $a3, $f4
/* 21818 800328B8 46123280 */  add.s   $f10, $f6, $f18
/* 2181C 800328BC C7A600E8 */  lwc1    $f6, 0x00E8($sp)
/* 21820 800328C0 46103482 */  mul.s   $f18, $f6, $f16
/* 21824 800328C4 460A9080 */  add.s   $f2, $f18, $f10
/* 21828 800328C8 46001087 */  neg.s   $f2, $f2
/* 2182C 800328CC E7A20018 */  swc1    $f2, 0x0018($sp)
/* 21830 800328D0 8E020014 */  lw      $v0, 0x0014($s0)           ## 00000014
/* 21834 800328D4 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 21838 800328D8 E7A6001C */  swc1    $f6, 0x001C($sp)
/* 2183C 800328DC C4520000 */  lwc1    $f18, 0x0000($v0)          ## 00000000
/* 21840 800328E0 AFB80024 */  sw      $t8, 0x0024($sp)
/* 21844 800328E4 E7B20020 */  swc1    $f18, 0x0020($sp)
/* 21848 800328E8 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 2184C 800328EC 0C029BA3 */  jal     func_800A6E8C
/* 21850 800328F0 E7AA0028 */  swc1    $f10, 0x0028($sp)
/* 21854 800328F4 5040000C */  beql    $v0, $zero, .L80032928
/* 21858 800328F8 4600A006 */  mov.s   $f0, $f20
/* 2185C 800328FC C7A20070 */  lwc1    $f2, 0x0070($sp)
/* 21860 80032900 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 21864 80032904 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 21868 80032908 46141001 */  sub.s   $f0, $f2, $f20
/* 2186C 8003290C 46000005 */  abs.s   $f0, $f0
/* 21870 80032910 4604003C */  c.lt.s  $f0, $f4
/* 21874 80032914 00000000 */  nop
/* 21878 80032918 45020003 */  bc1fl   .L80032928
/* 2187C 8003291C 4600A006 */  mov.s   $f0, $f20
/* 21880 80032920 46001506 */  mov.s   $f20, $f2
.L80032924:
/* 21884 80032924 4600A006 */  mov.s   $f0, $f20
.L80032928:
/* 21888 80032928 8FBF004C */  lw      $ra, 0x004C($sp)
/* 2188C 8003292C D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 21890 80032930 8FB0003C */  lw      $s0, 0x003C($sp)
/* 21894 80032934 8FB10040 */  lw      $s1, 0x0040($sp)
/* 21898 80032938 8FB20044 */  lw      $s2, 0x0044($sp)
/* 2189C 8003293C 8FB30048 */  lw      $s3, 0x0048($sp)
/* 218A0 80032940 03E00008 */  jr      $ra
/* 218A4 80032944 27BD0120 */  addiu   $sp, $sp, 0x0120           ## $sp = 00000000


glabel func_80032948
/* 218A8 80032948 27BDFF20 */  addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
/* 218AC 8003294C AFB3005C */  sw      $s3, 0x005C($sp)
/* 218B0 80032950 AFB20058 */  sw      $s2, 0x0058($sp)
/* 218B4 80032954 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 218B8 80032958 3413FFFF */  ori     $s3, $zero, 0xFFFF         ## $s3 = 0000FFFF
/* 218BC 8003295C AFBF006C */  sw      $ra, 0x006C($sp)
/* 218C0 80032960 AFB60068 */  sw      $s6, 0x0068($sp)
/* 218C4 80032964 AFB50064 */  sw      $s5, 0x0064($sp)
/* 218C8 80032968 AFB40060 */  sw      $s4, 0x0060($sp)
/* 218CC 8003296C AFB10054 */  sw      $s1, 0x0054($sp)
/* 218D0 80032970 AFB00050 */  sw      $s0, 0x0050($sp)
/* 218D4 80032974 F7B80048 */  sdc1    $f24, 0x0048($sp)
/* 218D8 80032978 F7B60040 */  sdc1    $f22, 0x0040($sp)
/* 218DC 8003297C F7B40038 */  sdc1    $f20, 0x0038($sp)
/* 218E0 80032980 AFA400E0 */  sw      $a0, 0x00E0($sp)
/* 218E4 80032984 AFA500E4 */  sw      $a1, 0x00E4($sp)
/* 218E8 80032988 AFA700EC */  sw      $a3, 0x00EC($sp)
/* 218EC 8003298C 8FAE00EC */  lw      $t6, 0x00EC($sp)
/* 218F0 80032990 0000B025 */  or      $s6, $zero, $zero          ## $s6 = 00000000
/* 218F4 80032994 8FB80100 */  lw      $t8, 0x0100($sp)
/* 218F8 80032998 95CF0000 */  lhu     $t7, 0x0000($t6)           ## 00000000
/* 218FC 8003299C 566F0004 */  bnel    $s3, $t7, .L800329B0
/* 21900 800329A0 8F080000 */  lw      $t0, 0x0000($t8)           ## 00000000
/* 21904 800329A4 1000018C */  beq     $zero, $zero, .L80032FD8
/* 21908 800329A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 2190C 800329AC 8F080000 */  lw      $t0, 0x0000($t8)           ## 00000000
.L800329B0:
/* 21910 800329B0 27B400B4 */  addiu   $s4, $sp, 0x00B4           ## $s4 = FFFFFFD4
/* 21914 800329B4 24150006 */  addiu   $s5, $zero, 0x0006         ## $s5 = 00000006
/* 21918 800329B8 AE880000 */  sw      $t0, 0x0000($s4)           ## FFFFFFD4
/* 2191C 800329BC 8F190004 */  lw      $t9, 0x0004($t8)           ## 00000004
/* 21920 800329C0 AE990004 */  sw      $t9, 0x0004($s4)           ## FFFFFFD8
/* 21924 800329C4 8F080008 */  lw      $t0, 0x0008($t8)           ## 00000008
/* 21928 800329C8 AE880008 */  sw      $t0, 0x0008($s4)           ## FFFFFFDC
/* 2192C 800329CC 8FAA00EC */  lw      $t2, 0x00EC($sp)
/* 21930 800329D0 8E4913F8 */  lw      $t1, 0x13F8($s2)           ## 000013F8
/* 21934 800329D4 C7B60104 */  lwc1    $f22, 0x0104($sp)
/* 21938 800329D8 954B0000 */  lhu     $t3, 0x0000($t2)           ## 00000000
/* 2193C 800329DC 000B6080 */  sll     $t4, $t3,  2
/* 21940 800329E0 012C8821 */  addu    $s1, $t1, $t4
.L800329E4:
/* 21944 800329E4 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 21948 800329E8 8E4D13F0 */  lw      $t5, 0x13F0($s2)           ## 000013F0
/* 2194C 800329EC 27A500C8 */  addiu   $a1, $sp, 0x00C8           ## $a1 = FFFFFFE8
/* 21950 800329F0 00027100 */  sll     $t6, $v0,  4
/* 21954 800329F4 01AE8021 */  addu    $s0, $t5, $t6
/* 21958 800329F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 2195C 800329FC 27A600C4 */  addiu   $a2, $sp, 0x00C4           ## $a2 = FFFFFFE4
/* 21960 80032A00 0C00AD84 */  jal     func_8002B610
/* 21964 80032A04 27A700C0 */  addiu   $a3, $sp, 0x00C0           ## $a3 = FFFFFFE0
/* 21968 80032A08 C7AC00C8 */  lwc1    $f12, 0x00C8($sp)
/* 2196C 80032A0C C7A800C0 */  lwc1    $f8, 0x00C0($sp)
/* 21970 80032A10 860F000E */  lh      $t7, 0x000E($s0)           ## 0000000E
/* 21974 80032A14 460C6182 */  mul.s   $f6, $f12, $f12
/* 21978 80032A18 44064000 */  mfc1    $a2, $f8
/* 2197C 80032A1C AFB40010 */  sw      $s4, 0x0010($sp)
/* 21980 80032A20 46084282 */  mul.s   $f10, $f8, $f8
/* 21984 80032A24 C7AE00C4 */  lwc1    $f14, 0x00C4($sp)
/* 21988 80032A28 460A3000 */  add.s   $f0, $f6, $f10
/* 2198C 80032A2C 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 21990 80032A30 00000000 */  nop
/* 21994 80032A34 468031A0 */  cvt.s.w $f6, $f6
/* 21998 80032A38 46000504 */  sqrt.s  $f20, $f0
/* 2199C 80032A3C 44073000 */  mfc1    $a3, $f6
/* 219A0 80032A40 0C029A69 */  jal     func_800A69A4
/* 219A4 80032A44 00000000 */  nop
/* 219A8 80032A48 46000606 */  mov.s   $f24, $f0
/* 219AC 80032A4C 46000005 */  abs.s   $f0, $f0
/* 219B0 80032A50 97B800E6 */  lhu     $t8, 0x00E6($sp)
/* 219B4 80032A54 4600B03C */  c.lt.s  $f22, $f0
/* 219B8 80032A58 00000000 */  nop
/* 219BC 80032A5C 45030008 */  bc1tl   .L80032A80
/* 219C0 80032A60 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 219C4 80032A64 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 219C8 80032A68 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 219CC 80032A6C 00194340 */  sll     $t0, $t9, 13
/* 219D0 80032A70 00485024 */  and     $t2, $v0, $t0
/* 219D4 80032A74 11400008 */  beq     $t2, $zero, .L80032A98
/* 219D8 80032A78 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 219DC 80032A7C 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L80032A80:
/* 219E0 80032A80 52620092 */  beql    $s3, $v0, .L80032CCC
/* 219E4 80032A84 8FB900EC */  lw      $t9, 0x00EC($sp)
/* 219E8 80032A88 8E4B13F8 */  lw      $t3, 0x13F8($s2)           ## 000013F8
/* 219EC 80032A8C 00024880 */  sll     $t1, $v0,  2
/* 219F0 80032A90 1000FFD4 */  beq     $zero, $zero, .L800329E4
/* 219F4 80032A94 01698821 */  addu    $s1, $t3, $t1
.L80032A98:
/* 219F8 80032A98 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 219FC 80032A9C C7B000C0 */  lwc1    $f16, 0x00C0($sp)
/* 21A00 80032AA0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 21A04 80032AA4 46145383 */  div.s   $f14, $f10, $f20
/* 21A08 80032AA8 C4246ADC */  lwc1    $f4, 0x6ADC($at)           ## 80106ADC
/* 21A0C 80032AAC 304E1FFF */  andi    $t6, $v0, 0x1FFF           ## $t6 = 00000000
/* 21A10 80032AB0 46008005 */  abs.s   $f0, $f16
/* 21A14 80032AB4 460E0482 */  mul.s   $f18, $f0, $f14
/* 21A18 80032AB8 4604903C */  c.lt.s  $f18, $f4
/* 21A1C 80032ABC 00000000 */  nop
/* 21A20 80032AC0 45000008 */  bc1f    .L80032AE4
/* 21A24 80032AC4 00000000 */  nop
/* 21A28 80032AC8 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21A2C 80032ACC 5262007F */  beql    $s3, $v0, .L80032CCC
/* 21A30 80032AD0 8FB900EC */  lw      $t9, 0x00EC($sp)
/* 21A34 80032AD4 8E4C13F8 */  lw      $t4, 0x13F8($s2)           ## 000013F8
/* 21A38 80032AD8 00026880 */  sll     $t5, $v0,  2
/* 21A3C 80032ADC 1000FFC1 */  beq     $zero, $zero, .L800329E4
/* 21A40 80032AE0 018D8821 */  addu    $s1, $t4, $t5
.L80032AE4:
/* 21A44 80032AE4 01D50019 */  multu   $t6, $s5
/* 21A48 80032AE8 96080004 */  lhu     $t0, 0x0004($s0)           ## 00000004
/* 21A4C 80032AEC 8E4513F4 */  lw      $a1, 0x13F4($s2)           ## 000013F4
/* 21A50 80032AF0 310A1FFF */  andi    $t2, $t0, 0x1FFF           ## $t2 = 00000000
/* 21A54 80032AF4 00007812 */  mflo    $t7
/* 21A58 80032AF8 00AFC021 */  addu    $t8, $a1, $t7
/* 21A5C 80032AFC 87190004 */  lh      $t9, 0x0004($t8)           ## 00000004
/* 21A60 80032B00 01550019 */  multu   $t2, $s5
/* 21A64 80032B04 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 21A68 80032B08 00000000 */  nop
/* 21A6C 80032B0C 46804320 */  cvt.s.w $f12, $f8
/* 21A70 80032B10 00005812 */  mflo    $t3
/* 21A74 80032B14 00AB4821 */  addu    $t1, $a1, $t3
/* 21A78 80032B18 852C0004 */  lh      $t4, 0x0004($t1)           ## 00000004
/* 21A7C 80032B1C 46006086 */  mov.s   $f2, $f12
/* 21A80 80032B20 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 21A84 80032B24 00000000 */  nop
/* 21A88 80032B28 46803020 */  cvt.s.w $f0, $f6
/* 21A8C 80032B2C 4602003C */  c.lt.s  $f0, $f2
/* 21A90 80032B30 00000000 */  nop
/* 21A94 80032B34 45020004 */  bc1fl   .L80032B48
/* 21A98 80032B38 4600603C */  c.lt.s  $f12, $f0
/* 21A9C 80032B3C 10000006 */  beq     $zero, $zero, .L80032B58
/* 21AA0 80032B40 46000086 */  mov.s   $f2, $f0
/* 21AA4 80032B44 4600603C */  c.lt.s  $f12, $f0
.L80032B48:
/* 21AA8 80032B48 00000000 */  nop
/* 21AAC 80032B4C 45020003 */  bc1fl   .L80032B5C
/* 21AB0 80032B50 960D0006 */  lhu     $t5, 0x0006($s0)           ## 00000006
/* 21AB4 80032B54 46000306 */  mov.s   $f12, $f0
.L80032B58:
/* 21AB8 80032B58 960D0006 */  lhu     $t5, 0x0006($s0)           ## 00000006
.L80032B5C:
/* 21ABC 80032B5C 000D7080 */  sll     $t6, $t5,  2
/* 21AC0 80032B60 01CD7023 */  subu    $t6, $t6, $t5
/* 21AC4 80032B64 000E7040 */  sll     $t6, $t6,  1
/* 21AC8 80032B68 00AE7821 */  addu    $t7, $a1, $t6
/* 21ACC 80032B6C 85F80004 */  lh      $t8, 0x0004($t7)           ## 00000004
/* 21AD0 80032B70 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 21AD4 80032B74 00000000 */  nop
/* 21AD8 80032B78 46805020 */  cvt.s.w $f0, $f10
/* 21ADC 80032B7C 4602003C */  c.lt.s  $f0, $f2
/* 21AE0 80032B80 00000000 */  nop
/* 21AE4 80032B84 45020004 */  bc1fl   .L80032B98
/* 21AE8 80032B88 4600603C */  c.lt.s  $f12, $f0
/* 21AEC 80032B8C 10000006 */  beq     $zero, $zero, .L80032BA8
/* 21AF0 80032B90 46000086 */  mov.s   $f2, $f0
/* 21AF4 80032B94 4600603C */  c.lt.s  $f12, $f0
.L80032B98:
/* 21AF8 80032B98 00000000 */  nop
/* 21AFC 80032B9C 45020003 */  bc1fl   .L80032BAC
/* 21B00 80032BA0 46161081 */  sub.s   $f2, $f2, $f22
/* 21B04 80032BA4 46000306 */  mov.s   $f12, $f0
.L80032BA8:
/* 21B08 80032BA8 46161081 */  sub.s   $f2, $f2, $f22
.L80032BAC:
/* 21B0C 80032BAC C7B000BC */  lwc1    $f16, 0x00BC($sp)
/* 21B10 80032BB0 46166300 */  add.s   $f12, $f12, $f22
/* 21B14 80032BB4 4602803C */  c.lt.s  $f16, $f2
/* 21B18 80032BB8 00000000 */  nop
/* 21B1C 80032BBC 45030008 */  bc1tl   .L80032BE0
/* 21B20 80032BC0 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21B24 80032BC4 4610603C */  c.lt.s  $f12, $f16
/* 21B28 80032BC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 21B2C 80032BCC 8FAA0100 */  lw      $t2, 0x0100($sp)
/* 21B30 80032BD0 27AB00D8 */  addiu   $t3, $sp, 0x00D8           ## $t3 = FFFFFFF8
/* 21B34 80032BD4 45020009 */  bc1fl   .L80032BFC
/* 21B38 80032BD8 8D470004 */  lw      $a3, 0x0004($t2)           ## 00000004
/* 21B3C 80032BDC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L80032BE0:
/* 21B40 80032BE0 5262003A */  beql    $s3, $v0, .L80032CCC
/* 21B44 80032BE4 8FB900EC */  lw      $t9, 0x00EC($sp)
/* 21B48 80032BE8 8E5913F8 */  lw      $t9, 0x13F8($s2)           ## 000013F8
/* 21B4C 80032BEC 00024080 */  sll     $t0, $v0,  2
/* 21B50 80032BF0 1000FF7C */  beq     $zero, $zero, .L800329E4
/* 21B54 80032BF4 03288821 */  addu    $s1, $t9, $t0
/* 21B58 80032BF8 8D470004 */  lw      $a3, 0x0004($t2)           ## 00000004
.L80032BFC:
/* 21B5C 80032BFC E7B20098 */  swc1    $f18, 0x0098($sp)
/* 21B60 80032C00 E7AE0078 */  swc1    $f14, 0x0078($sp)
/* 21B64 80032C04 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 21B68 80032C08 0C00AF02 */  jal     func_8002BC08
/* 21B6C 80032C0C 8FA600B4 */  lw      $a2, 0x00B4($sp)
/* 21B70 80032C10 C7AE0078 */  lwc1    $f14, 0x0078($sp)
/* 21B74 80032C14 10400025 */  beq     $v0, $zero, .L80032CAC
/* 21B78 80032C18 C7B20098 */  lwc1    $f18, 0x0098($sp)
/* 21B7C 80032C1C C7B000BC */  lwc1    $f16, 0x00BC($sp)
/* 21B80 80032C20 4612B203 */  div.s   $f8, $f22, $f18
/* 21B84 80032C24 C7A400D8 */  lwc1    $f4, 0x00D8($sp)
/* 21B88 80032C28 46102081 */  sub.s   $f2, $f4, $f16
/* 21B8C 80032C2C C7B000C0 */  lwc1    $f16, 0x00C0($sp)
/* 21B90 80032C30 46001005 */  abs.s   $f0, $f2
/* 21B94 80032C34 4608003E */  c.le.s  $f0, $f8
/* 21B98 80032C38 00000000 */  nop
/* 21B9C 80032C3C 4502001C */  bc1fl   .L80032CB0
/* 21BA0 80032C40 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21BA4 80032C44 46101282 */  mul.s   $f10, $f2, $f16
/* 21BA8 80032C48 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 21BAC 80032C4C 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 21BB0 80032C50 C7AC00C8 */  lwc1    $f12, 0x00C8($sp)
/* 21BB4 80032C54 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 21BB8 80032C58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 21BBC 80032C5C 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFD4
/* 21BC0 80032C60 4606503E */  c.le.s  $f10, $f6
/* 21BC4 80032C64 27A700BC */  addiu   $a3, $sp, 0x00BC           ## $a3 = FFFFFFDC
/* 21BC8 80032C68 45020011 */  bc1fl   .L80032CB0
/* 21BCC 80032C6C 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21BD0 80032C70 C7A400C4 */  lwc1    $f4, 0x00C4($sp)
/* 21BD4 80032C74 8FA900F8 */  lw      $t1, 0x00F8($sp)
/* 21BD8 80032C78 E7AC0010 */  swc1    $f12, 0x0010($sp)
/* 21BDC 80032C7C E7B00018 */  swc1    $f16, 0x0018($sp)
/* 21BE0 80032C80 E7AE001C */  swc1    $f14, 0x001C($sp)
/* 21BE4 80032C84 E7B80020 */  swc1    $f24, 0x0020($sp)
/* 21BE8 80032C88 E7B60024 */  swc1    $f22, 0x0024($sp)
/* 21BEC 80032C8C 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
/* 21BF0 80032C90 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 21BF4 80032C94 0C00B199 */  jal     func_8002C664
/* 21BF8 80032C98 AFA90028 */  sw      $t1, 0x0028($sp)
/* 21BFC 80032C9C 10400003 */  beq     $v0, $zero, .L80032CAC
/* 21C00 80032CA0 8FAC0108 */  lw      $t4, 0x0108($sp)
/* 21C04 80032CA4 8FAD00FC */  lw      $t5, 0x00FC($sp)
/* 21C08 80032CA8 ADAC0000 */  sw      $t4, 0x0000($t5)           ## 00000000
.L80032CAC:
/* 21C0C 80032CAC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L80032CB0:
/* 21C10 80032CB0 52620006 */  beql    $s3, $v0, .L80032CCC
/* 21C14 80032CB4 8FB900EC */  lw      $t9, 0x00EC($sp)
/* 21C18 80032CB8 8E4E13F8 */  lw      $t6, 0x13F8($s2)           ## 000013F8
/* 21C1C 80032CBC 00027880 */  sll     $t7, $v0,  2
/* 21C20 80032CC0 1000FF48 */  beq     $zero, $zero, .L800329E4
/* 21C24 80032CC4 01CF8821 */  addu    $s1, $t6, $t7
/* 21C28 80032CC8 8FB900EC */  lw      $t9, 0x00EC($sp)
.L80032CCC:
/* 21C2C 80032CCC 8E5813F8 */  lw      $t8, 0x13F8($s2)           ## 000013F8
/* 21C30 80032CD0 97280000 */  lhu     $t0, 0x0000($t9)           ## 00000000
/* 21C34 80032CD4 00085080 */  sll     $t2, $t0,  2
/* 21C38 80032CD8 030A8821 */  addu    $s1, $t8, $t2
.L80032CDC:
/* 21C3C 80032CDC 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 21C40 80032CE0 8E4B13F0 */  lw      $t3, 0x13F0($s2)           ## 000013F0
/* 21C44 80032CE4 27A500C8 */  addiu   $a1, $sp, 0x00C8           ## $a1 = FFFFFFE8
/* 21C48 80032CE8 00024900 */  sll     $t1, $v0,  4
/* 21C4C 80032CEC 01698021 */  addu    $s0, $t3, $t1
/* 21C50 80032CF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 21C54 80032CF4 27A600C4 */  addiu   $a2, $sp, 0x00C4           ## $a2 = FFFFFFE4
/* 21C58 80032CF8 0C00AD84 */  jal     func_8002B610
/* 21C5C 80032CFC 27A700C0 */  addiu   $a3, $sp, 0x00C0           ## $a3 = FFFFFFE0
/* 21C60 80032D00 C7AC00C8 */  lwc1    $f12, 0x00C8($sp)
/* 21C64 80032D04 C7AA00C0 */  lwc1    $f10, 0x00C0($sp)
/* 21C68 80032D08 860C000E */  lh      $t4, 0x000E($s0)           ## 0000000E
/* 21C6C 80032D0C 460C6182 */  mul.s   $f6, $f12, $f12
/* 21C70 80032D10 44065000 */  mfc1    $a2, $f10
/* 21C74 80032D14 AFB40010 */  sw      $s4, 0x0010($sp)
/* 21C78 80032D18 460A5102 */  mul.s   $f4, $f10, $f10
/* 21C7C 80032D1C C7AE00C4 */  lwc1    $f14, 0x00C4($sp)
/* 21C80 80032D20 46043000 */  add.s   $f0, $f6, $f4
/* 21C84 80032D24 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 21C88 80032D28 00000000 */  nop
/* 21C8C 80032D2C 468031A0 */  cvt.s.w $f6, $f6
/* 21C90 80032D30 46000504 */  sqrt.s  $f20, $f0
/* 21C94 80032D34 44073000 */  mfc1    $a3, $f6
/* 21C98 80032D38 0C029A69 */  jal     func_800A69A4
/* 21C9C 80032D3C 00000000 */  nop
/* 21CA0 80032D40 46000606 */  mov.s   $f24, $f0
/* 21CA4 80032D44 46000005 */  abs.s   $f0, $f0
/* 21CA8 80032D48 97AD00E6 */  lhu     $t5, 0x00E6($sp)
/* 21CAC 80032D4C 4600B03C */  c.lt.s  $f22, $f0
/* 21CB0 80032D50 00000000 */  nop
/* 21CB4 80032D54 45030008 */  bc1tl   .L80032D78
/* 21CB8 80032D58 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21CBC 80032D5C 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 21CC0 80032D60 31AE0007 */  andi    $t6, $t5, 0x0007           ## $t6 = 00000000
/* 21CC4 80032D64 000E7B40 */  sll     $t7, $t6, 13
/* 21CC8 80032D68 004FC824 */  and     $t9, $v0, $t7
/* 21CCC 80032D6C 13200008 */  beq     $t9, $zero, .L80032D90
/* 21CD0 80032D70 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 21CD4 80032D74 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L80032D78:
/* 21CD8 80032D78 52620091 */  beql    $s3, $v0, .L80032FC0
/* 21CDC 80032D7C C7AA00B4 */  lwc1    $f10, 0x00B4($sp)
/* 21CE0 80032D80 8E4813F8 */  lw      $t0, 0x13F8($s2)           ## 000013F8
/* 21CE4 80032D84 0002C080 */  sll     $t8, $v0,  2
/* 21CE8 80032D88 1000FFD4 */  beq     $zero, $zero, .L80032CDC
/* 21CEC 80032D8C 01188821 */  addu    $s1, $t0, $t8
.L80032D90:
/* 21CF0 80032D90 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 21CF4 80032D94 C7AC00C8 */  lwc1    $f12, 0x00C8($sp)
/* 21CF8 80032D98 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 21CFC 80032D9C 46142383 */  div.s   $f14, $f4, $f20
/* 21D00 80032DA0 C4286AE0 */  lwc1    $f8, 0x6AE0($at)           ## 80106AE0
/* 21D04 80032DA4 30491FFF */  andi    $t1, $v0, 0x1FFF           ## $t1 = 00000000
/* 21D08 80032DA8 46006005 */  abs.s   $f0, $f12
/* 21D0C 80032DAC 460E0482 */  mul.s   $f18, $f0, $f14
/* 21D10 80032DB0 4608903C */  c.lt.s  $f18, $f8
/* 21D14 80032DB4 00000000 */  nop
/* 21D18 80032DB8 45000008 */  bc1f    .L80032DDC
/* 21D1C 80032DBC 00000000 */  nop
/* 21D20 80032DC0 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21D24 80032DC4 5262007E */  beql    $s3, $v0, .L80032FC0
/* 21D28 80032DC8 C7AA00B4 */  lwc1    $f10, 0x00B4($sp)
/* 21D2C 80032DCC 8E4A13F8 */  lw      $t2, 0x13F8($s2)           ## 000013F8
/* 21D30 80032DD0 00025880 */  sll     $t3, $v0,  2
/* 21D34 80032DD4 1000FFC1 */  beq     $zero, $zero, .L80032CDC
/* 21D38 80032DD8 014B8821 */  addu    $s1, $t2, $t3
.L80032DDC:
/* 21D3C 80032DDC 01350019 */  multu   $t1, $s5
/* 21D40 80032DE0 960F0004 */  lhu     $t7, 0x0004($s0)           ## 00000004
/* 21D44 80032DE4 8E4513F4 */  lw      $a1, 0x13F4($s2)           ## 000013F4
/* 21D48 80032DE8 31F91FFF */  andi    $t9, $t7, 0x1FFF           ## $t9 = 00000000
/* 21D4C 80032DEC 00006012 */  mflo    $t4
/* 21D50 80032DF0 00AC6821 */  addu    $t5, $a1, $t4
/* 21D54 80032DF4 85AE0000 */  lh      $t6, 0x0000($t5)           ## 00000000
/* 21D58 80032DF8 03350019 */  multu   $t9, $s5
/* 21D5C 80032DFC 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 21D60 80032E00 00000000 */  nop
/* 21D64 80032E04 46805320 */  cvt.s.w $f12, $f10
/* 21D68 80032E08 00004012 */  mflo    $t0
/* 21D6C 80032E0C 00A8C021 */  addu    $t8, $a1, $t0
/* 21D70 80032E10 870A0000 */  lh      $t2, 0x0000($t8)           ## 00000000
/* 21D74 80032E14 46006086 */  mov.s   $f2, $f12
/* 21D78 80032E18 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 21D7C 80032E1C 00000000 */  nop
/* 21D80 80032E20 46803020 */  cvt.s.w $f0, $f6
/* 21D84 80032E24 4602003C */  c.lt.s  $f0, $f2
/* 21D88 80032E28 00000000 */  nop
/* 21D8C 80032E2C 45020004 */  bc1fl   .L80032E40
/* 21D90 80032E30 4600603C */  c.lt.s  $f12, $f0
/* 21D94 80032E34 10000006 */  beq     $zero, $zero, .L80032E50
/* 21D98 80032E38 46000086 */  mov.s   $f2, $f0
/* 21D9C 80032E3C 4600603C */  c.lt.s  $f12, $f0
.L80032E40:
/* 21DA0 80032E40 00000000 */  nop
/* 21DA4 80032E44 45020003 */  bc1fl   .L80032E54
/* 21DA8 80032E48 960B0006 */  lhu     $t3, 0x0006($s0)           ## 00000006
/* 21DAC 80032E4C 46000306 */  mov.s   $f12, $f0
.L80032E50:
/* 21DB0 80032E50 960B0006 */  lhu     $t3, 0x0006($s0)           ## 00000006
.L80032E54:
/* 21DB4 80032E54 000B4880 */  sll     $t1, $t3,  2
/* 21DB8 80032E58 012B4823 */  subu    $t1, $t1, $t3
/* 21DBC 80032E5C 00094840 */  sll     $t1, $t1,  1
/* 21DC0 80032E60 00A96021 */  addu    $t4, $a1, $t1
/* 21DC4 80032E64 858D0000 */  lh      $t5, 0x0000($t4)           ## 00000000
/* 21DC8 80032E68 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 21DCC 80032E6C 00000000 */  nop
/* 21DD0 80032E70 46802020 */  cvt.s.w $f0, $f4
/* 21DD4 80032E74 4602003C */  c.lt.s  $f0, $f2
/* 21DD8 80032E78 00000000 */  nop
/* 21DDC 80032E7C 45020004 */  bc1fl   .L80032E90
/* 21DE0 80032E80 4600603C */  c.lt.s  $f12, $f0
/* 21DE4 80032E84 10000006 */  beq     $zero, $zero, .L80032EA0
/* 21DE8 80032E88 46000086 */  mov.s   $f2, $f0
/* 21DEC 80032E8C 4600603C */  c.lt.s  $f12, $f0
.L80032E90:
/* 21DF0 80032E90 00000000 */  nop
/* 21DF4 80032E94 45020003 */  bc1fl   .L80032EA4
/* 21DF8 80032E98 46161081 */  sub.s   $f2, $f2, $f22
/* 21DFC 80032E9C 46000306 */  mov.s   $f12, $f0
.L80032EA0:
/* 21E00 80032EA0 46161081 */  sub.s   $f2, $f2, $f22
.L80032EA4:
/* 21E04 80032EA4 C7B000B4 */  lwc1    $f16, 0x00B4($sp)
/* 21E08 80032EA8 46166300 */  add.s   $f12, $f12, $f22
/* 21E0C 80032EAC 4602803C */  c.lt.s  $f16, $f2
/* 21E10 80032EB0 00000000 */  nop
/* 21E14 80032EB4 45030008 */  bc1tl   .L80032ED8
/* 21E18 80032EB8 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21E1C 80032EBC 4610603C */  c.lt.s  $f12, $f16
/* 21E20 80032EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 21E24 80032EC4 8FB90100 */  lw      $t9, 0x0100($sp)
/* 21E28 80032EC8 8FA700BC */  lw      $a3, 0x00BC($sp)
/* 21E2C 80032ECC 45000008 */  bc1f    .L80032EF0
/* 21E30 80032ED0 27A800D8 */  addiu   $t0, $sp, 0x00D8           ## $t0 = FFFFFFF8
/* 21E34 80032ED4 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L80032ED8:
/* 21E38 80032ED8 52620039 */  beql    $s3, $v0, .L80032FC0
/* 21E3C 80032EDC C7AA00B4 */  lwc1    $f10, 0x00B4($sp)
/* 21E40 80032EE0 8E4E13F8 */  lw      $t6, 0x13F8($s2)           ## 000013F8
/* 21E44 80032EE4 00027880 */  sll     $t7, $v0,  2
/* 21E48 80032EE8 1000FF7C */  beq     $zero, $zero, .L80032CDC
/* 21E4C 80032EEC 01CF8821 */  addu    $s1, $t6, $t7
.L80032EF0:
/* 21E50 80032EF0 8F260004 */  lw      $a2, 0x0004($t9)           ## 00000004
/* 21E54 80032EF4 E7B20098 */  swc1    $f18, 0x0098($sp)
/* 21E58 80032EF8 E7AE0078 */  swc1    $f14, 0x0078($sp)
/* 21E5C 80032EFC 0C00AED9 */  jal     func_8002BB64
/* 21E60 80032F00 AFA80010 */  sw      $t0, 0x0010($sp)
/* 21E64 80032F04 C7AE0078 */  lwc1    $f14, 0x0078($sp)
/* 21E68 80032F08 10400025 */  beq     $v0, $zero, .L80032FA0
/* 21E6C 80032F0C C7B20098 */  lwc1    $f18, 0x0098($sp)
/* 21E70 80032F10 C7B000B4 */  lwc1    $f16, 0x00B4($sp)
/* 21E74 80032F14 4612B283 */  div.s   $f10, $f22, $f18
/* 21E78 80032F18 C7A800D8 */  lwc1    $f8, 0x00D8($sp)
/* 21E7C 80032F1C C7AC00C8 */  lwc1    $f12, 0x00C8($sp)
/* 21E80 80032F20 46104081 */  sub.s   $f2, $f8, $f16
/* 21E84 80032F24 46001005 */  abs.s   $f0, $f2
/* 21E88 80032F28 460A003E */  c.le.s  $f0, $f10
/* 21E8C 80032F2C 00000000 */  nop
/* 21E90 80032F30 4502001C */  bc1fl   .L80032FA4
/* 21E94 80032F34 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21E98 80032F38 460C1102 */  mul.s   $f4, $f2, $f12
/* 21E9C 80032F3C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 21EA0 80032F40 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 21EA4 80032F44 C7B000C0 */  lwc1    $f16, 0x00C0($sp)
/* 21EA8 80032F48 8FA400E0 */  lw      $a0, 0x00E0($sp)
/* 21EAC 80032F4C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 21EB0 80032F50 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFD4
/* 21EB4 80032F54 4606203E */  c.le.s  $f4, $f6
/* 21EB8 80032F58 27A700BC */  addiu   $a3, $sp, 0x00BC           ## $a3 = FFFFFFDC
/* 21EBC 80032F5C 45020011 */  bc1fl   .L80032FA4
/* 21EC0 80032F60 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 21EC4 80032F64 C7A800C4 */  lwc1    $f8, 0x00C4($sp)
/* 21EC8 80032F68 8FB800F8 */  lw      $t8, 0x00F8($sp)
/* 21ECC 80032F6C E7AC0010 */  swc1    $f12, 0x0010($sp)
/* 21ED0 80032F70 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 21ED4 80032F74 E7AE001C */  swc1    $f14, 0x001C($sp)
/* 21ED8 80032F78 E7B80020 */  swc1    $f24, 0x0020($sp)
/* 21EDC 80032F7C E7B60024 */  swc1    $f22, 0x0024($sp)
/* 21EE0 80032F80 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
/* 21EE4 80032F84 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 21EE8 80032F88 0C00B199 */  jal     func_8002C664
/* 21EEC 80032F8C AFB80028 */  sw      $t8, 0x0028($sp)
/* 21EF0 80032F90 10400003 */  beq     $v0, $zero, .L80032FA0
/* 21EF4 80032F94 8FAA0108 */  lw      $t2, 0x0108($sp)
/* 21EF8 80032F98 8FAB00FC */  lw      $t3, 0x00FC($sp)
/* 21EFC 80032F9C AD6A0000 */  sw      $t2, 0x0000($t3)           ## 00000000
.L80032FA0:
/* 21F00 80032FA0 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L80032FA4:
/* 21F04 80032FA4 52620006 */  beql    $s3, $v0, .L80032FC0
/* 21F08 80032FA8 C7AA00B4 */  lwc1    $f10, 0x00B4($sp)
/* 21F0C 80032FAC 8E4913F8 */  lw      $t1, 0x13F8($s2)           ## 000013F8
/* 21F10 80032FB0 00026080 */  sll     $t4, $v0,  2
/* 21F14 80032FB4 1000FF49 */  beq     $zero, $zero, .L80032CDC
/* 21F18 80032FB8 012C8821 */  addu    $s1, $t1, $t4
/* 21F1C 80032FBC C7AA00B4 */  lwc1    $f10, 0x00B4($sp)
.L80032FC0:
/* 21F20 80032FC0 8FAD00F0 */  lw      $t5, 0x00F0($sp)
/* 21F24 80032FC4 02C01025 */  or      $v0, $s6, $zero            ## $v0 = 00000001
/* 21F28 80032FC8 E5AA0000 */  swc1    $f10, 0x0000($t5)          ## 00000000
/* 21F2C 80032FCC 8FAE00F4 */  lw      $t6, 0x00F4($sp)
/* 21F30 80032FD0 C7A600BC */  lwc1    $f6, 0x00BC($sp)
/* 21F34 80032FD4 E5C60000 */  swc1    $f6, 0x0000($t6)           ## 00000000
.L80032FD8:
/* 21F38 80032FD8 8FBF006C */  lw      $ra, 0x006C($sp)
/* 21F3C 80032FDC D7B40038 */  ldc1    $f20, 0x0038($sp)
/* 21F40 80032FE0 D7B60040 */  ldc1    $f22, 0x0040($sp)
/* 21F44 80032FE4 D7B80048 */  ldc1    $f24, 0x0048($sp)
/* 21F48 80032FE8 8FB00050 */  lw      $s0, 0x0050($sp)
/* 21F4C 80032FEC 8FB10054 */  lw      $s1, 0x0054($sp)
/* 21F50 80032FF0 8FB20058 */  lw      $s2, 0x0058($sp)
/* 21F54 80032FF4 8FB3005C */  lw      $s3, 0x005C($sp)
/* 21F58 80032FF8 8FB40060 */  lw      $s4, 0x0060($sp)
/* 21F5C 80032FFC 8FB50064 */  lw      $s5, 0x0064($sp)
/* 21F60 80033000 8FB60068 */  lw      $s6, 0x0068($sp)
/* 21F64 80033004 03E00008 */  jr      $ra
/* 21F68 80033008 27BD00E0 */  addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


glabel func_8003300C
/* 21F6C 8003300C 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 21F70 80033010 AFBE0060 */  sw      $s8, 0x0060($sp)
/* 21F74 80033014 AFB7005C */  sw      $s7, 0x005C($sp)
/* 21F78 80033018 AFB50054 */  sw      $s5, 0x0054($sp)
/* 21F7C 8003301C 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 21F80 80033020 00C0B825 */  or      $s7, $a2, $zero            ## $s7 = 00000000
/* 21F84 80033024 00E0F025 */  or      $s8, $a3, $zero            ## $s8 = 00000000
/* 21F88 80033028 AFBF0064 */  sw      $ra, 0x0064($sp)
/* 21F8C 8003302C AFB60058 */  sw      $s6, 0x0058($sp)
/* 21F90 80033030 AFB40050 */  sw      $s4, 0x0050($sp)
/* 21F94 80033034 AFB3004C */  sw      $s3, 0x004C($sp)
/* 21F98 80033038 AFB20048 */  sw      $s2, 0x0048($sp)
/* 21F9C 8003303C AFB10044 */  sw      $s1, 0x0044($sp)
/* 21FA0 80033040 AFB00040 */  sw      $s0, 0x0040($sp)
/* 21FA4 80033044 F7B40038 */  sdc1    $f20, 0x0038($sp)
/* 21FA8 80033048 AFA500A4 */  sw      $a1, 0x00A4($sp)
/* 21FAC 8003304C 8FAF00B0 */  lw      $t7, 0x00B0($sp)
/* 21FB0 80033050 AFA00090 */  sw      $zero, 0x0090($sp)
/* 21FB4 80033054 27AE0094 */  addiu   $t6, $sp, 0x0094           ## $t6 = FFFFFFF4
/* 21FB8 80033058 8DF90000 */  lw      $t9, 0x0000($t7)           ## 00000000
/* 21FBC 8003305C 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 21FC0 80033060 02A0B025 */  or      $s6, $s5, $zero            ## $s6 = 00000000
/* 21FC4 80033064 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 21FC8 80033068 8DF80004 */  lw      $t8, 0x0004($t7)           ## 00000004
/* 21FCC 8003306C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 21FD0 80033070 8DF90008 */  lw      $t9, 0x0008($t7)           ## 00000008
/* 21FD4 80033074 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 21FD8 80033078 C7B400B4 */  lwc1    $f20, 0x00B4($sp)
.L8003307C:
/* 21FDC 8003307C 96C813DC */  lhu     $t0, 0x13DC($s6)           ## 000013DC
/* 21FE0 80033080 00141080 */  sll     $v0, $s4,  2
/* 21FE4 80033084 00541023 */  subu    $v0, $v0, $s4
/* 21FE8 80033088 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 21FEC 8003308C 1120005C */  beq     $t1, $zero, .L80033200
/* 21FF0 80033090 000210C0 */  sll     $v0, $v0,  3
/* 21FF4 80033094 00541021 */  addu    $v0, $v0, $s4
/* 21FF8 80033098 00021080 */  sll     $v0, $v0,  2
/* 21FFC 8003309C 02A29821 */  addu    $s3, $s5, $v0
/* 22000 800330A0 8E6B0054 */  lw      $t3, 0x0054($s3)           ## 00000054
/* 22004 800330A4 8FAA00C0 */  lw      $t2, 0x00C0($sp)
/* 22008 800330A8 02A21821 */  addu    $v1, $s5, $v0
/* 2200C 800330AC C7A40098 */  lwc1    $f4, 0x0098($sp)
/* 22010 800330B0 514B0054 */  beql    $t2, $t3, .L80033204
/* 22014 800330B4 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 22018 800330B8 C46600B0 */  lwc1    $f6, 0x00B0($v1)           ## 000000B0
/* 2201C 800330BC 24700054 */  addiu   $s0, $v1, 0x0054           ## $s0 = 00000054
/* 22020 800330C0 4606203C */  c.lt.s  $f4, $f6
/* 22024 800330C4 00000000 */  nop
/* 22028 800330C8 4503004E */  bc1tl   .L80033204
/* 2202C 800330CC 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000002
/* 22030 800330D0 C6080060 */  lwc1    $f8, 0x0060($s0)           ## 000000B4
/* 22034 800330D4 4604403C */  c.lt.s  $f8, $f4
/* 22038 800330D8 00000000 */  nop
/* 2203C 800330DC 45030049 */  bc1tl   .L80033204
/* 22040 800330E0 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000003
/* 22044 800330E4 4600A28D */  trunc.w.s $f10, $f20
/* 22048 800330E8 860D005A */  lh      $t5, 0x005A($s0)           ## 000000AE
/* 2204C 800330EC 860F0054 */  lh      $t7, 0x0054($s0)           ## 000000A8
/* 22050 800330F0 86180058 */  lh      $t8, 0x0058($s0)           ## 000000AC
/* 22054 800330F4 44125000 */  mfc1    $s2, $f10
/* 22058 800330F8 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 2205C 800330FC 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 22060 80033100 00129400 */  sll     $s2, $s2, 16
/* 22064 80033104 00129403 */  sra     $s2, $s2, 16
/* 22068 80033108 01B27021 */  addu    $t6, $t5, $s2
/* 2206C 8003310C A60E005A */  sh      $t6, 0x005A($s0)           ## 000000AE
/* 22070 80033110 8602005A */  lh      $v0, 0x005A($s0)           ## 000000AE
/* 22074 80033114 468091A0 */  cvt.s.w $f6, $f18
/* 22078 80033118 C7A80094 */  lwc1    $f8, 0x0094($sp)
/* 2207C 8003311C 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 22080 80033120 26110054 */  addiu   $s1, $s0, 0x0054           ## $s1 = 000000A8
/* 22084 80033124 02202025 */  or      $a0, $s1, $zero            ## $a0 = 000000A8
/* 22088 80033128 46808020 */  cvt.s.w $f0, $f16
/* 2208C 8003312C C7B0009C */  lwc1    $f16, 0x009C($sp)
/* 22090 80033130 468022A0 */  cvt.s.w $f10, $f4
/* 22094 80033134 46000482 */  mul.s   $f18, $f0, $f0
/* 22098 80033138 46083081 */  sub.s   $f2, $f6, $f8
/* 2209C 8003313C 46105301 */  sub.s   $f12, $f10, $f16
/* 220A0 80033140 46021182 */  mul.s   $f6, $f2, $f2
/* 220A4 80033144 00000000 */  nop
/* 220A8 80033148 460C6102 */  mul.s   $f4, $f12, $f12
/* 220AC 8003314C 46043280 */  add.s   $f10, $f6, $f4
/* 220B0 80033150 460A903C */  c.lt.s  $f18, $f10
/* 220B4 80033154 00000000 */  nop
/* 220B8 80033158 4501000C */  bc1t    .L8003318C
/* 220BC 8003315C 00000000 */  nop
/* 220C0 80033160 44054000 */  mfc1    $a1, $f8
/* 220C4 80033164 0C02A8E5 */  jal     func_800AA394
/* 220C8 80033168 8FA60098 */  lw      $a2, 0x0098($sp)
/* 220CC 8003316C 1440000A */  bne     $v0, $zero, .L80033198
/* 220D0 80033170 02202025 */  or      $a0, $s1, $zero            ## $a0 = 000000A8
/* 220D4 80033174 8FA50098 */  lw      $a1, 0x0098($sp)
/* 220D8 80033178 0C02A902 */  jal     func_800AA408
/* 220DC 8003317C 8FA6009C */  lw      $a2, 0x009C($sp)
/* 220E0 80033180 54400006 */  bnel    $v0, $zero, .L8003319C
/* 220E4 80033184 8608005A */  lh      $t0, 0x005A($s0)           ## 000000AE
/* 220E8 80033188 8602005A */  lh      $v0, 0x005A($s0)           ## 000000AE
.L8003318C:
/* 220EC 8003318C 0052C823 */  subu    $t9, $v0, $s2
/* 220F0 80033190 1000001B */  beq     $zero, $zero, .L80033200
/* 220F4 80033194 A619005A */  sh      $t9, 0x005A($s0)           ## 000000AE
.L80033198:
/* 220F8 80033198 8608005A */  lh      $t0, 0x005A($s0)           ## 000000AE
.L8003319C:
/* 220FC 8003319C 27AC0094 */  addiu   $t4, $sp, 0x0094           ## $t4 = FFFFFFF4
/* 22100 800331A0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 22104 800331A4 01124823 */  subu    $t1, $t0, $s2
/* 22108 800331A8 A609005A */  sh      $t1, 0x005A($s0)           ## 000000AE
/* 2210C 800331AC 8FAB00BC */  lw      $t3, 0x00BC($sp)
/* 22110 800331B0 8FAA00B8 */  lw      $t2, 0x00B8($sp)
/* 22114 800331B4 AFB40028 */  sw      $s4, 0x0028($sp)
/* 22118 800331B8 E7B40024 */  swc1    $f20, 0x0024($sp)
/* 2211C 800331BC AFAC0020 */  sw      $t4, 0x0020($sp)
/* 22120 800331C0 AFBE0014 */  sw      $s8, 0x0014($sp)
/* 22124 800331C4 AFB70010 */  sw      $s7, 0x0010($sp)
/* 22128 800331C8 97A500A6 */  lhu     $a1, 0x00A6($sp)
/* 2212C 800331CC 26A60050 */  addiu   $a2, $s5, 0x0050           ## $a2 = 00000050
/* 22130 800331D0 26670060 */  addiu   $a3, $s3, 0x0060           ## $a3 = 00000060
/* 22134 800331D4 AFAB001C */  sw      $t3, 0x001C($sp)
/* 22138 800331D8 0C00CA52 */  jal     func_80032948
/* 2213C 800331DC AFAA0018 */  sw      $t2, 0x0018($sp)
/* 22140 800331E0 50400008 */  beql    $v0, $zero, .L80033204
/* 22144 800331E4 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000004
/* 22148 800331E8 C6F00000 */  lwc1    $f16, 0x0000($s7)          ## 00000000
/* 2214C 800331EC 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 22150 800331F0 E7B00094 */  swc1    $f16, 0x0094($sp)
/* 22154 800331F4 C7C60000 */  lwc1    $f6, 0x0000($s8)           ## 00000000
/* 22158 800331F8 AFAD0090 */  sw      $t5, 0x0090($sp)
/* 2215C 800331FC E7A6009C */  swc1    $f6, 0x009C($sp)
.L80033200:
/* 22160 80033200 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000005
.L80033204:
/* 22164 80033204 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 22168 80033208 1681FF9C */  bne     $s4, $at, .L8003307C
/* 2216C 8003320C 26D60002 */  addiu   $s6, $s6, 0x0002           ## $s6 = 00000002
/* 22170 80033210 8FA20090 */  lw      $v0, 0x0090($sp)
/* 22174 80033214 8FBF0064 */  lw      $ra, 0x0064($sp)
/* 22178 80033218 D7B40038 */  ldc1    $f20, 0x0038($sp)
/* 2217C 8003321C 8FB00040 */  lw      $s0, 0x0040($sp)
/* 22180 80033220 8FB10044 */  lw      $s1, 0x0044($sp)
/* 22184 80033224 8FB20048 */  lw      $s2, 0x0048($sp)
/* 22188 80033228 8FB3004C */  lw      $s3, 0x004C($sp)
/* 2218C 8003322C 8FB40050 */  lw      $s4, 0x0050($sp)
/* 22190 80033230 8FB50054 */  lw      $s5, 0x0054($sp)
/* 22194 80033234 8FB60058 */  lw      $s6, 0x0058($sp)
/* 22198 80033238 8FB7005C */  lw      $s7, 0x005C($sp)
/* 2219C 8003323C 8FBE0060 */  lw      $s8, 0x0060($sp)
/* 221A0 80033240 03E00008 */  jr      $ra
/* 221A4 80033244 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


glabel func_80033248
/* 221A8 80033248 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 221AC 8003324C AFB3004C */  sw      $s3, 0x004C($sp)
/* 221B0 80033250 AFB20048 */  sw      $s2, 0x0048($sp)
/* 221B4 80033254 AFA500B4 */  sw      $a1, 0x00B4($sp)
/* 221B8 80033258 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 221BC 8003325C 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 221C0 80033260 3413FFFF */  ori     $s3, $zero, 0xFFFF         ## $s3 = 0000FFFF
/* 221C4 80033264 AFBF0064 */  sw      $ra, 0x0064($sp)
/* 221C8 80033268 AFBE0060 */  sw      $s8, 0x0060($sp)
/* 221CC 8003326C AFB7005C */  sw      $s7, 0x005C($sp)
/* 221D0 80033270 AFB60058 */  sw      $s6, 0x0058($sp)
/* 221D4 80033274 AFB50054 */  sw      $s5, 0x0054($sp)
/* 221D8 80033278 AFB40050 */  sw      $s4, 0x0050($sp)
/* 221DC 8003327C AFB10044 */  sw      $s1, 0x0044($sp)
/* 221E0 80033280 AFB00040 */  sw      $s0, 0x0040($sp)
/* 221E4 80033284 F7BA0038 */  sdc1    $f26, 0x0038($sp)
/* 221E8 80033288 F7B80030 */  sdc1    $f24, 0x0030($sp)
/* 221EC 8003328C F7B60028 */  sdc1    $f22, 0x0028($sp)
/* 221F0 80033290 F7B40020 */  sdc1    $f20, 0x0020($sp)
/* 221F4 80033294 AFA400B0 */  sw      $a0, 0x00B0($sp)
/* 221F8 80033298 AFA00080 */  sw      $zero, 0x0080($sp)
/* 221FC 8003329C 94E20000 */  lhu     $v0, 0x0000($a3)           ## 00000000
/* 22200 800332A0 27B60098 */  addiu   $s6, $sp, 0x0098           ## $s6 = FFFFFFE8
/* 22204 800332A4 8FB800C4 */  lw      $t8, 0x00C4($sp)
/* 22208 800332A8 16620003 */  bne     $s3, $v0, .L800332B8
/* 2220C 800332AC 00027880 */  sll     $t7, $v0,  2
/* 22210 800332B0 1000006C */  beq     $zero, $zero, .L80033464
/* 22214 800332B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800332B8:
/* 22218 800332B8 8F080000 */  lw      $t0, 0x0000($t8)           ## 00000000
/* 2221C 800332BC 8E4E13F8 */  lw      $t6, 0x13F8($s2)           ## 000013F8
/* 22220 800332C0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 22224 800332C4 AEC80000 */  sw      $t0, 0x0000($s6)           ## FFFFFFE8
/* 22228 800332C8 8F190004 */  lw      $t9, 0x0004($t8)           ## 00000004
/* 2222C 800332CC 4481D000 */  mtc1    $at, $f26                  ## $f26 = -1.00
/* 22230 800332D0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 22234 800332D4 AED90004 */  sw      $t9, 0x0004($s6)           ## FFFFFFEC
/* 22238 800332D8 8F080008 */  lw      $t0, 0x0008($t8)           ## 00000008
/* 2223C 800332DC 30B40007 */  andi    $s4, $a1, 0x0007           ## $s4 = 00000000
/* 22240 800332E0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 22244 800332E4 AEC80008 */  sw      $t0, 0x0008($s6)           ## FFFFFFF0
/* 22248 800332E8 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 2224C 800332EC 8FB500CC */  lw      $s5, 0x00CC($sp)
/* 22250 800332F0 C7B400C8 */  lwc1    $f20, 0x00C8($sp)
/* 22254 800332F4 8E4313F0 */  lw      $v1, 0x13F0($s2)           ## 000013F0
/* 22258 800332F8 0014A340 */  sll     $s4, $s4, 13
/* 2225C 800332FC 27BE0088 */  addiu   $s8, $sp, 0x0088           ## $s8 = FFFFFFD8
/* 22260 80033300 27B7008C */  addiu   $s7, $sp, 0x008C           ## $s7 = FFFFFFDC
/* 22264 80033304 01CF8821 */  addu    $s1, $t6, $t7
.L80033308:
/* 22268 80033308 86220000 */  lh      $v0, 0x0000($s1)           ## 00000000
/* 2226C 8003330C 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFDC
/* 22270 80033310 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFD8
/* 22274 80033314 00024900 */  sll     $t1, $v0,  4
/* 22278 80033318 00698021 */  addu    $s0, $v1, $t1
/* 2227C 8003331C 960A0002 */  lhu     $t2, 0x0002($s0)           ## 00000002
/* 22280 80033320 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 22284 80033324 01545824 */  and     $t3, $t2, $s4
/* 22288 80033328 11600008 */  beq     $t3, $zero, .L8003334C
/* 2228C 8003332C 00000000 */  nop
/* 22290 80033330 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 22294 80033334 52620048 */  beql    $s3, $v0, .L80033458
/* 22298 80033338 C7B2009C */  lwc1    $f18, 0x009C($sp)
/* 2229C 8003333C 8E4C13F8 */  lw      $t4, 0x13F8($s2)           ## 000013F8
/* 222A0 80033340 00026880 */  sll     $t5, $v0,  2
/* 222A4 80033344 1000FFF0 */  beq     $zero, $zero, .L80033308
/* 222A8 80033348 018D8821 */  addu    $s1, $t4, $t5
.L8003334C:
/* 222AC 8003334C 0C00AD84 */  jal     func_8002B610
/* 222B0 80033350 27A70084 */  addiu   $a3, $sp, 0x0084           ## $a3 = FFFFFFD4
/* 222B4 80033354 860E000E */  lh      $t6, 0x000E($s0)           ## 0000000E
/* 222B8 80033358 AFB60010 */  sw      $s6, 0x0010($sp)
/* 222BC 8003335C C7AC008C */  lwc1    $f12, 0x008C($sp)
/* 222C0 80033360 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 222C4 80033364 C7AE0088 */  lwc1    $f14, 0x0088($sp)
/* 222C8 80033368 8FA60084 */  lw      $a2, 0x0084($sp)
/* 222CC 8003336C 46802120 */  cvt.s.w $f4, $f4
/* 222D0 80033370 44072000 */  mfc1    $a3, $f4
/* 222D4 80033374 0C029A5B */  jal     func_800A696C
/* 222D8 80033378 00000000 */  nop
/* 222DC 8003337C 4600A03C */  c.lt.s  $f20, $f0
/* 222E0 80033380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 222E4 80033384 8FA60098 */  lw      $a2, 0x0098($sp)
/* 222E8 80033388 8FA700A0 */  lw      $a3, 0x00A0($sp)
/* 222EC 8003338C 45000008 */  bc1f    .L800333B0
/* 222F0 80033390 27B90094 */  addiu   $t9, $sp, 0x0094           ## $t9 = FFFFFFE4
/* 222F4 80033394 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 222F8 80033398 1262002E */  beq     $s3, $v0, .L80033454
/* 222FC 8003339C 0002C080 */  sll     $t8, $v0,  2
/* 22300 800333A0 8E4F13F8 */  lw      $t7, 0x13F8($s2)           ## 000013F8
/* 22304 800333A4 8E4313F0 */  lw      $v1, 0x13F0($s2)           ## 000013F0
/* 22308 800333A8 1000FFD7 */  beq     $zero, $zero, .L80033308
/* 2230C 800333AC 01F88821 */  addu    $s1, $t7, $t8
.L800333B0:
/* 22310 800333B0 8E4513F4 */  lw      $a1, 0x13F4($s2)           ## 000013F4
/* 22314 800333B4 0C00AEC9 */  jal     func_8002BB24
/* 22318 800333B8 AFB90010 */  sw      $t9, 0x0010($sp)
/* 2231C 800333BC 1040001E */  beq     $v0, $zero, .L80033438
/* 22320 800333C0 C7A20094 */  lwc1    $f2, 0x0094($sp)
/* 22324 800333C4 C7AC009C */  lwc1    $f12, 0x009C($sp)
/* 22328 800333C8 4602603C */  c.lt.s  $f12, $f2
/* 2232C 800333CC 00000000 */  nop
/* 22330 800333D0 4502001A */  bc1fl   .L8003343C
/* 22334 800333D4 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 22338 800333D8 460C1001 */  sub.s   $f0, $f2, $f12
/* 2233C 800333DC C7A20088 */  lwc1    $f2, 0x0088($sp)
/* 22340 800333E0 4614003C */  c.lt.s  $f0, $f20
/* 22344 800333E4 00000000 */  nop
/* 22348 800333E8 45020014 */  bc1fl   .L8003343C
/* 2234C 800333EC 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 22350 800333F0 46020182 */  mul.s   $f6, $f0, $f2
/* 22354 800333F4 4616303E */  c.le.s  $f6, $f22
/* 22358 800333F8 00000000 */  nop
/* 2235C 800333FC 4502000F */  bc1fl   .L8003343C
/* 22360 80033400 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
/* 22364 80033404 4602B03E */  c.le.s  $f22, $f2
/* 22368 80033408 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 2236C 8003340C AFA80080 */  sw      $t0, 0x0080($sp)
/* 22370 80033410 45020004 */  bc1fl   .L80033424
/* 22374 80033414 4600D006 */  mov.s   $f0, $f26
/* 22378 80033418 10000002 */  beq     $zero, $zero, .L80033424
/* 2237C 8003341C 4600C006 */  mov.s   $f0, $f24
/* 22380 80033420 4600D006 */  mov.s   $f0, $f26
.L80033424:
/* 22384 80033424 46140202 */  mul.s   $f8, $f0, $f20
/* 22388 80033428 C7AA0094 */  lwc1    $f10, 0x0094($sp)
/* 2238C 8003342C 460A4400 */  add.s   $f16, $f8, $f10
/* 22390 80033430 E7B0009C */  swc1    $f16, 0x009C($sp)
/* 22394 80033434 AEB00000 */  sw      $s0, 0x0000($s5)           ## 00000000
.L80033438:
/* 22398 80033438 96220002 */  lhu     $v0, 0x0002($s1)           ## 00000002
.L8003343C:
/* 2239C 8003343C 12620005 */  beq     $s3, $v0, .L80033454
/* 223A0 80033440 00025080 */  sll     $t2, $v0,  2
/* 223A4 80033444 8E4913F8 */  lw      $t1, 0x13F8($s2)           ## 000013F8
/* 223A8 80033448 8E4313F0 */  lw      $v1, 0x13F0($s2)           ## 000013F0
/* 223AC 8003344C 1000FFAE */  beq     $zero, $zero, .L80033308
/* 223B0 80033450 012A8821 */  addu    $s1, $t1, $t2
.L80033454:
/* 223B4 80033454 C7B2009C */  lwc1    $f18, 0x009C($sp)
.L80033458:
/* 223B8 80033458 8FAB00C0 */  lw      $t3, 0x00C0($sp)
/* 223BC 8003345C E5720000 */  swc1    $f18, 0x0000($t3)          ## 00000000
/* 223C0 80033460 8FA20080 */  lw      $v0, 0x0080($sp)
.L80033464:
/* 223C4 80033464 8FBF0064 */  lw      $ra, 0x0064($sp)
/* 223C8 80033468 D7B40020 */  ldc1    $f20, 0x0020($sp)
/* 223CC 8003346C D7B60028 */  ldc1    $f22, 0x0028($sp)
/* 223D0 80033470 D7B80030 */  ldc1    $f24, 0x0030($sp)
/* 223D4 80033474 D7BA0038 */  ldc1    $f26, 0x0038($sp)
/* 223D8 80033478 8FB00040 */  lw      $s0, 0x0040($sp)
/* 223DC 8003347C 8FB10044 */  lw      $s1, 0x0044($sp)
/* 223E0 80033480 8FB20048 */  lw      $s2, 0x0048($sp)
/* 223E4 80033484 8FB3004C */  lw      $s3, 0x004C($sp)
/* 223E8 80033488 8FB40050 */  lw      $s4, 0x0050($sp)
/* 223EC 8003348C 8FB50054 */  lw      $s5, 0x0054($sp)
/* 223F0 80033490 8FB60058 */  lw      $s6, 0x0058($sp)
/* 223F4 80033494 8FB7005C */  lw      $s7, 0x005C($sp)
/* 223F8 80033498 8FBE0060 */  lw      $s8, 0x0060($sp)
/* 223FC 8003349C 03E00008 */  jr      $ra
/* 22400 800334A0 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000


glabel func_800334A4
/* 22404 800334A4 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 22408 800334A8 AFB30044 */  sw      $s3, 0x0044($sp)
/* 2240C 800334AC AFB20040 */  sw      $s2, 0x0040($sp)
/* 22410 800334B0 F7B60030 */  sdc1    $f22, 0x0030($sp)
/* 22414 800334B4 C7B60090 */  lwc1    $f22, 0x0090($sp)
/* 22418 800334B8 00E09025 */  or      $s2, $a3, $zero            ## $s2 = 00000000
/* 2241C 800334BC 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 22420 800334C0 AFBF005C */  sw      $ra, 0x005C($sp)
/* 22424 800334C4 AFBE0058 */  sw      $s8, 0x0058($sp)
/* 22428 800334C8 AFB70054 */  sw      $s7, 0x0054($sp)
/* 2242C 800334CC AFB60050 */  sw      $s6, 0x0050($sp)
/* 22430 800334D0 AFB5004C */  sw      $s5, 0x004C($sp)
/* 22434 800334D4 AFB40048 */  sw      $s4, 0x0048($sp)
/* 22438 800334D8 AFB1003C */  sw      $s1, 0x003C($sp)
/* 2243C 800334DC AFB00038 */  sw      $s0, 0x0038($sp)
/* 22440 800334E0 F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 22444 800334E4 AFA50084 */  sw      $a1, 0x0084($sp)
/* 22448 800334E8 AFA60088 */  sw      $a2, 0x0088($sp)
/* 2244C 800334EC AFA00078 */  sw      $zero, 0x0078($sp)
/* 22450 800334F0 C6440004 */  lwc1    $f4, 0x0004($s2)           ## 00000004
/* 22454 800334F4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 22458 800334F8 0260A025 */  or      $s4, $s3, $zero            ## $s4 = 00000000
/* 2245C 800334FC 46162180 */  add.s   $f6, $f4, $f22
/* 22460 80033500 241E0032 */  addiu   $s8, $zero, 0x0032         ## $s8 = 00000032
/* 22464 80033504 8FB70098 */  lw      $s7, 0x0098($sp)
/* 22468 80033508 8FB60094 */  lw      $s6, 0x0094($sp)
/* 2246C 8003350C E7A60070 */  swc1    $f6, 0x0070($sp)
/* 22470 80033510 C7B40070 */  lwc1    $f20, 0x0070($sp)
/* 22474 80033514 8FB5009C */  lw      $s5, 0x009C($sp)
.L80033518:
/* 22478 80033518 968E13DC */  lhu     $t6, 0x13DC($s4)           ## 000013DC
/* 2247C 8003351C 0011C080 */  sll     $t8, $s1,  2
/* 22480 80033520 0311C023 */  subu    $t8, $t8, $s1
/* 22484 80033524 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 22488 80033528 11E00023 */  beq     $t7, $zero, .L800335B8
/* 2248C 8003352C 0018C0C0 */  sll     $t8, $t8,  3
/* 22490 80033530 0311C021 */  addu    $t8, $t8, $s1
/* 22494 80033534 0018C080 */  sll     $t8, $t8,  2
/* 22498 80033538 02788021 */  addu    $s0, $s3, $t8
/* 2249C 8003353C 8E190054 */  lw      $t9, 0x0054($s0)           ## 00000054
/* 224A0 80033540 260400A8 */  addiu   $a0, $s0, 0x00A8           ## $a0 = 000000A8
/* 224A4 80033544 52B9001D */  beql    $s5, $t9, .L800335BC
/* 224A8 80033548 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 224AC 8003354C 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 224B0 80033550 0C02A8C8 */  jal     func_800AA320
/* 224B4 80033554 8E460008 */  lw      $a2, 0x0008($s2)           ## 00000008
/* 224B8 80033558 10400017 */  beq     $v0, $zero, .L800335B8
/* 224BC 8003355C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 224C0 80033560 27A80070 */  addiu   $t0, $sp, 0x0070           ## $t0 = FFFFFFF0
/* 224C4 80033564 27A90068 */  addiu   $t1, $sp, 0x0068           ## $t1 = FFFFFFE8
/* 224C8 80033568 AFA9001C */  sw      $t1, 0x001C($sp)
/* 224CC 8003356C AFA80010 */  sw      $t0, 0x0010($sp)
/* 224D0 80033570 97A50086 */  lhu     $a1, 0x0086($sp)
/* 224D4 80033574 26660050 */  addiu   $a2, $s3, 0x0050           ## $a2 = 00000050
/* 224D8 80033578 2607005E */  addiu   $a3, $s0, 0x005E           ## $a3 = 0000005E
/* 224DC 8003357C AFB20014 */  sw      $s2, 0x0014($sp)
/* 224E0 80033580 0C00CC92 */  jal     func_80033248
/* 224E4 80033584 E7B60018 */  swc1    $f22, 0x0018($sp)
/* 224E8 80033588 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 224EC 8003358C 1441000A */  bne     $v0, $at, .L800335B8
/* 224F0 80033590 C7A80070 */  lwc1    $f8, 0x0070($sp)
/* 224F4 80033594 4614403C */  c.lt.s  $f8, $f20
/* 224F8 80033598 8FAA0068 */  lw      $t2, 0x0068($sp)
/* 224FC 8003359C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 22500 800335A0 45020006 */  bc1fl   .L800335BC
/* 22504 800335A4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 22508 800335A8 AECA0000 */  sw      $t2, 0x0000($s6)           ## 00000000
/* 2250C 800335AC AEF10000 */  sw      $s1, 0x0000($s7)           ## 00000000
/* 22510 800335B0 46004506 */  mov.s   $f20, $f8
/* 22514 800335B4 AFAB0078 */  sw      $t3, 0x0078($sp)
.L800335B8:
/* 22518 800335B8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000003
.L800335BC:
/* 2251C 800335BC 163EFFD6 */  bne     $s1, $s8, .L80033518
/* 22520 800335C0 26940002 */  addiu   $s4, $s4, 0x0002           ## $s4 = 00000002
/* 22524 800335C4 8FAC0088 */  lw      $t4, 0x0088($sp)
/* 22528 800335C8 E5940000 */  swc1    $f20, 0x0000($t4)          ## 00000000
/* 2252C 800335CC 8FA20078 */  lw      $v0, 0x0078($sp)
/* 22530 800335D0 8FBF005C */  lw      $ra, 0x005C($sp)
/* 22534 800335D4 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 22538 800335D8 D7B60030 */  ldc1    $f22, 0x0030($sp)
/* 2253C 800335DC 8FB00038 */  lw      $s0, 0x0038($sp)
/* 22540 800335E0 8FB1003C */  lw      $s1, 0x003C($sp)
/* 22544 800335E4 8FB20040 */  lw      $s2, 0x0040($sp)
/* 22548 800335E8 8FB30044 */  lw      $s3, 0x0044($sp)
/* 2254C 800335EC 8FB40048 */  lw      $s4, 0x0048($sp)
/* 22550 800335F0 8FB5004C */  lw      $s5, 0x004C($sp)
/* 22554 800335F4 8FB60050 */  lw      $s6, 0x0050($sp)
/* 22558 800335F8 8FB70054 */  lw      $s7, 0x0054($sp)
/* 2255C 800335FC 8FBE0058 */  lw      $s8, 0x0058($sp)
/* 22560 80033600 03E00008 */  jr      $ra
/* 22564 80033604 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000


glabel func_80033608
/* 22568 80033608 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 2256C 8003360C AFB40034 */  sw      $s4, 0x0034($sp)
/* 22570 80033610 AFB00024 */  sw      $s0, 0x0024($sp)
/* 22574 80033614 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 22578 80033618 3414FFFF */  ori     $s4, $zero, 0xFFFF         ## $s4 = 0000FFFF
/* 2257C 8003361C AFBF003C */  sw      $ra, 0x003C($sp)
/* 22580 80033620 AFB50038 */  sw      $s5, 0x0038($sp)
/* 22584 80033624 AFB30030 */  sw      $s3, 0x0030($sp)
/* 22588 80033628 AFB2002C */  sw      $s2, 0x002C($sp)
/* 2258C 8003362C AFB10028 */  sw      $s1, 0x0028($sp)
/* 22590 80033630 8E0E000C */  lw      $t6, 0x000C($s0)           ## 0000000C
/* 22594 80033634 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 22598 80033638 95C20000 */  lhu     $v0, 0x0000($t6)           ## 00000000
/* 2259C 8003363C 16820003 */  bne     $s4, $v0, .L8003364C
/* 225A0 80033640 00027880 */  sll     $t7, $v0,  2
/* 225A4 80033644 10000048 */  beq     $zero, $zero, .L80033768
/* 225A8 80033648 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8003364C:
/* 225AC 8003364C 8E030008 */  lw      $v1, 0x0008($s0)           ## 00000008
/* 225B0 80033650 96060004 */  lhu     $a2, 0x0004($s0)           ## 00000004
/* 225B4 80033654 27B3005C */  addiu   $s3, $sp, 0x005C           ## $s3 = FFFFFFE4
/* 225B8 80033658 8C6413F8 */  lw      $a0, 0x13F8($v1)           ## 000013F8
/* 225BC 8003365C 30C60007 */  andi    $a2, $a2, 0x0007           ## $a2 = 00000000
/* 225C0 80033660 00063340 */  sll     $a2, $a2, 13
/* 225C4 80033664 8C6513F0 */  lw      $a1, 0x13F0($v1)           ## 000013F0
/* 225C8 80033668 008F9021 */  addu    $s2, $a0, $t7
.L8003366C:
/* 225CC 8003366C 86420000 */  lh      $v0, 0x0000($s2)           ## 00000000
/* 225D0 80033670 0002C100 */  sll     $t8, $v0,  4
/* 225D4 80033674 00B88821 */  addu    $s1, $a1, $t8
/* 225D8 80033678 96390002 */  lhu     $t9, 0x0002($s1)           ## 00000002
/* 225DC 8003367C 03264024 */  and     $t0, $t9, $a2
/* 225E0 80033680 51000007 */  beql    $t0, $zero, .L800336A0
/* 225E4 80033684 8C6513F4 */  lw      $a1, 0x13F4($v1)           ## 000013F4
/* 225E8 80033688 96420002 */  lhu     $v0, 0x0002($s2)           ## 00000002
/* 225EC 8003368C 12820035 */  beq     $s4, $v0, .L80033764
/* 225F0 80033690 00024880 */  sll     $t1, $v0,  2
/* 225F4 80033694 1000FFF5 */  beq     $zero, $zero, .L8003366C
/* 225F8 80033698 00899021 */  addu    $s2, $a0, $t1
/* 225FC 8003369C 8C6513F4 */  lw      $a1, 0x13F4($v1)           ## 000013F4
.L800336A0:
/* 22600 800336A0 8E060010 */  lw      $a2, 0x0010($s0)           ## 00000010
/* 22604 800336A4 8E070014 */  lw      $a3, 0x0014($s0)           ## 00000014
/* 22608 800336A8 AFB30010 */  sw      $s3, 0x0010($sp)
/* 2260C 800336AC 8E0A0020 */  lw      $t2, 0x0020($s0)           ## 00000020
/* 22610 800336B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 22614 800336B4 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 22618 800336B8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 2261C 800336BC 0C00AF2B */  jal     func_8002BCAC
/* 22620 800336C0 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 22624 800336C4 1040001B */  beq     $v0, $zero, .L80033734
/* 22628 800336C8 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE4
/* 2262C 800336CC 0C02954E */  jal     func_800A5538
/* 22630 800336D0 8E040010 */  lw      $a0, 0x0010($s0)           ## 00000010
/* 22634 800336D4 8E020024 */  lw      $v0, 0x0024($s0)           ## 00000024
/* 22638 800336D8 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 00000000
/* 2263C 800336DC 4606003C */  c.lt.s  $f0, $f6
/* 22640 800336E0 00000000 */  nop
/* 22644 800336E4 45020014 */  bc1fl   .L80033738
/* 22648 800336E8 96420002 */  lhu     $v0, 0x0002($s2)           ## 00000002
/* 2264C 800336EC E4400000 */  swc1    $f0, 0x0000($v0)           ## 00000000
/* 22650 800336F0 8E6D0000 */  lw      $t5, 0x0000($s3)           ## FFFFFFE4
/* 22654 800336F4 8E0B0018 */  lw      $t3, 0x0018($s0)           ## 00000018
/* 22658 800336F8 24150001 */  addiu   $s5, $zero, 0x0001         ## $s5 = 00000001
/* 2265C 800336FC AD6D0000 */  sw      $t5, 0x0000($t3)           ## 00000000
/* 22660 80033700 8E6C0004 */  lw      $t4, 0x0004($s3)           ## FFFFFFE8
/* 22664 80033704 AD6C0004 */  sw      $t4, 0x0004($t3)           ## 00000004
/* 22668 80033708 8E6D0008 */  lw      $t5, 0x0008($s3)           ## FFFFFFEC
/* 2266C 8003370C AD6D0008 */  sw      $t5, 0x0008($t3)           ## 00000008
/* 22670 80033710 8E780000 */  lw      $t8, 0x0000($s3)           ## FFFFFFE4
/* 22674 80033714 8E0E0014 */  lw      $t6, 0x0014($s0)           ## 00000014
/* 22678 80033718 ADD80000 */  sw      $t8, 0x0000($t6)           ## 00000000
/* 2267C 8003371C 8E6F0004 */  lw      $t7, 0x0004($s3)           ## FFFFFFE8
/* 22680 80033720 ADCF0004 */  sw      $t7, 0x0004($t6)           ## 00000004
/* 22684 80033724 8E780008 */  lw      $t8, 0x0008($s3)           ## FFFFFFEC
/* 22688 80033728 ADD80008 */  sw      $t8, 0x0008($t6)           ## 00000008
/* 2268C 8003372C 8E19001C */  lw      $t9, 0x001C($s0)           ## 0000001C
/* 22690 80033730 AF310000 */  sw      $s1, 0x0000($t9)           ## 00000000
.L80033734:
/* 22694 80033734 96420002 */  lhu     $v0, 0x0002($s2)           ## 00000002
.L80033738:
/* 22698 80033738 5282000B */  beql    $s4, $v0, .L80033768
/* 2269C 8003373C 02A01025 */  or      $v0, $s5, $zero            ## $v0 = 00000001
/* 226A0 80033740 8E030008 */  lw      $v1, 0x0008($s0)           ## 00000008
/* 226A4 80033744 96060004 */  lhu     $a2, 0x0004($s0)           ## 00000004
/* 226A8 80033748 00024080 */  sll     $t0, $v0,  2
/* 226AC 8003374C 8C6413F8 */  lw      $a0, 0x13F8($v1)           ## 000013F8
/* 226B0 80033750 30C60007 */  andi    $a2, $a2, 0x0007           ## $a2 = 00000000
/* 226B4 80033754 00063340 */  sll     $a2, $a2, 13
/* 226B8 80033758 8C6513F0 */  lw      $a1, 0x13F0($v1)           ## 000013F0
/* 226BC 8003375C 1000FFC3 */  beq     $zero, $zero, .L8003366C
/* 226C0 80033760 00889021 */  addu    $s2, $a0, $t0
.L80033764:
/* 226C4 80033764 02A01025 */  or      $v0, $s5, $zero            ## $v0 = 00000001
.L80033768:
/* 226C8 80033768 8FBF003C */  lw      $ra, 0x003C($sp)
/* 226CC 8003376C 8FB00024 */  lw      $s0, 0x0024($sp)
/* 226D0 80033770 8FB10028 */  lw      $s1, 0x0028($sp)
/* 226D4 80033774 8FB2002C */  lw      $s2, 0x002C($sp)
/* 226D8 80033778 8FB30030 */  lw      $s3, 0x0030($sp)
/* 226DC 8003377C 8FB40034 */  lw      $s4, 0x0034($sp)
/* 226E0 80033780 8FB50038 */  lw      $s5, 0x0038($sp)
/* 226E4 80033784 03E00008 */  jr      $ra
/* 226E8 80033788 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000


glabel func_8003378C
/* 226EC 8003378C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 226F0 80033790 AFA50054 */  sw      $a1, 0x0054($sp)
/* 226F4 80033794 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 226F8 80033798 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 226FC 8003379C 8FAC006C */  lw      $t4, 0x006C($sp)
/* 22700 800337A0 8FAF0060 */  lw      $t7, 0x0060($sp)
/* 22704 800337A4 8FB90074 */  lw      $t9, 0x0074($sp)
/* 22708 800337A8 000C6880 */  sll     $t5, $t4,  2
/* 2270C 800337AC 01AC6823 */  subu    $t5, $t5, $t4
/* 22710 800337B0 000D68C0 */  sll     $t5, $t5,  3
/* 22714 800337B4 01AC6821 */  addu    $t5, $t5, $t4
/* 22718 800337B8 248E0050 */  addiu   $t6, $a0, 0x0050           ## $t6 = 00000050
/* 2271C 800337BC 000D6880 */  sll     $t5, $t5,  2
/* 22720 800337C0 8FB80064 */  lw      $t8, 0x0064($sp)
/* 22724 800337C4 8FAB0068 */  lw      $t3, 0x0068($sp)
/* 22728 800337C8 C7A40070 */  lwc1    $f4, 0x0070($sp)
/* 2272C 800337CC AFAE0028 */  sw      $t6, 0x0028($sp)
/* 22730 800337D0 008D1821 */  addu    $v1, $a0, $t5
/* 22734 800337D4 AFAF0038 */  sw      $t7, 0x0038($sp)
/* 22738 800337D8 33290008 */  andi    $t1, $t9, 0x0008           ## $t1 = 00000000
/* 2273C 800337DC 0009502B */  sltu    $t2, $zero, $t1
/* 22740 800337E0 246E0060 */  addiu   $t6, $v1, 0x0060           ## $t6 = 00000060
/* 22744 800337E4 332F0001 */  andi    $t7, $t9, 0x0001           ## $t7 = 00000000
/* 22748 800337E8 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 2274C 800337EC AFA40020 */  sw      $a0, 0x0020($sp)
/* 22750 800337F0 A7A50024 */  sh      $a1, 0x0024($sp)
/* 22754 800337F4 AFA60030 */  sw      $a2, 0x0030($sp)
/* 22758 800337F8 AFA70034 */  sw      $a3, 0x0034($sp)
/* 2275C 800337FC AFAA0040 */  sw      $t2, 0x0040($sp)
/* 22760 80033800 AFAE002C */  sw      $t6, 0x002C($sp)
/* 22764 80033804 AFB8003C */  sw      $t8, 0x003C($sp)
/* 22768 80033808 AFAB0044 */  sw      $t3, 0x0044($sp)
/* 2276C 8003380C 11E00009 */  beq     $t7, $zero, .L80033834
/* 22770 80033810 E7A40048 */  swc1    $f4, 0x0048($sp)
/* 22774 80033814 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFD0
/* 22778 80033818 AFA3001C */  sw      $v1, 0x001C($sp)
/* 2277C 8003381C 0C00CD82 */  jal     func_80033608
/* 22780 80033820 AFA0004C */  sw      $zero, 0x004C($sp)
/* 22784 80033824 8FA3001C */  lw      $v1, 0x001C($sp)
/* 22788 80033828 10400002 */  beq     $v0, $zero, .L80033834
/* 2278C 8003382C 8FA8004C */  lw      $t0, 0x004C($sp)
/* 22790 80033830 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80033834:
/* 22794 80033834 8FA90074 */  lw      $t1, 0x0074($sp)
/* 22798 80033838 24780062 */  addiu   $t8, $v1, 0x0062           ## $t8 = 00000062
/* 2279C 8003383C AFB8002C */  sw      $t8, 0x002C($sp)
/* 227A0 80033840 312A0002 */  andi    $t2, $t1, 0x0002           ## $t2 = 00000000
/* 227A4 80033844 11400008 */  beq     $t2, $zero, .L80033868
/* 227A8 80033848 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFD0
/* 227AC 8003384C AFA3001C */  sw      $v1, 0x001C($sp)
/* 227B0 80033850 0C00CD82 */  jal     func_80033608
/* 227B4 80033854 AFA8004C */  sw      $t0, 0x004C($sp)
/* 227B8 80033858 8FA3001C */  lw      $v1, 0x001C($sp)
/* 227BC 8003385C 10400002 */  beq     $v0, $zero, .L80033868
/* 227C0 80033860 8FA8004C */  lw      $t0, 0x004C($sp)
/* 227C4 80033864 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80033868:
/* 227C8 80033868 8FAC0074 */  lw      $t4, 0x0074($sp)
/* 227CC 8003386C 246B005E */  addiu   $t3, $v1, 0x005E           ## $t3 = 0000005E
/* 227D0 80033870 AFAB002C */  sw      $t3, 0x002C($sp)
/* 227D4 80033874 318D0004 */  andi    $t5, $t4, 0x0004           ## $t5 = 00000000
/* 227D8 80033878 11A00006 */  beq     $t5, $zero, .L80033894
/* 227DC 8003387C 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFD0
/* 227E0 80033880 0C00CD82 */  jal     func_80033608
/* 227E4 80033884 AFA8004C */  sw      $t0, 0x004C($sp)
/* 227E8 80033888 10400002 */  beq     $v0, $zero, .L80033894
/* 227EC 8003388C 8FA8004C */  lw      $t0, 0x004C($sp)
/* 227F0 80033890 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80033894:
/* 227F4 80033894 01001025 */  or      $v0, $t0, $zero            ## $v0 = 00000001
/* 227F8 80033898 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 227FC 8003389C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 22800 800338A0 03E00008 */  jr      $ra
/* 22804 800338A4 00000000 */  nop


glabel func_800338A8
/* 22808 800338A8 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 2280C 800338AC AFBE0058 */  sw      $s8, 0x0058($sp)
/* 22810 800338B0 AFB40048 */  sw      $s4, 0x0048($sp)
/* 22814 800338B4 AFB30044 */  sw      $s3, 0x0044($sp)
/* 22818 800338B8 AFB20040 */  sw      $s2, 0x0040($sp)
/* 2281C 800338BC 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 22820 800338C0 00E09825 */  or      $s3, $a3, $zero            ## $s3 = 00000000
/* 22824 800338C4 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 22828 800338C8 30BEFFFF */  andi    $s8, $a1, 0xFFFF           ## $s8 = 00000000
/* 2282C 800338CC AFBF005C */  sw      $ra, 0x005C($sp)
/* 22830 800338D0 AFB70054 */  sw      $s7, 0x0054($sp)
/* 22834 800338D4 AFB60050 */  sw      $s6, 0x0050($sp)
/* 22838 800338D8 AFB5004C */  sw      $s5, 0x004C($sp)
/* 2283C 800338DC AFB1003C */  sw      $s1, 0x003C($sp)
/* 22840 800338E0 AFB00038 */  sw      $s0, 0x0038($sp)
/* 22844 800338E4 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 22848 800338E8 AFA5009C */  sw      $a1, 0x009C($sp)
/* 2284C 800338EC 0000B025 */  or      $s6, $zero, $zero          ## $s6 = 00000000
/* 22850 800338F0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 22854 800338F4 02808825 */  or      $s1, $s4, $zero            ## $s1 = 00000000
/* 22858 800338F8 C7B400BC */  lwc1    $f20, 0x00BC($sp)
/* 2285C 800338FC 8FB700B8 */  lw      $s7, 0x00B8($sp)
/* 22860 80033900 27B50074 */  addiu   $s5, $sp, 0x0074           ## $s5 = FFFFFFDC
.L80033904:
/* 22864 80033904 962E13DC */  lhu     $t6, 0x13DC($s1)           ## 000013DC
/* 22868 80033908 0010C080 */  sll     $t8, $s0,  2
/* 2286C 8003390C 0310C023 */  subu    $t8, $t8, $s0
/* 22870 80033910 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 22874 80033914 11E00040 */  beq     $t7, $zero, .L80033A18
/* 22878 80033918 0018C0C0 */  sll     $t8, $t8,  3
/* 2287C 8003391C 0310C021 */  addu    $t8, $t8, $s0
/* 22880 80033920 0018C080 */  sll     $t8, $t8,  2
/* 22884 80033924 02981021 */  addu    $v0, $s4, $t8
/* 22888 80033928 8C590054 */  lw      $t9, 0x0054($v0)           ## 00000054
/* 2288C 8003392C 52F9003B */  beql    $s7, $t9, .L80033A1C
/* 22890 80033930 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 22894 80033934 C6400004 */  lwc1    $f0, 0x0004($s2)           ## 00000004
/* 22898 80033938 C44C00B0 */  lwc1    $f12, 0x00B0($v0)          ## 000000B0
/* 2289C 8003393C C6620004 */  lwc1    $f2, 0x0004($s3)           ## 00000004
/* 228A0 80033940 460C003C */  c.lt.s  $f0, $f12
/* 228A4 80033944 00000000 */  nop
/* 228A8 80033948 45020006 */  bc1fl   .L80033964
/* 228AC 8003394C C44C00B4 */  lwc1    $f12, 0x00B4($v0)          ## 000000B4
/* 228B0 80033950 460C103C */  c.lt.s  $f2, $f12
/* 228B4 80033954 00000000 */  nop
/* 228B8 80033958 45030030 */  bc1tl   .L80033A1C
/* 228BC 8003395C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 228C0 80033960 C44C00B4 */  lwc1    $f12, 0x00B4($v0)          ## 000000B4
.L80033964:
/* 228C4 80033964 4600603C */  c.lt.s  $f12, $f0
/* 228C8 80033968 00000000 */  nop
/* 228CC 8003396C 45020006 */  bc1fl   .L80033988
/* 228D0 80033970 8E490000 */  lw      $t1, 0x0000($s2)           ## 00000000
/* 228D4 80033974 4602603C */  c.lt.s  $f12, $f2
/* 228D8 80033978 00000000 */  nop
/* 228DC 8003397C 45030027 */  bc1tl   .L80033A1C
/* 228E0 80033980 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000003
/* 228E4 80033984 8E490000 */  lw      $t1, 0x0000($s2)           ## 00000000
.L80033988:
/* 228E8 80033988 27AA0080 */  addiu   $t2, $sp, 0x0080           ## $t2 = FFFFFFE8
/* 228EC 8003398C 244400A8 */  addiu   $a0, $v0, 0x00A8           ## $a0 = 000000A8
/* 228F0 80033990 AEA90000 */  sw      $t1, 0x0000($s5)           ## FFFFFFDC
/* 228F4 80033994 8E480004 */  lw      $t0, 0x0004($s2)           ## 00000004
/* 228F8 80033998 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFDC
/* 228FC 8003399C AEA80004 */  sw      $t0, 0x0004($s5)           ## FFFFFFE0
/* 22900 800339A0 8E490008 */  lw      $t1, 0x0008($s2)           ## 00000008
/* 22904 800339A4 AEA90008 */  sw      $t1, 0x0008($s5)           ## FFFFFFE4
/* 22908 800339A8 8E6C0000 */  lw      $t4, 0x0000($s3)           ## 00000000
/* 2290C 800339AC AD4C0000 */  sw      $t4, 0x0000($t2)           ## FFFFFFE8
/* 22910 800339B0 8E6B0004 */  lw      $t3, 0x0004($s3)           ## 00000004
/* 22914 800339B4 AD4B0004 */  sw      $t3, 0x0004($t2)           ## FFFFFFEC
/* 22918 800339B8 8E6C0008 */  lw      $t4, 0x0008($s3)           ## 00000008
/* 2291C 800339BC 0C02A11F */  jal     func_800A847C
/* 22920 800339C0 AD4C0008 */  sw      $t4, 0x0008($t2)           ## FFFFFFF0
/* 22924 800339C4 10400014 */  beq     $v0, $zero, .L80033A18
/* 22928 800339C8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 2292C 800339CC 8FAD00A8 */  lw      $t5, 0x00A8($sp)
/* 22930 800339D0 8FAE00AC */  lw      $t6, 0x00AC($sp)
/* 22934 800339D4 8FAF00B0 */  lw      $t7, 0x00B0($sp)
/* 22938 800339D8 8FB800C0 */  lw      $t8, 0x00C0($sp)
/* 2293C 800339DC 33C5FFFF */  andi    $a1, $s8, 0xFFFF           ## $a1 = 00000000
/* 22940 800339E0 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 22944 800339E4 02603825 */  or      $a3, $s3, $zero            ## $a3 = 00000000
/* 22948 800339E8 AFB0001C */  sw      $s0, 0x001C($sp)
/* 2294C 800339EC E7B40020 */  swc1    $f20, 0x0020($sp)
/* 22950 800339F0 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 22954 800339F4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 22958 800339F8 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 2295C 800339FC 0C00CDE3 */  jal     func_8003378C
/* 22960 80033A00 AFB80024 */  sw      $t8, 0x0024($sp)
/* 22964 80033A04 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 22968 80033A08 14410003 */  bne     $v0, $at, .L80033A18
/* 2296C 80033A0C 8FB900B4 */  lw      $t9, 0x00B4($sp)
/* 22970 80033A10 AF300000 */  sw      $s0, 0x0000($t9)           ## 00000000
/* 22974 80033A14 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
.L80033A18:
/* 22978 80033A18 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000004
.L80033A1C:
/* 2297C 80033A1C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 22980 80033A20 1601FFB8 */  bne     $s0, $at, .L80033904
/* 22984 80033A24 26310002 */  addiu   $s1, $s1, 0x0002           ## $s1 = 00000002
/* 22988 80033A28 02C01025 */  or      $v0, $s6, $zero            ## $v0 = 00000001
/* 2298C 80033A2C 8FBF005C */  lw      $ra, 0x005C($sp)
/* 22990 80033A30 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 22994 80033A34 8FB00038 */  lw      $s0, 0x0038($sp)
/* 22998 80033A38 8FB1003C */  lw      $s1, 0x003C($sp)
/* 2299C 80033A3C 8FB20040 */  lw      $s2, 0x0040($sp)
/* 229A0 80033A40 8FB30044 */  lw      $s3, 0x0044($sp)
/* 229A4 80033A44 8FB40048 */  lw      $s4, 0x0048($sp)
/* 229A8 80033A48 8FB5004C */  lw      $s5, 0x004C($sp)
/* 229AC 80033A4C 8FB60050 */  lw      $s6, 0x0050($sp)
/* 229B0 80033A50 8FB70054 */  lw      $s7, 0x0054($sp)
/* 229B4 80033A54 8FBE0058 */  lw      $s8, 0x0058($sp)
/* 229B8 80033A58 03E00008 */  jr      $ra
/* 229BC 80033A5C 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


glabel func_80033A60
/* 229C0 80033A60 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 229C4 80033A64 AFB50030 */  sw      $s5, 0x0030($sp)
/* 229C8 80033A68 AFB30028 */  sw      $s3, 0x0028($sp)
/* 229CC 80033A6C AFA5003C */  sw      $a1, 0x003C($sp)
/* 229D0 80033A70 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 229D4 80033A74 3413FFFF */  ori     $s3, $zero, 0xFFFF         ## $s3 = 0000FFFF
/* 229D8 80033A78 00E0A825 */  or      $s5, $a3, $zero            ## $s5 = 00000000
/* 229DC 80033A7C AFBF0034 */  sw      $ra, 0x0034($sp)
/* 229E0 80033A80 AFB4002C */  sw      $s4, 0x002C($sp)
/* 229E4 80033A84 AFB20024 */  sw      $s2, 0x0024($sp)
/* 229E8 80033A88 AFB10020 */  sw      $s1, 0x0020($sp)
/* 229EC 80033A8C AFB0001C */  sw      $s0, 0x001C($sp)
/* 229F0 80033A90 F7B40010 */  sdc1    $f20, 0x0010($sp)
/* 229F4 80033A94 AFA60040 */  sw      $a2, 0x0040($sp)
/* 229F8 80033A98 8FAE004C */  lw      $t6, 0x004C($sp)
/* 229FC 80033A9C 30B40007 */  andi    $s4, $a1, 0x0007           ## $s4 = 00000000
/* 22A00 80033AA0 0014A340 */  sll     $s4, $s4, 13
/* 22A04 80033AA4 95C20000 */  lhu     $v0, 0x0000($t6)           ## 00000000
/* 22A08 80033AA8 24920050 */  addiu   $s2, $a0, 0x0050           ## $s2 = 00000050
/* 22A0C 80033AAC 16620003 */  bne     $s3, $v0, .L80033ABC
/* 22A10 80033AB0 0002C080 */  sll     $t8, $v0,  2
/* 22A14 80033AB4 10000026 */  beq     $zero, $zero, .L80033B50
/* 22A18 80033AB8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80033ABC:
/* 22A1C 80033ABC 8C8F1448 */  lw      $t7, 0x1448($a0)           ## 00001448
/* 22A20 80033AC0 8E4313F0 */  lw      $v1, 0x13F0($s2)           ## 00001440
/* 22A24 80033AC4 C7B40048 */  lwc1    $f20, 0x0048($sp)
/* 22A28 80033AC8 01F88021 */  addu    $s0, $t7, $t8
.L80033ACC:
/* 22A2C 80033ACC 86020000 */  lh      $v0, 0x0000($s0)           ## 00000000
/* 22A30 80033AD0 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 00000000
/* 22A34 80033AD4 0002C900 */  sll     $t9, $v0,  4
/* 22A38 80033AD8 00798821 */  addu    $s1, $v1, $t9
/* 22A3C 80033ADC 96280002 */  lhu     $t0, 0x0002($s1)           ## 00000002
/* 22A40 80033AE0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 22A44 80033AE4 01144824 */  and     $t1, $t0, $s4
/* 22A48 80033AE8 51200009 */  beql    $t1, $zero, .L80033B10
/* 22A4C 80033AEC 4407A000 */  mfc1    $a3, $f20
/* 22A50 80033AF0 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 22A54 80033AF4 52620016 */  beql    $s3, $v0, .L80033B50
/* 22A58 80033AF8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 22A5C 80033AFC 8E4A13F8 */  lw      $t2, 0x13F8($s2)           ## 00001448
/* 22A60 80033B00 00025880 */  sll     $t3, $v0,  2
/* 22A64 80033B04 1000FFF1 */  beq     $zero, $zero, .L80033ACC
/* 22A68 80033B08 014B8021 */  addu    $s0, $t2, $t3
/* 22A6C 80033B0C 4407A000 */  mfc1    $a3, $f20
.L80033B10:
/* 22A70 80033B10 0C00AFE3 */  jal     func_8002BF8C
/* 22A74 80033B14 8E4513F4 */  lw      $a1, 0x13F4($s2)           ## 00001444
/* 22A78 80033B18 50400006 */  beql    $v0, $zero, .L80033B34
/* 22A7C 80033B1C 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
/* 22A80 80033B20 8FAC0040 */  lw      $t4, 0x0040($sp)
/* 22A84 80033B24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 22A88 80033B28 10000009 */  beq     $zero, $zero, .L80033B50
/* 22A8C 80033B2C AD910000 */  sw      $s1, 0x0000($t4)           ## 00000000
/* 22A90 80033B30 96020002 */  lhu     $v0, 0x0002($s0)           ## 00000002
.L80033B34:
/* 22A94 80033B34 12620005 */  beq     $s3, $v0, .L80033B4C
/* 22A98 80033B38 00027080 */  sll     $t6, $v0,  2
/* 22A9C 80033B3C 8E4D13F8 */  lw      $t5, 0x13F8($s2)           ## 00001448
/* 22AA0 80033B40 8E4313F0 */  lw      $v1, 0x13F0($s2)           ## 00001440
/* 22AA4 80033B44 1000FFE1 */  beq     $zero, $zero, .L80033ACC
/* 22AA8 80033B48 01AE8021 */  addu    $s0, $t5, $t6
.L80033B4C:
/* 22AAC 80033B4C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80033B50:
/* 22AB0 80033B50 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 22AB4 80033B54 D7B40010 */  ldc1    $f20, 0x0010($sp)
/* 22AB8 80033B58 8FB0001C */  lw      $s0, 0x001C($sp)
/* 22ABC 80033B5C 8FB10020 */  lw      $s1, 0x0020($sp)
/* 22AC0 80033B60 8FB20024 */  lw      $s2, 0x0024($sp)
/* 22AC4 80033B64 8FB30028 */  lw      $s3, 0x0028($sp)
/* 22AC8 80033B68 8FB4002C */  lw      $s4, 0x002C($sp)
/* 22ACC 80033B6C 8FB50030 */  lw      $s5, 0x0030($sp)
/* 22AD0 80033B70 03E00008 */  jr      $ra
/* 22AD4 80033B74 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


glabel func_80033B78
/* 22AD8 80033B78 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 22ADC 80033B7C AFBF001C */  sw      $ra, 0x001C($sp)
/* 22AE0 80033B80 AFA5002C */  sw      $a1, 0x002C($sp)
/* 22AE4 80033B84 AFA60030 */  sw      $a2, 0x0030($sp)
/* 22AE8 80033B88 AFA70034 */  sw      $a3, 0x0034($sp)
/* 22AEC 80033B8C 97A30042 */  lhu     $v1, 0x0042($sp)
/* 22AF0 80033B90 97A5002E */  lhu     $a1, 0x002E($sp)
/* 22AF4 80033B94 8FA60030 */  lw      $a2, 0x0030($sp)
/* 22AF8 80033B98 306E0001 */  andi    $t6, $v1, 0x0001           ## $t6 = 00000000
/* 22AFC 80033B9C 15C00014 */  bne     $t6, $zero, .L80033BF0
/* 22B00 80033BA0 8FA70034 */  lw      $a3, 0x0034($sp)
/* 22B04 80033BA4 8FAF003C */  lw      $t7, 0x003C($sp)
/* 22B08 80033BA8 C7A40038 */  lwc1    $f4, 0x0038($sp)
/* 22B0C 80033BAC AFA30024 */  sw      $v1, 0x0024($sp)
/* 22B10 80033BB0 000FC080 */  sll     $t8, $t7,  2
/* 22B14 80033BB4 030FC023 */  subu    $t8, $t8, $t7
/* 22B18 80033BB8 0018C0C0 */  sll     $t8, $t8,  3
/* 22B1C 80033BBC 030FC021 */  addu    $t8, $t8, $t7
/* 22B20 80033BC0 0018C080 */  sll     $t8, $t8,  2
/* 22B24 80033BC4 0098C821 */  addu    $t9, $a0, $t8
/* 22B28 80033BC8 2728005E */  addiu   $t0, $t9, 0x005E           ## $t0 = 0000005E
/* 22B2C 80033BCC AFA80014 */  sw      $t0, 0x0014($sp)
/* 22B30 80033BD0 AFA40028 */  sw      $a0, 0x0028($sp)
/* 22B34 80033BD4 0C00CE98 */  jal     func_80033A60
/* 22B38 80033BD8 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 22B3C 80033BDC 8FA30024 */  lw      $v1, 0x0024($sp)
/* 22B40 80033BE0 10400003 */  beq     $v0, $zero, .L80033BF0
/* 22B44 80033BE4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 22B48 80033BE8 1000002F */  beq     $zero, $zero, .L80033CA8
/* 22B4C 80033BEC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80033BF0:
/* 22B50 80033BF0 30690002 */  andi    $t1, $v1, 0x0002           ## $t1 = 00000000
/* 22B54 80033BF4 15200016 */  bne     $t1, $zero, .L80033C50
/* 22B58 80033BF8 97A5002E */  lhu     $a1, 0x002E($sp)
/* 22B5C 80033BFC 8FAA003C */  lw      $t2, 0x003C($sp)
/* 22B60 80033C00 C7A60038 */  lwc1    $f6, 0x0038($sp)
/* 22B64 80033C04 8FA60030 */  lw      $a2, 0x0030($sp)
/* 22B68 80033C08 000A5880 */  sll     $t3, $t2,  2
/* 22B6C 80033C0C 016A5823 */  subu    $t3, $t3, $t2
/* 22B70 80033C10 000B58C0 */  sll     $t3, $t3,  3
/* 22B74 80033C14 016A5821 */  addu    $t3, $t3, $t2
/* 22B78 80033C18 000B5880 */  sll     $t3, $t3,  2
/* 22B7C 80033C1C 008B6021 */  addu    $t4, $a0, $t3
/* 22B80 80033C20 258D0060 */  addiu   $t5, $t4, 0x0060           ## $t5 = 00000060
/* 22B84 80033C24 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 22B88 80033C28 8FA70034 */  lw      $a3, 0x0034($sp)
/* 22B8C 80033C2C AFA30024 */  sw      $v1, 0x0024($sp)
/* 22B90 80033C30 AFA40028 */  sw      $a0, 0x0028($sp)
/* 22B94 80033C34 0C00CE98 */  jal     func_80033A60
/* 22B98 80033C38 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 22B9C 80033C3C 8FA30024 */  lw      $v1, 0x0024($sp)
/* 22BA0 80033C40 10400003 */  beq     $v0, $zero, .L80033C50
/* 22BA4 80033C44 8FA40028 */  lw      $a0, 0x0028($sp)
/* 22BA8 80033C48 10000017 */  beq     $zero, $zero, .L80033CA8
/* 22BAC 80033C4C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80033C50:
/* 22BB0 80033C50 306E0004 */  andi    $t6, $v1, 0x0004           ## $t6 = 00000000
/* 22BB4 80033C54 15C00013 */  bne     $t6, $zero, .L80033CA4
/* 22BB8 80033C58 97A5002E */  lhu     $a1, 0x002E($sp)
/* 22BBC 80033C5C 8FAF003C */  lw      $t7, 0x003C($sp)
/* 22BC0 80033C60 C7A80038 */  lwc1    $f8, 0x0038($sp)
/* 22BC4 80033C64 8FA60030 */  lw      $a2, 0x0030($sp)
/* 22BC8 80033C68 000FC080 */  sll     $t8, $t7,  2
/* 22BCC 80033C6C 030FC023 */  subu    $t8, $t8, $t7
/* 22BD0 80033C70 0018C0C0 */  sll     $t8, $t8,  3
/* 22BD4 80033C74 030FC021 */  addu    $t8, $t8, $t7
/* 22BD8 80033C78 0018C080 */  sll     $t8, $t8,  2
/* 22BDC 80033C7C 0098C821 */  addu    $t9, $a0, $t8
/* 22BE0 80033C80 27280062 */  addiu   $t0, $t9, 0x0062           ## $t0 = 00000062
/* 22BE4 80033C84 AFA80014 */  sw      $t0, 0x0014($sp)
/* 22BE8 80033C88 8FA70034 */  lw      $a3, 0x0034($sp)
/* 22BEC 80033C8C 0C00CE98 */  jal     func_80033A60
/* 22BF0 80033C90 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 22BF4 80033C94 50400004 */  beql    $v0, $zero, .L80033CA8
/* 22BF8 80033C98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 22BFC 80033C9C 10000002 */  beq     $zero, $zero, .L80033CA8
/* 22C00 80033CA0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80033CA4:
/* 22C04 80033CA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80033CA8:
/* 22C08 80033CA8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 22C0C 80033CAC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 22C10 80033CB0 03E00008 */  jr      $ra
/* 22C14 80033CB4 00000000 */  nop


glabel func_80033CB8
/* 22C18 80033CB8 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 22C1C 80033CBC AFB60048 */  sw      $s6, 0x0048($sp)
/* 22C20 80033CC0 AFB50044 */  sw      $s5, 0x0044($sp)
/* 22C24 80033CC4 AFB3003C */  sw      $s3, 0x003C($sp)
/* 22C28 80033CC8 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 22C2C 80033CCC 30B5FFFF */  andi    $s5, $a1, 0xFFFF           ## $s5 = 00000000
/* 22C30 80033CD0 00C0B025 */  or      $s6, $a2, $zero            ## $s6 = 00000000
/* 22C34 80033CD4 AFBF0054 */  sw      $ra, 0x0054($sp)
/* 22C38 80033CD8 AFBE0050 */  sw      $s8, 0x0050($sp)
/* 22C3C 80033CDC AFB7004C */  sw      $s7, 0x004C($sp)
/* 22C40 80033CE0 AFB40040 */  sw      $s4, 0x0040($sp)
/* 22C44 80033CE4 AFB20038 */  sw      $s2, 0x0038($sp)
/* 22C48 80033CE8 AFB10034 */  sw      $s1, 0x0034($sp)
/* 22C4C 80033CEC AFB00030 */  sw      $s0, 0x0030($sp)
/* 22C50 80033CF0 F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 22C54 80033CF4 AFA50074 */  sw      $a1, 0x0074($sp)
/* 22C58 80033CF8 AFA7007C */  sw      $a3, 0x007C($sp)
/* 22C5C 80033CFC 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 22C60 80033D00 02609025 */  or      $s2, $s3, $zero            ## $s2 = 00000000
/* 22C64 80033D04 C7B40084 */  lwc1    $f20, 0x0084($sp)
/* 22C68 80033D08 241E0032 */  addiu   $s8, $zero, 0x0032         ## $s8 = 00000032
/* 22C6C 80033D0C 97B7008E */  lhu     $s7, 0x008E($sp)
/* 22C70 80033D10 8FB40088 */  lw      $s4, 0x0088($sp)
/* 22C74 80033D14 8FB10080 */  lw      $s1, 0x0080($sp)
.L80033D18:
/* 22C78 80033D18 964E13DC */  lhu     $t6, 0x13DC($s2)           ## 000013DC
/* 22C7C 80033D1C 0010C080 */  sll     $t8, $s0,  2
/* 22C80 80033D20 0310C023 */  subu    $t8, $t8, $s0
/* 22C84 80033D24 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 22C88 80033D28 11E00028 */  beq     $t7, $zero, .L80033DCC
/* 22C8C 80033D2C 0018C0C0 */  sll     $t8, $t8,  3
/* 22C90 80033D30 0310C021 */  addu    $t8, $t8, $s0
/* 22C94 80033D34 0018C080 */  sll     $t8, $t8,  2
/* 22C98 80033D38 02781021 */  addu    $v0, $s3, $t8
/* 22C9C 80033D3C 8C590054 */  lw      $t9, 0x0054($v0)           ## 00000054
/* 22CA0 80033D40 52990023 */  beql    $s4, $t9, .L80033DD0
/* 22CA4 80033D44 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 22CA8 80033D48 C6240000 */  lwc1    $f4, 0x0000($s1)           ## 00000000
/* 22CAC 80033D4C 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFF4
/* 22CB0 80033D50 244500A8 */  addiu   $a1, $v0, 0x00A8           ## $a1 = 000000A8
/* 22CB4 80033D54 4600218D */  trunc.w.s $f6, $f4
/* 22CB8 80033D58 4600A10D */  trunc.w.s $f4, $f20
/* 22CBC 80033D5C 44093000 */  mfc1    $t1, $f6
/* 22CC0 80033D60 00000000 */  nop
/* 22CC4 80033D64 A7A90064 */  sh      $t1, 0x0064($sp)
/* 22CC8 80033D68 C6280004 */  lwc1    $f8, 0x0004($s1)           ## 00000004
/* 22CCC 80033D6C 440F2000 */  mfc1    $t7, $f4
/* 22CD0 80033D70 4600428D */  trunc.w.s $f10, $f8
/* 22CD4 80033D74 440B5000 */  mfc1    $t3, $f10
/* 22CD8 80033D78 00000000 */  nop
/* 22CDC 80033D7C A7AB0066 */  sh      $t3, 0x0066($sp)
/* 22CE0 80033D80 C6300008 */  lwc1    $f16, 0x0008($s1)          ## 00000008
/* 22CE4 80033D84 A7AF006A */  sh      $t7, 0x006A($sp)
/* 22CE8 80033D88 4600848D */  trunc.w.s $f18, $f16
/* 22CEC 80033D8C 440D9000 */  mfc1    $t5, $f18
/* 22CF0 80033D90 0C02A6C2 */  jal     func_800A9B08
/* 22CF4 80033D94 A7AD0068 */  sh      $t5, 0x0068($sp)
/* 22CF8 80033D98 1040000C */  beq     $v0, $zero, .L80033DCC
/* 22CFC 80033D9C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 22D00 80033DA0 32A5FFFF */  andi    $a1, $s5, 0xFFFF           ## $a1 = 00000000
/* 22D04 80033DA4 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 22D08 80033DA8 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000000
/* 22D0C 80033DAC E7B40010 */  swc1    $f20, 0x0010($sp)
/* 22D10 80033DB0 AFB00014 */  sw      $s0, 0x0014($sp)
/* 22D14 80033DB4 0C00CEDE */  jal     func_80033B78
/* 22D18 80033DB8 AFB70018 */  sw      $s7, 0x0018($sp)
/* 22D1C 80033DBC 50400004 */  beql    $v0, $zero, .L80033DD0
/* 22D20 80033DC0 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 22D24 80033DC4 10000005 */  beq     $zero, $zero, .L80033DDC
/* 22D28 80033DC8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80033DCC:
/* 22D2C 80033DCC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000003
.L80033DD0:
/* 22D30 80033DD0 161EFFD1 */  bne     $s0, $s8, .L80033D18
/* 22D34 80033DD4 26520002 */  addiu   $s2, $s2, 0x0002           ## $s2 = 00000002
/* 22D38 80033DD8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80033DDC:
/* 22D3C 80033DDC 8FBF0054 */  lw      $ra, 0x0054($sp)
/* 22D40 80033DE0 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 22D44 80033DE4 8FB00030 */  lw      $s0, 0x0030($sp)
/* 22D48 80033DE8 8FB10034 */  lw      $s1, 0x0034($sp)
/* 22D4C 80033DEC 8FB20038 */  lw      $s2, 0x0038($sp)
/* 22D50 80033DF0 8FB3003C */  lw      $s3, 0x003C($sp)
/* 22D54 80033DF4 8FB40040 */  lw      $s4, 0x0040($sp)
/* 22D58 80033DF8 8FB50044 */  lw      $s5, 0x0044($sp)
/* 22D5C 80033DFC 8FB60048 */  lw      $s6, 0x0048($sp)
/* 22D60 80033E00 8FB7004C */  lw      $s7, 0x004C($sp)
/* 22D64 80033E04 8FBE0050 */  lw      $s8, 0x0050($sp)
/* 22D68 80033E08 03E00008 */  jr      $ra
/* 22D6C 80033E0C 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000


glabel func_80033E10
/* 22D70 80033E10 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 22D74 80033E14 3C0900FF */  lui     $t1, 0x00FF                ## $t1 = 00FF0000
/* 22D78 80033E18 3529FFFF */  ori     $t1, $t1, 0xFFFF           ## $t1 = 00FFFFFF
/* 22D7C 80033E1C 25080C38 */  addiu   $t0, $t0, 0x0C38           ## $t0 = 80120C38
/* 22D80 80033E20 3C0A8000 */  lui     $t2, 0x8000                ## $t2 = 80000000
/* 22D84 80033E24 8C820010 */  lw      $v0, 0x0010($a0)           ## 00000010
/* 22D88 80033E28 8C830018 */  lw      $v1, 0x0018($a0)           ## 00000018
/* 22D8C 80033E2C 8C85001C */  lw      $a1, 0x001C($a0)           ## 0000001C
/* 22D90 80033E30 00027100 */  sll     $t6, $v0,  4
/* 22D94 80033E34 000E7F02 */  srl     $t7, $t6, 28
/* 22D98 80033E38 000FC080 */  sll     $t8, $t7,  2
/* 22D9C 80033E3C 0118C821 */  addu    $t9, $t0, $t8
/* 22DA0 80033E40 8F2B0000 */  lw      $t3, 0x0000($t9)           ## 00000000
/* 22DA4 80033E44 00496024 */  and     $t4, $v0, $t1
/* 22DA8 80033E48 00037900 */  sll     $t7, $v1,  4
/* 22DAC 80033E4C 000FC702 */  srl     $t8, $t7, 28
/* 22DB0 80033E50 016C6821 */  addu    $t5, $t3, $t4
/* 22DB4 80033E54 01AA7021 */  addu    $t6, $t5, $t2
/* 22DB8 80033E58 0018C880 */  sll     $t9, $t8,  2
/* 22DBC 80033E5C AC8E0010 */  sw      $t6, 0x0010($a0)           ## 00000010
/* 22DC0 80033E60 01195821 */  addu    $t3, $t0, $t9
/* 22DC4 80033E64 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 22DC8 80033E68 00696824 */  and     $t5, $v1, $t1
/* 22DCC 80033E6C 0005C100 */  sll     $t8, $a1,  4
/* 22DD0 80033E70 0018CF02 */  srl     $t9, $t8, 28
/* 22DD4 80033E74 018D7021 */  addu    $t6, $t4, $t5
/* 22DD8 80033E78 01CA7821 */  addu    $t7, $t6, $t2
/* 22DDC 80033E7C 00195880 */  sll     $t3, $t9,  2
/* 22DE0 80033E80 8C860020 */  lw      $a2, 0x0020($a0)           ## 00000020
/* 22DE4 80033E84 AC8F0018 */  sw      $t7, 0x0018($a0)           ## 00000018
/* 22DE8 80033E88 010B6021 */  addu    $t4, $t0, $t3
/* 22DEC 80033E8C 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 22DF0 80033E90 00A97024 */  and     $t6, $a1, $t1
/* 22DF4 80033E94 0006C900 */  sll     $t9, $a2,  4
/* 22DF8 80033E98 00195F02 */  srl     $t3, $t9, 28
/* 22DFC 80033E9C 01AE7821 */  addu    $t7, $t5, $t6
/* 22E00 80033EA0 01EAC021 */  addu    $t8, $t7, $t2
/* 22E04 80033EA4 000B6080 */  sll     $t4, $t3,  2
/* 22E08 80033EA8 8C870028 */  lw      $a3, 0x0028($a0)           ## 00000028
/* 22E0C 80033EAC AC98001C */  sw      $t8, 0x001C($a0)           ## 0000001C
/* 22E10 80033EB0 010C6821 */  addu    $t5, $t0, $t4
/* 22E14 80033EB4 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 22E18 80033EB8 00C97824 */  and     $t7, $a2, $t1
/* 22E1C 80033EBC 00075900 */  sll     $t3, $a3,  4
/* 22E20 80033EC0 000B6702 */  srl     $t4, $t3, 28
/* 22E24 80033EC4 01CFC021 */  addu    $t8, $t6, $t7
/* 22E28 80033EC8 030AC821 */  addu    $t9, $t8, $t2
/* 22E2C 80033ECC 000C6880 */  sll     $t5, $t4,  2
/* 22E30 80033ED0 AC990020 */  sw      $t9, 0x0020($a0)           ## 00000020
/* 22E34 80033ED4 010D7021 */  addu    $t6, $t0, $t5
/* 22E38 80033ED8 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 22E3C 80033EDC 00E9C024 */  and     $t8, $a3, $t1
/* 22E40 80033EE0 01F8C821 */  addu    $t9, $t7, $t8
/* 22E44 80033EE4 032A5821 */  addu    $t3, $t9, $t2
/* 22E48 80033EE8 AC8B0028 */  sw      $t3, 0x0028($a0)           ## 00000028
/* 22E4C 80033EEC 03E00008 */  jr      $ra
/* 22E50 80033EF0 00000000 */  nop


glabel DynaPolyInfo_Alloc
/* 22E54 80033EF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 22E58 80033EF8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 22E5C 80033EFC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 22E60 80033F00 00067100 */  sll     $t6, $a2,  4
/* 22E64 80033F04 000E7F02 */  srl     $t7, $t6, 28
/* 22E68 80033F08 000FC080 */  sll     $t8, $t7,  2
/* 22E6C 80033F0C 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 22E70 80033F10 0338C821 */  addu    $t9, $t9, $t8
/* 22E74 80033F14 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 22E78 80033F18 8F390C38 */  lw      $t9, 0x0C38($t9)           ## 80120C38
/* 22E7C 80033F1C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 22E80 80033F20 00C14024 */  and     $t0, $a2, $at
/* 22E84 80033F24 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 22E88 80033F28 03284821 */  addu    $t1, $t9, $t0
/* 22E8C 80033F2C 01212021 */  addu    $a0, $t1, $at
/* 22E90 80033F30 0C00CF84 */  jal     func_80033E10
/* 22E94 80033F34 ACA40000 */  sw      $a0, 0x0000($a1)           ## 00000000
/* 22E98 80033F38 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 22E9C 80033F3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 22EA0 80033F40 03E00008 */  jr      $ra
/* 22EA4 80033F44 00000000 */  nop


glabel func_80033F48
/* 22EA8 80033F48 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 22EAC 80033F4C AFB40028 */  sw      $s4, 0x0028($sp)
/* 22EB0 80033F50 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 22EB4 80033F54 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 22EB8 80033F58 AFB60030 */  sw      $s6, 0x0030($sp)
/* 22EBC 80033F5C AFB5002C */  sw      $s5, 0x002C($sp)
/* 22EC0 80033F60 AFB30024 */  sw      $s3, 0x0024($sp)
/* 22EC4 80033F64 AFB20020 */  sw      $s2, 0x0020($sp)
/* 22EC8 80033F68 AFB1001C */  sw      $s1, 0x001C($sp)
/* 22ECC 80033F6C AFB00018 */  sw      $s0, 0x0018($sp)
/* 22ED0 80033F70 24930050 */  addiu   $s3, $a0, 0x0050           ## $s3 = 00000050
/* 22ED4 80033F74 02609025 */  or      $s2, $s3, $zero            ## $s2 = 00000050
/* 22ED8 80033F78 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 22EDC 80033F7C 24160032 */  addiu   $s6, $zero, 0x0032         ## $s6 = 00000032
/* 22EE0 80033F80 24150064 */  addiu   $s5, $zero, 0x0064         ## $s5 = 00000064
.L80033F84:
/* 22EE4 80033F84 9642138C */  lhu     $v0, 0x138C($s2)           ## 000013DC
/* 22EE8 80033F88 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 22EEC 80033F8C 11C0000B */  beq     $t6, $zero, .L80033FBC
/* 22EF0 80033F90 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 22EF4 80033F94 55E0000A */  bnel    $t7, $zero, .L80033FC0
/* 22EF8 80033F98 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 22EFC 80033F9C 02350019 */  multu   $s1, $s5
/* 22F00 80033FA0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 22F04 80033FA4 0000C012 */  mflo    $t8
/* 22F08 80033FA8 02788021 */  addu    $s0, $s3, $t8
/* 22F0C 80033FAC 0C0083E9 */  jal     Actor_SetObjectDependency
/* 22F10 80033FB0 8E050004 */  lw      $a1, 0x0004($s0)           ## 00000004
/* 22F14 80033FB4 0C00CF84 */  jal     func_80033E10
/* 22F18 80033FB8 8E040008 */  lw      $a0, 0x0008($s0)           ## 00000008
.L80033FBC:
/* 22F1C 80033FBC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L80033FC0:
/* 22F20 80033FC0 1636FFF0 */  bne     $s1, $s6, .L80033F84
/* 22F24 80033FC4 26520002 */  addiu   $s2, $s2, 0x0002           ## $s2 = 00000052
/* 22F28 80033FC8 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 22F2C 80033FCC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 22F30 80033FD0 8FB1001C */  lw      $s1, 0x001C($sp)
/* 22F34 80033FD4 8FB20020 */  lw      $s2, 0x0020($sp)
/* 22F38 80033FD8 8FB30024 */  lw      $s3, 0x0024($sp)
/* 22F3C 80033FDC 8FB40028 */  lw      $s4, 0x0028($sp)
/* 22F40 80033FE0 8FB5002C */  lw      $s5, 0x002C($sp)
/* 22F44 80033FE4 8FB60030 */  lw      $s6, 0x0030($sp)
/* 22F48 80033FE8 03E00008 */  jr      $ra
/* 22F4C 80033FEC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


glabel func_80033FF0
/* 22F50 80033FF0 8C820008 */  lw      $v0, 0x0008($a0)           ## 00000008
/* 22F54 80033FF4 00457021 */  addu    $t6, $v0, $a1
/* 22F58 80033FF8 004E082B */  sltu    $at, $v0, $t6
/* 22F5C 80033FFC 10200008 */  beq     $at, $zero, .L80034020
/* 22F60 80034000 00000000 */  nop
/* 22F64 80034004 A0400000 */  sb      $zero, 0x0000($v0)         ## 00000000
.L80034008:
/* 22F68 80034008 8C8F0008 */  lw      $t7, 0x0008($a0)           ## 00000008
/* 22F6C 8003400C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 22F70 80034010 01E5C021 */  addu    $t8, $t7, $a1
/* 22F74 80034014 0058082B */  sltu    $at, $v0, $t8
/* 22F78 80034018 5420FFFB */  bnel    $at, $zero, .L80034008
/* 22F7C 8003401C A0400000 */  sb      $zero, 0x0000($v0)         ## 00000001
.L80034020:
/* 22F80 80034020 03E00008 */  jr      $ra
/* 22F84 80034024 00000000 */  nop


glabel func_80034028
/* 22F88 80034028 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 22F8C 8003402C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 22F90 80034030 AFA5001C */  sw      $a1, 0x001C($sp)
/* 22F94 80034034 AFA70024 */  sw      $a3, 0x0024($sp)
/* 22F98 80034038 0C00BC15 */  jal     func_8002F054
/* 22F9C 8003403C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 22FA0 80034040 10400003 */  beq     $v0, $zero, .L80034050
/* 22FA4 80034044 8FA4001C */  lw      $a0, 0x001C($sp)
/* 22FA8 80034048 14800003 */  bne     $a0, $zero, .L80034058
/* 22FAC 8003404C 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
.L80034050:
/* 22FB0 80034050 1000000F */  beq     $zero, $zero, .L80034090
/* 22FB4 80034054 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034058:
/* 22FB8 80034058 8C43001C */  lw      $v1, 0x001C($v0)           ## 0000001C
/* 22FBC 8003405C 8DEF0C38 */  lw      $t7, 0x0C38($t7)           ## 80120C38
/* 22FC0 80034060 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 22FC4 80034064 00617021 */  addu    $t6, $v1, $at
/* 22FC8 80034068 15CF0003 */  bne     $t6, $t7, .L80034078
/* 22FCC 8003406C 8FA90024 */  lw      $t1, 0x0024($sp)
/* 22FD0 80034070 10000007 */  beq     $zero, $zero, .L80034090
/* 22FD4 80034074 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034078:
/* 22FD8 80034078 94980000 */  lhu     $t8, 0x0000($a0)           ## 00000000
/* 22FDC 8003407C 00095080 */  sll     $t2, $t1,  2
/* 22FE0 80034080 0018C8C0 */  sll     $t9, $t8,  3
/* 22FE4 80034084 00794021 */  addu    $t0, $v1, $t9
/* 22FE8 80034088 010A5821 */  addu    $t3, $t0, $t2
/* 22FEC 8003408C 8D620000 */  lw      $v0, 0x0000($t3)           ## 00000000
.L80034090:
/* 22FF0 80034090 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 22FF4 80034094 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 22FF8 80034098 03E00008 */  jr      $ra
/* 22FFC 8003409C 00000000 */  nop


glabel func_800340A0
/* 23000 800340A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23004 800340A4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23008 800340A8 0C00D00A */  jal     func_80034028
/* 2300C 800340AC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 23010 800340B0 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 23014 800340B4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23018 800340B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 2301C 800340BC 03E00008 */  jr      $ra
/* 23020 800340C0 00000000 */  nop


glabel func_800340C4
/* 23024 800340C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23028 800340C8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 2302C 800340CC AFA5001C */  sw      $a1, 0x001C($sp)
/* 23030 800340D0 0C00BC15 */  jal     func_8002F054
/* 23034 800340D4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 23038 800340D8 14400003 */  bne     $v0, $zero, .L800340E8
/* 2303C 800340DC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 23040 800340E0 10000006 */  beq     $zero, $zero, .L800340FC
/* 23044 800340E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800340E8:
/* 23048 800340E8 8FAE001C */  lw      $t6, 0x001C($sp)
/* 2304C 800340EC 8CA30020 */  lw      $v1, 0x0020($a1)           ## 00000020
/* 23050 800340F0 000E78C0 */  sll     $t7, $t6,  3
/* 23054 800340F4 006FC021 */  addu    $t8, $v1, $t7
/* 23058 800340F8 97020000 */  lhu     $v0, 0x0000($t8)           ## 00000000
.L800340FC:
/* 2305C 800340FC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23060 80034100 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 23064 80034104 03E00008 */  jr      $ra
/* 23068 80034108 00000000 */  nop


glabel func_8003410C
/* 2306C 8003410C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23070 80034110 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23074 80034114 AFA40018 */  sw      $a0, 0x0018($sp)
/* 23078 80034118 AFA5001C */  sw      $a1, 0x001C($sp)
/* 2307C 8003411C AFA60020 */  sw      $a2, 0x0020($sp)
/* 23080 80034120 8FA40018 */  lw      $a0, 0x0018($sp)
/* 23084 80034124 0C00BC15 */  jal     func_8002F054
/* 23088 80034128 8FA50020 */  lw      $a1, 0x0020($sp)
/* 2308C 8003412C 14400003 */  bne     $v0, $zero, .L8003413C
/* 23090 80034130 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 23094 80034134 10000016 */  beq     $zero, $zero, .L80034190
/* 23098 80034138 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8003413C:
/* 2309C 8003413C 8C840C38 */  lw      $a0, 0x0C38($a0)           ## 80120C38
/* 230A0 80034140 8C430020 */  lw      $v1, 0x0020($v0)           ## 00000020
/* 230A4 80034144 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 230A8 80034148 00812021 */  addu    $a0, $a0, $at
/* 230AC 8003414C 54640004 */  bnel    $v1, $a0, .L80034160
/* 230B0 80034150 8C43001C */  lw      $v1, 0x001C($v0)           ## 0000001C
/* 230B4 80034154 1000000E */  beq     $zero, $zero, .L80034190
/* 230B8 80034158 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 230BC 8003415C 8C43001C */  lw      $v1, 0x001C($v0)           ## 0000001C
.L80034160:
/* 230C0 80034160 8FA5001C */  lw      $a1, 0x001C($sp)
/* 230C4 80034164 8FA60020 */  lw      $a2, 0x0020($sp)
/* 230C8 80034168 14640003 */  bne     $v1, $a0, .L80034178
/* 230CC 8003416C 00000000 */  nop
/* 230D0 80034170 10000007 */  beq     $zero, $zero, .L80034190
/* 230D4 80034174 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034178:
/* 230D8 80034178 0C00D028 */  jal     func_800340A0
/* 230DC 8003417C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 230E0 80034180 8FA40018 */  lw      $a0, 0x0018($sp)
/* 230E4 80034184 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 230E8 80034188 0C00D031 */  jal     func_800340C4
/* 230EC 8003418C 8FA60020 */  lw      $a2, 0x0020($sp)
.L80034190:
/* 230F0 80034190 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 230F4 80034194 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 230F8 80034198 03E00008 */  jr      $ra
/* 230FC 8003419C 00000000 */  nop


glabel func_800341A0
/* 23100 800341A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23104 800341A4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23108 800341A8 AFA5001C */  sw      $a1, 0x001C($sp)
/* 2310C 800341AC 0C00BC15 */  jal     func_8002F054
/* 23110 800341B0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 23114 800341B4 14400003 */  bne     $v0, $zero, .L800341C4
/* 23118 800341B8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2311C 800341BC 1000000D */  beq     $zero, $zero, .L800341F4
/* 23120 800341C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800341C4:
/* 23124 800341C4 8C430020 */  lw      $v1, 0x0020($v0)           ## 00000020
/* 23128 800341C8 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 2312C 800341CC 8DEF0C38 */  lw      $t7, 0x0C38($t7)           ## 80120C38
/* 23130 800341D0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 23134 800341D4 00617021 */  addu    $t6, $v1, $at
/* 23138 800341D8 15CF0003 */  bne     $t6, $t7, .L800341E8
/* 2313C 800341DC 8FB8001C */  lw      $t8, 0x001C($sp)
/* 23140 800341E0 10000004 */  beq     $zero, $zero, .L800341F4
/* 23144 800341E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800341E8:
/* 23148 800341E8 0018C8C0 */  sll     $t9, $t8,  3
/* 2314C 800341EC 00794021 */  addu    $t0, $v1, $t9
/* 23150 800341F0 95020002 */  lhu     $v0, 0x0002($t0)           ## 00000002
.L800341F4:
/* 23154 800341F4 03E00008 */  jr      $ra
/* 23158 800341F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_800341FC
/* 2315C 800341FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23160 80034200 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23164 80034204 AFA40018 */  sw      $a0, 0x0018($sp)
/* 23168 80034208 AFA5001C */  sw      $a1, 0x001C($sp)
/* 2316C 8003420C AFA60020 */  sw      $a2, 0x0020($sp)
/* 23170 80034210 8FA40018 */  lw      $a0, 0x0018($sp)
/* 23174 80034214 0C00BC15 */  jal     func_8002F054
/* 23178 80034218 8FA50020 */  lw      $a1, 0x0020($sp)
/* 2317C 8003421C 14400003 */  bne     $v0, $zero, .L8003422C
/* 23180 80034220 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 23184 80034224 10000016 */  beq     $zero, $zero, .L80034280
/* 23188 80034228 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8003422C:
/* 2318C 8003422C 8C840C38 */  lw      $a0, 0x0C38($a0)           ## 80120C38
/* 23190 80034230 8C430020 */  lw      $v1, 0x0020($v0)           ## 00000020
/* 23194 80034234 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 23198 80034238 00812021 */  addu    $a0, $a0, $at
/* 2319C 8003423C 54640004 */  bnel    $v1, $a0, .L80034250
/* 231A0 80034240 8C43001C */  lw      $v1, 0x001C($v0)           ## 0000001C
/* 231A4 80034244 1000000E */  beq     $zero, $zero, .L80034280
/* 231A8 80034248 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 231AC 8003424C 8C43001C */  lw      $v1, 0x001C($v0)           ## 0000001C
.L80034250:
/* 231B0 80034250 8FA5001C */  lw      $a1, 0x001C($sp)
/* 231B4 80034254 8FA60020 */  lw      $a2, 0x0020($sp)
/* 231B8 80034258 14640003 */  bne     $v1, $a0, .L80034268
/* 231BC 8003425C 00000000 */  nop
/* 231C0 80034260 10000007 */  beq     $zero, $zero, .L80034280
/* 231C4 80034264 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034268:
/* 231C8 80034268 0C00D028 */  jal     func_800340A0
/* 231CC 8003426C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 231D0 80034270 8FA40018 */  lw      $a0, 0x0018($sp)
/* 231D4 80034274 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 231D8 80034278 0C00D068 */  jal     func_800341A0
/* 231DC 8003427C 8FA60020 */  lw      $a2, 0x0020($sp)
.L80034280:
/* 231E0 80034280 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 231E4 80034284 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 231E8 80034288 03E00008 */  jr      $ra
/* 231EC 8003428C 00000000 */  nop


glabel func_80034290
/* 231F0 80034290 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 231F4 80034294 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 231F8 80034298 AFA5001C */  sw      $a1, 0x001C($sp)
/* 231FC 8003429C 0C00BC15 */  jal     func_8002F054
/* 23200 800342A0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 23204 800342A4 14400003 */  bne     $v0, $zero, .L800342B4
/* 23208 800342A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2320C 800342AC 10000018 */  beq     $zero, $zero, .L80034310
/* 23210 800342B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800342B4:
/* 23214 800342B4 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 23218 800342B8 24A50C38 */  addiu   $a1, $a1, 0x0C38           ## $a1 = 80120C38
/* 2321C 800342BC 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 80120C38
/* 23220 800342C0 8C440020 */  lw      $a0, 0x0020($v0)           ## 00000020
/* 23224 800342C4 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 23228 800342C8 01C67821 */  addu    $t7, $t6, $a2
/* 2322C 800342CC 148F0003 */  bne     $a0, $t7, .L800342DC
/* 23230 800342D0 8FB8001C */  lw      $t8, 0x001C($sp)
/* 23234 800342D4 1000000E */  beq     $zero, $zero, .L80034310
/* 23238 800342D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800342DC:
/* 2323C 800342DC 0018C8C0 */  sll     $t9, $t8,  3
/* 23240 800342E0 00994021 */  addu    $t0, $a0, $t9
/* 23244 800342E4 8D030004 */  lw      $v1, 0x0004($t0)           ## 00000004
/* 23248 800342E8 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 2324C 800342EC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 23250 800342F0 00035100 */  sll     $t2, $v1,  4
/* 23254 800342F4 000A5F02 */  srl     $t3, $t2, 28
/* 23258 800342F8 000B6080 */  sll     $t4, $t3,  2
/* 2325C 800342FC 00AC6821 */  addu    $t5, $a1, $t4
/* 23260 80034300 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 23264 80034304 00614824 */  and     $t1, $v1, $at
/* 23268 80034308 012E7821 */  addu    $t7, $t1, $t6
/* 2326C 8003430C 01E61021 */  addu    $v0, $t7, $a2
.L80034310:
/* 23270 80034310 03E00008 */  jr      $ra
/* 23274 80034314 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_80034318
/* 23278 80034318 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 2327C 8003431C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23280 80034320 AFA40018 */  sw      $a0, 0x0018($sp)
/* 23284 80034324 AFA5001C */  sw      $a1, 0x001C($sp)
/* 23288 80034328 AFA60020 */  sw      $a2, 0x0020($sp)
/* 2328C 8003432C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 23290 80034330 0C00BC15 */  jal     func_8002F054
/* 23294 80034334 8FA50020 */  lw      $a1, 0x0020($sp)
/* 23298 80034338 14400003 */  bne     $v0, $zero, .L80034348
/* 2329C 8003433C 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 232A0 80034340 10000016 */  beq     $zero, $zero, .L8003439C
/* 232A4 80034344 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034348:
/* 232A8 80034348 8C840C38 */  lw      $a0, 0x0C38($a0)           ## 80120C38
/* 232AC 8003434C 8C430020 */  lw      $v1, 0x0020($v0)           ## 00000020
/* 232B0 80034350 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 232B4 80034354 00812021 */  addu    $a0, $a0, $at
/* 232B8 80034358 54640004 */  bnel    $v1, $a0, .L8003436C
/* 232BC 8003435C 8C43001C */  lw      $v1, 0x001C($v0)           ## 0000001C
/* 232C0 80034360 1000000E */  beq     $zero, $zero, .L8003439C
/* 232C4 80034364 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 232C8 80034368 8C43001C */  lw      $v1, 0x001C($v0)           ## 0000001C
.L8003436C:
/* 232CC 8003436C 8FA5001C */  lw      $a1, 0x001C($sp)
/* 232D0 80034370 8FA60020 */  lw      $a2, 0x0020($sp)
/* 232D4 80034374 14640003 */  bne     $v1, $a0, .L80034384
/* 232D8 80034378 00000000 */  nop
/* 232DC 8003437C 10000007 */  beq     $zero, $zero, .L8003439C
/* 232E0 80034380 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034384:
/* 232E4 80034384 0C00D028 */  jal     func_800340A0
/* 232E8 80034388 8FA40018 */  lw      $a0, 0x0018($sp)
/* 232EC 8003438C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 232F0 80034390 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 232F4 80034394 0C00D0A4 */  jal     func_80034290
/* 232F8 80034398 8FA60020 */  lw      $a2, 0x0020($sp)
.L8003439C:
/* 232FC 8003439C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23300 800343A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 23304 800343A4 03E00008 */  jr      $ra
/* 23308 800343A8 00000000 */  nop


glabel func_800343AC
/* 2330C 800343AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23310 800343B0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23314 800343B4 0C00D00A */  jal     func_80034028
/* 23318 800343B8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 2331C 800343BC 00021202 */  srl     $v0, $v0,  8
/* 23320 800343C0 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 23324 800343C4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23328 800343C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 2332C 800343CC 03E00008 */  jr      $ra
/* 23330 800343D0 00000000 */  nop


glabel func_800343D4
/* 23334 800343D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23338 800343D8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 2333C 800343DC 0C00D00A */  jal     func_80034028
/* 23340 800343E0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 23344 800343E4 00021342 */  srl     $v0, $v0, 13
/* 23348 800343E8 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 2334C 800343EC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23350 800343F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 23354 800343F4 03E00008 */  jr      $ra
/* 23358 800343F8 00000000 */  nop


glabel func_800343FC
/* 2335C 800343FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23360 80034400 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23364 80034404 0C00D00A */  jal     func_80034028
/* 23368 80034408 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 2336C 8003440C 00021482 */  srl     $v0, $v0, 18
/* 23370 80034410 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 23374 80034414 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23378 80034418 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 2337C 8003441C 03E00008 */  jr      $ra
/* 23380 80034420 00000000 */  nop


glabel func_80034424
/* 23384 80034424 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23388 80034428 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 2338C 8003442C 0C00D00A */  jal     func_80034028
/* 23390 80034430 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 23394 80034434 00021542 */  srl     $v0, $v0, 21
/* 23398 80034438 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 2339C 8003443C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 233A0 80034440 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 233A4 80034444 03E00008 */  jr      $ra
/* 233A8 80034448 00000000 */  nop


glabel func_8003444C
/* 233AC 8003444C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 233B0 80034450 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 233B4 80034454 0C00D109 */  jal     func_80034424
/* 233B8 80034458 00000000 */  nop
/* 233BC 8003445C 00027080 */  sll     $t6, $v0,  2
/* 233C0 80034460 3C02800F */  lui     $v0, 0x800F                ## $v0 = 800F0000
/* 233C4 80034464 004E1021 */  addu    $v0, $v0, $t6
/* 233C8 80034468 8C42C020 */  lw      $v0, -0x3FE0($v0)          ## 800EC020
/* 233CC 8003446C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 233D0 80034470 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 233D4 80034474 03E00008 */  jr      $ra
/* 233D8 80034478 00000000 */  nop


glabel func_8003447C
/* 233DC 8003447C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 233E0 80034480 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 233E4 80034484 0C00D113 */  jal     func_8003444C
/* 233E8 80034488 00000000 */  nop
/* 233EC 8003448C 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 233F0 80034490 11C00003 */  beq     $t6, $zero, .L800344A0
/* 233F4 80034494 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 233F8 80034498 10000002 */  beq     $zero, $zero, .L800344A4
/* 233FC 8003449C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L800344A0:
/* 23400 800344A0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L800344A4:
/* 23404 800344A4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 23408 800344A8 03E00008 */  jr      $ra
/* 2340C 800344AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_800344B0
/* 23410 800344B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23414 800344B4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23418 800344B8 0C00D113 */  jal     func_8003444C
/* 2341C 800344BC 00000000 */  nop
/* 23420 800344C0 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 23424 800344C4 11C00003 */  beq     $t6, $zero, .L800344D4
/* 23428 800344C8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2342C 800344CC 10000002 */  beq     $zero, $zero, .L800344D8
/* 23430 800344D0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L800344D4:
/* 23434 800344D4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L800344D8:
/* 23438 800344D8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 2343C 800344DC 03E00008 */  jr      $ra
/* 23440 800344E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_800344E4
/* 23444 800344E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23448 800344E8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 2344C 800344EC 0C00D113 */  jal     func_8003444C
/* 23450 800344F0 00000000 */  nop
/* 23454 800344F4 304E0004 */  andi    $t6, $v0, 0x0004           ## $t6 = 00000000
/* 23458 800344F8 11C00003 */  beq     $t6, $zero, .L80034508
/* 2345C 800344FC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23460 80034500 10000002 */  beq     $zero, $zero, .L8003450C
/* 23464 80034504 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80034508:
/* 23468 80034508 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8003450C:
/* 2346C 8003450C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 23470 80034510 03E00008 */  jr      $ra
/* 23474 80034514 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_80034518
/* 23478 80034518 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 2347C 8003451C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23480 80034520 0C00D00A */  jal     func_80034028
/* 23484 80034524 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 23488 80034528 00021682 */  srl     $v0, $v0, 26
/* 2348C 8003452C 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 23490 80034530 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23494 80034534 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 23498 80034538 03E00008 */  jr      $ra
/* 2349C 8003453C 00000000 */  nop


glabel func_80034540
/* 234A0 80034540 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 234A4 80034544 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 234A8 80034548 0C00D00A */  jal     func_80034028
/* 234AC 8003454C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 234B0 80034550 00021682 */  srl     $v0, $v0, 26
/* 234B4 80034554 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 234B8 80034558 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 234BC 8003455C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 234C0 80034560 03E00008 */  jr      $ra
/* 234C4 80034564 00000000 */  nop


glabel func_80034568
/* 234C8 80034568 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 234CC 8003456C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 234D0 80034570 0C00D00A */  jal     func_80034028
/* 234D4 80034574 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 234D8 80034578 00021782 */  srl     $v0, $v0, 30
/* 234DC 8003457C 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 234E0 80034580 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 234E4 80034584 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 234E8 80034588 03E00008 */  jr      $ra
/* 234EC 8003458C 00000000 */  nop


glabel func_80034590
/* 234F0 80034590 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 234F4 80034594 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 234F8 80034598 0C00D00A */  jal     func_80034028
/* 234FC 8003459C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 23500 800345A0 000217C2 */  srl     $v0, $v0, 31
/* 23504 800345A4 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 23508 800345A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2350C 800345AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 23510 800345B0 03E00008 */  jr      $ra
/* 23514 800345B4 00000000 */  nop


glabel func_800345B8
/* 23518 800345B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 2351C 800345BC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23520 800345C0 0C00D00A */  jal     func_80034028
/* 23524 800345C4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 23528 800345C8 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 2352C 800345CC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23530 800345D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 23534 800345D4 03E00008 */  jr      $ra
/* 23538 800345D8 00000000 */  nop


glabel func_800345DC
/* 2353C 800345DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23540 800345E0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23544 800345E4 0C00D16E */  jal     func_800345B8
/* 23548 800345E8 00000000 */  nop
/* 2354C 800345EC 04400004 */  bltz    $v0, .L80034600
/* 23550 800345F0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 23554 800345F4 2841000E */  slti    $at, $v0, 0x000E
/* 23558 800345F8 14200003 */  bne     $at, $zero, .L80034608
/* 2355C 800345FC 00037040 */  sll     $t6, $v1,  1
.L80034600:
/* 23560 80034600 10000004 */  beq     $zero, $zero, .L80034614
/* 23564 80034604 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034608:
/* 23568 80034608 3C02800F */  lui     $v0, 0x800F                ## $v0 = 800F0000
/* 2356C 8003460C 004E1021 */  addu    $v0, $v0, $t6
/* 23570 80034610 9442C0A0 */  lhu     $v0, -0x3F60($v0)          ## 800EC0A0
.L80034614:
/* 23574 80034614 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23578 80034618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 2357C 8003461C 03E00008 */  jr      $ra
/* 23580 80034620 00000000 */  nop


glabel func_80034624
/* 23584 80034624 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23588 80034628 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 2358C 8003462C 0C00D00A */  jal     func_80034028
/* 23590 80034630 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 23594 80034634 00021102 */  srl     $v0, $v0,  4
/* 23598 80034638 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 2359C 8003463C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 235A0 80034640 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 235A4 80034644 03E00008 */  jr      $ra
/* 235A8 80034648 00000000 */  nop


glabel func_8003464C
/* 235AC 8003464C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 235B0 80034650 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 235B4 80034654 0C00D00A */  jal     func_80034028
/* 235B8 80034658 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 235BC 8003465C 00021182 */  srl     $v0, $v0,  6
/* 235C0 80034660 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 235C4 80034664 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 235C8 80034668 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 235CC 8003466C 03E00008 */  jr      $ra
/* 235D0 80034670 00000000 */  nop


glabel func_80034674
/* 235D4 80034674 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 235D8 80034678 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 235DC 8003467C 0C00D00A */  jal     func_80034028
/* 235E0 80034680 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 235E4 80034684 000212C2 */  srl     $v0, $v0, 11
/* 235E8 80034688 3042003F */  andi    $v0, $v0, 0x003F           ## $v0 = 00000000
/* 235EC 8003468C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 235F0 80034690 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 235F4 80034694 03E00008 */  jr      $ra
/* 235F8 80034698 00000000 */  nop


glabel func_8003469C
/* 235FC 8003469C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23600 800346A0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23604 800346A4 0C00D00A */  jal     func_80034028
/* 23608 800346A8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 2360C 800346AC 00021442 */  srl     $v0, $v0, 17
/* 23610 800346B0 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 23614 800346B4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23618 800346B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 2361C 800346BC 03E00008 */  jr      $ra
/* 23620 800346C0 00000000 */  nop


glabel func_800346C4
/* 23624 800346C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23628 800346C8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 2362C 800346CC AFA5001C */  sw      $a1, 0x001C($sp)
/* 23630 800346D0 0C00BC15 */  jal     func_8002F054
/* 23634 800346D4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 23638 800346D8 14400003 */  bne     $v0, $zero, .L800346E8
/* 2363C 800346DC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23640 800346E0 10000005 */  beq     $zero, $zero, .L800346F8
/* 23644 800346E4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L800346E8:
/* 23648 800346E8 8FAE001C */  lw      $t6, 0x001C($sp)
/* 2364C 800346EC 95C30002 */  lhu     $v1, 0x0002($t6)           ## 00000002
/* 23650 800346F0 30634000 */  andi    $v1, $v1, 0x4000           ## $v1 = 00000000
/* 23654 800346F4 0003102B */  sltu    $v0, $zero, $v1
.L800346F8:
/* 23658 800346F8 03E00008 */  jr      $ra
/* 2365C 800346FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_80034700
/* 23660 80034700 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23664 80034704 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23668 80034708 AFA5001C */  sw      $a1, 0x001C($sp)
/* 2366C 8003470C 0C00BC15 */  jal     func_8002F054
/* 23670 80034710 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 23674 80034714 14400003 */  bne     $v0, $zero, .L80034724
/* 23678 80034718 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2367C 8003471C 10000005 */  beq     $zero, $zero, .L80034734
/* 23680 80034720 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80034724:
/* 23684 80034724 8FAE001C */  lw      $t6, 0x001C($sp)
/* 23688 80034728 95C30002 */  lhu     $v1, 0x0002($t6)           ## 00000002
/* 2368C 8003472C 30638000 */  andi    $v1, $v1, 0x8000           ## $v1 = 00000000
/* 23690 80034730 0003102B */  sltu    $v0, $zero, $v1
.L80034734:
/* 23694 80034734 03E00008 */  jr      $ra
/* 23698 80034738 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_8003473C
/* 2369C 8003473C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 236A0 80034740 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 236A4 80034744 AFA5001C */  sw      $a1, 0x001C($sp)
/* 236A8 80034748 0C00BC15 */  jal     func_8002F054
/* 236AC 8003474C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 236B0 80034750 14400003 */  bne     $v0, $zero, .L80034760
/* 236B4 80034754 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 236B8 80034758 10000005 */  beq     $zero, $zero, .L80034770
/* 236BC 8003475C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80034760:
/* 236C0 80034760 8FAE001C */  lw      $t6, 0x001C($sp)
/* 236C4 80034764 95C30004 */  lhu     $v1, 0x0004($t6)           ## 00000004
/* 236C8 80034768 30632000 */  andi    $v1, $v1, 0x2000           ## $v1 = 00000000
/* 236CC 8003476C 0003102B */  sltu    $v0, $zero, $v1
.L80034770:
/* 236D0 80034770 03E00008 */  jr      $ra
/* 236D4 80034774 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_80034778
/* 236D8 80034778 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 236DC 8003477C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 236E0 80034780 0C00D00A */  jal     func_80034028
/* 236E4 80034784 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 236E8 80034788 00021482 */  srl     $v0, $v0, 18
/* 236EC 8003478C 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 236F0 80034790 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 236F4 80034794 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 236F8 80034798 03E00008 */  jr      $ra
/* 236FC 8003479C 00000000 */  nop


glabel func_800347A0
/* 23700 800347A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23704 800347A4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23708 800347A8 0C00D00A */  jal     func_80034028
/* 2370C 800347AC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 23710 800347B0 00021542 */  srl     $v0, $v0, 21
/* 23714 800347B4 3042003F */  andi    $v0, $v0, 0x003F           ## $v0 = 00000000
/* 23718 800347B8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2371C 800347BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 23720 800347C0 03E00008 */  jr      $ra
/* 23724 800347C4 00000000 */  nop


glabel func_800347C8
/* 23728 800347C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 2372C 800347CC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23730 800347D0 0C00D00A */  jal     func_80034028
/* 23734 800347D4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 23738 800347D8 00027100 */  sll     $t6, $v0,  4
/* 2373C 800347DC 05C10003 */  bgez    $t6, .L800347EC
/* 23740 800347E0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23744 800347E4 10000002 */  beq     $zero, $zero, .L800347F0
/* 23748 800347E8 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L800347EC:
/* 2374C 800347EC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L800347F0:
/* 23750 800347F0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 23754 800347F4 03E00008 */  jr      $ra
/* 23758 800347F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_800347FC
/* 2375C 800347FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 23760 80034800 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 23764 80034804 44877000 */  mtc1    $a3, $f14                  ## $f14 = 0.00
/* 23768 80034808 AFBF001C */  sw      $ra, 0x001C($sp)
/* 2376C 8003480C 848E00A4 */  lh      $t6, 0x00A4($a0)           ## 000000A4
/* 23770 80034810 24010058 */  addiu   $at, $zero, 0x0058         ## $at = 00000058
/* 23774 80034814 15C10031 */  bne     $t6, $at, .L800348DC
/* 23778 80034818 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 2377C 8003481C C424C14C */  lwc1    $f4, -0x3EB4($at)          ## 800EC14C
/* 23780 80034820 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 23784 80034824 460C203C */  c.lt.s  $f4, $f12
/* 23788 80034828 00000000 */  nop
/* 2378C 8003482C 4502002C */  bc1fl   .L800348E0
/* 23790 80034830 8FA90030 */  lw      $t1, 0x0030($sp)
/* 23794 80034834 C426C158 */  lwc1    $f6, -0x3EA8($at)          ## 800EC158
/* 23798 80034838 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 2379C 8003483C 8FAF0030 */  lw      $t7, 0x0030($sp)
/* 237A0 80034840 4606603C */  c.lt.s  $f12, $f6
/* 237A4 80034844 00000000 */  nop
/* 237A8 80034848 45020025 */  bc1fl   .L800348E0
/* 237AC 8003484C 8FA90030 */  lw      $t1, 0x0030($sp)
/* 237B0 80034850 C5E00000 */  lwc1    $f0, 0x0000($t7)           ## 00000000
/* 237B4 80034854 C428C150 */  lwc1    $f8, -0x3EB0($at)          ## 800EC150
/* 237B8 80034858 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 237BC 8003485C 4600403C */  c.lt.s  $f8, $f0
/* 237C0 80034860 00000000 */  nop
/* 237C4 80034864 4502001E */  bc1fl   .L800348E0
/* 237C8 80034868 8FA90030 */  lw      $t1, 0x0030($sp)
/* 237CC 8003486C C42AC15C */  lwc1    $f10, -0x3EA4($at)         ## 800EC15C
/* 237D0 80034870 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 237D4 80034874 460A003C */  c.lt.s  $f0, $f10
/* 237D8 80034878 00000000 */  nop
/* 237DC 8003487C 45020018 */  bc1fl   .L800348E0
/* 237E0 80034880 8FA90030 */  lw      $t1, 0x0030($sp)
/* 237E4 80034884 C430C154 */  lwc1    $f16, -0x3EAC($at)         ## 800EC154
/* 237E8 80034888 3C01800F */  lui     $at, 0x800F                ## $at = 800F0000
/* 237EC 8003488C 460E803C */  c.lt.s  $f16, $f14
/* 237F0 80034890 00000000 */  nop
/* 237F4 80034894 45020012 */  bc1fl   .L800348E0
/* 237F8 80034898 8FA90030 */  lw      $t1, 0x0030($sp)
/* 237FC 8003489C C432C160 */  lwc1    $f18, -0x3EA0($at)         ## 800EC160
/* 23800 800348A0 8FB80034 */  lw      $t8, 0x0034($sp)
/* 23804 800348A4 4612703C */  c.lt.s  $f14, $f18
/* 23808 800348A8 00000000 */  nop
/* 2380C 800348AC 4500000B */  bc1f    .L800348DC
/* 23810 800348B0 3C03800F */  lui     $v1, 0x800F                ## $v1 = 800F0000
/* 23814 800348B4 2463C13C */  addiu   $v1, $v1, 0xC13C           ## $v1 = 800EC13C
/* 23818 800348B8 AF030000 */  sw      $v1, 0x0000($t8)           ## 00000000
/* 2381C 800348BC 84790002 */  lh      $t9, 0x0002($v1)           ## 800EC13E
/* 23820 800348C0 8FA80030 */  lw      $t0, 0x0030($sp)
/* 23824 800348C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 23828 800348C8 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 2382C 800348CC 00000000 */  nop
/* 23830 800348D0 468021A0 */  cvt.s.w $f6, $f4
/* 23834 800348D4 10000008 */  beq     $zero, $zero, .L800348F8
/* 23838 800348D8 E5060000 */  swc1    $f6, 0x0000($t0)           ## 00000000
.L800348DC:
/* 2383C 800348DC 8FA90030 */  lw      $t1, 0x0030($sp)
.L800348E0:
/* 23840 800348E0 8FAA0034 */  lw      $t2, 0x0034($sp)
/* 23844 800348E4 44066000 */  mfc1    $a2, $f12
/* 23848 800348E8 44077000 */  mfc1    $a3, $f14
/* 2384C 800348EC AFA90010 */  sw      $t1, 0x0010($sp)
/* 23850 800348F0 0C00D242 */  jal     func_80034908
/* 23854 800348F4 AFAA0014 */  sw      $t2, 0x0014($sp)
.L800348F8:
/* 23858 800348F8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 2385C 800348FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 23860 80034900 03E00008 */  jr      $ra
/* 23864 80034904 00000000 */  nop


glabel func_80034908
/* 23868 80034908 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 2386C 8003490C 44877000 */  mtc1    $a3, $f14                  ## $f14 = 0.00
/* 23870 80034910 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 23874 80034914 AFA40000 */  sw      $a0, 0x0000($sp)
/* 23878 80034918 8CA20000 */  lw      $v0, 0x0000($a1)           ## 00000000
/* 2387C 8003491C 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 23880 80034920 94430024 */  lhu     $v1, 0x0024($v0)           ## 00000024
/* 23884 80034924 10600007 */  beq     $v1, $zero, .L80034944
/* 23888 80034928 00000000 */  nop
/* 2388C 8003492C 8C440028 */  lw      $a0, 0x0028($v0)           ## 00000028
/* 23890 80034930 8DEF0C38 */  lw      $t7, 0x0C38($t7)           ## 80120C38
/* 23894 80034934 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 23898 80034938 00817021 */  addu    $t6, $a0, $at
/* 2389C 8003493C 15CF0003 */  bne     $t6, $t7, .L8003494C
/* 238A0 80034940 0003C100 */  sll     $t8, $v1,  4
.L80034944:
/* 238A4 80034944 03E00008 */  jr      $ra
/* 238A8 80034948 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8003494C:
/* 238AC 8003494C 00981021 */  addu    $v0, $a0, $t8
/* 238B0 80034950 0082082B */  sltu    $at, $a0, $v0
/* 238B4 80034954 1020003F */  beq     $at, $zero, .L80034A54
/* 238B8 80034958 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 238BC 8003495C 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 238C0 80034960 00E63821 */  addu    $a3, $a3, $a2
/* 238C4 80034964 80E71CBC */  lb      $a3, 0x1CBC($a3)           ## 00011CBC
/* 238C8 80034968 2406003F */  addiu   $a2, $zero, 0x003F         ## $a2 = 0000003F
/* 238CC 8003496C 3C080008 */  lui     $t0, 0x0008                ## $t0 = 00080000
/* 238D0 80034970 8CA4000C */  lw      $a0, 0x000C($a1)           ## 0000000C
.L80034974:
/* 238D4 80034974 00041B42 */  srl     $v1, $a0, 13
/* 238D8 80034978 3063003F */  andi    $v1, $v1, 0x003F           ## $v1 = 00000000
/* 238DC 8003497C 10670003 */  beq     $v1, $a3, .L8003498C
/* 238E0 80034980 0088C824 */  and     $t9, $a0, $t0
/* 238E4 80034984 54660030 */  bnel    $v1, $a2, .L80034A48
/* 238E8 80034988 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000010
.L8003498C:
/* 238EC 8003498C 5720002E */  bnel    $t9, $zero, .L80034A48
/* 238F0 80034990 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000020
/* 238F4 80034994 84A30000 */  lh      $v1, 0x0000($a1)           ## 00000020
/* 238F8 80034998 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 238FC 8003499C 00000000 */  nop
/* 23900 800349A0 468021A0 */  cvt.s.w $f6, $f4
/* 23904 800349A4 460C303C */  c.lt.s  $f6, $f12
/* 23908 800349A8 00000000 */  nop
/* 2390C 800349AC 45020026 */  bc1fl   .L80034A48
/* 23910 800349B0 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000030
/* 23914 800349B4 84A90006 */  lh      $t1, 0x0006($a1)           ## 00000036
/* 23918 800349B8 00695021 */  addu    $t2, $v1, $t1
/* 2391C 800349BC 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 23920 800349C0 00000000 */  nop
/* 23924 800349C4 468042A0 */  cvt.s.w $f10, $f8
/* 23928 800349C8 460A603C */  c.lt.s  $f12, $f10
/* 2392C 800349CC 00000000 */  nop
/* 23930 800349D0 4502001D */  bc1fl   .L80034A48
/* 23934 800349D4 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000040
/* 23938 800349D8 84A30004 */  lh      $v1, 0x0004($a1)           ## 00000044
/* 2393C 800349DC 44838000 */  mtc1    $v1, $f16                  ## $f16 = 0.00
/* 23940 800349E0 00000000 */  nop
/* 23944 800349E4 468084A0 */  cvt.s.w $f18, $f16
/* 23948 800349E8 460E903C */  c.lt.s  $f18, $f14
/* 2394C 800349EC 00000000 */  nop
/* 23950 800349F0 45020015 */  bc1fl   .L80034A48
/* 23954 800349F4 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000050
/* 23958 800349F8 84AB0008 */  lh      $t3, 0x0008($a1)           ## 00000058
/* 2395C 800349FC 006B6021 */  addu    $t4, $v1, $t3
/* 23960 80034A00 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 23964 80034A04 00000000 */  nop
/* 23968 80034A08 468021A0 */  cvt.s.w $f6, $f4
/* 2396C 80034A0C 4606703C */  c.lt.s  $f14, $f6
/* 23970 80034A10 00000000 */  nop
/* 23974 80034A14 4502000C */  bc1fl   .L80034A48
/* 23978 80034A18 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000060
/* 2397C 80034A1C 8FAD0014 */  lw      $t5, 0x0014($sp)
/* 23980 80034A20 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 23984 80034A24 ADA50000 */  sw      $a1, 0x0000($t5)           ## 00000000
/* 23988 80034A28 84AE0002 */  lh      $t6, 0x0002($a1)           ## 00000062
/* 2398C 80034A2C 8FAF0010 */  lw      $t7, 0x0010($sp)
/* 23990 80034A30 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 23994 80034A34 00000000 */  nop
/* 23998 80034A38 468042A0 */  cvt.s.w $f10, $f8
/* 2399C 80034A3C 03E00008 */  jr      $ra
/* 239A0 80034A40 E5EA0000 */  swc1    $f10, 0x0000($t7)          ## 80120000
.L80034A44:
/* 239A4 80034A44 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000070
.L80034A48:
/* 239A8 80034A48 00A2082B */  sltu    $at, $a1, $v0
/* 239AC 80034A4C 5420FFC9 */  bnel    $at, $zero, .L80034974
/* 239B0 80034A50 8CA4000C */  lw      $a0, 0x000C($a1)           ## 0000007C
.L80034A54:
/* 239B4 80034A54 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 239B8 80034A58 03E00008 */  jr      $ra
/* 239BC 80034A5C 00000000 */  nop


glabel func_80034A60
/* 239C0 80034A60 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 239C4 80034A64 AFB00004 */  sw      $s0, 0x0004($sp)
/* 239C8 80034A68 44876000 */  mtc1    $a3, $f12                  ## $f12 = 0.00
/* 239CC 80034A6C 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 239D0 80034A70 AFA40008 */  sw      $a0, 0x0008($sp)
/* 239D4 80034A74 8CA20000 */  lw      $v0, 0x0000($a1)           ## 00000000
/* 239D8 80034A78 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 239DC 80034A7C 8FB80018 */  lw      $t8, 0x0018($sp)
/* 239E0 80034A80 94470024 */  lhu     $a3, 0x0024($v0)           ## 00000024
/* 239E4 80034A84 50E00008 */  beql    $a3, $zero, .L80034AA8
/* 239E8 80034A88 AF000000 */  sw      $zero, 0x0000($t8)         ## 00000000
/* 239EC 80034A8C 8C430028 */  lw      $v1, 0x0028($v0)           ## 00000028
/* 239F0 80034A90 8DEF0C38 */  lw      $t7, 0x0C38($t7)           ## 80120C38
/* 239F4 80034A94 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 239F8 80034A98 00617021 */  addu    $t6, $v1, $at
/* 239FC 80034A9C 15CF0004 */  bne     $t6, $t7, .L80034AB0
/* 23A00 80034AA0 00000000 */  nop
/* 23A04 80034AA4 AF000000 */  sw      $zero, 0x0000($t8)         ## 00000000
.L80034AA8:
/* 23A08 80034AA8 10000051 */  beq     $zero, $zero, .L80034BF0
/* 23A0C 80034AAC 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80034AB0:
/* 23A10 80034AB0 18E0004C */  blez    $a3, .L80034BE4
/* 23A14 80034AB4 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 23A18 80034AB8 8FB90008 */  lw      $t9, 0x0008($sp)
/* 23A1C 80034ABC 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 23A20 80034AC0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 23A24 80034AC4 01194021 */  addu    $t0, $t0, $t9
/* 23A28 80034AC8 81081CBC */  lb      $t0, 0x1CBC($t0)           ## 00011CBC
/* 23A2C 80034ACC 3C0A0008 */  lui     $t2, 0x0008                ## $t2 = 00080000
/* 23A30 80034AD0 2409003F */  addiu   $t1, $zero, 0x003F         ## $t1 = 0000003F
.L80034AD4:
/* 23A34 80034AD4 8C46000C */  lw      $a2, 0x000C($v0)           ## 0000000C
/* 23A38 80034AD8 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 23A3C 80034ADC 00062B42 */  srl     $a1, $a2, 13
/* 23A40 80034AE0 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 23A44 80034AE4 10A80003 */  beq     $a1, $t0, .L80034AF4
/* 23A48 80034AE8 00CA5824 */  and     $t3, $a2, $t2
/* 23A4C 80034AEC 54A9003A */  bnel    $a1, $t1, .L80034BD8
/* 23A50 80034AF0 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
.L80034AF4:
/* 23A54 80034AF4 55600038 */  bnel    $t3, $zero, .L80034BD8
/* 23A58 80034AF8 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000002
/* 23A5C 80034AFC 84650000 */  lh      $a1, 0x0000($v1)           ## 00000000
/* 23A60 80034B00 C6000000 */  lwc1    $f0, 0x0000($s0)           ## 00000000
/* 23A64 80034B04 44852000 */  mtc1    $a1, $f4                   ## $f4 = 0.00
/* 23A68 80034B08 00000000 */  nop
/* 23A6C 80034B0C 468021A0 */  cvt.s.w $f6, $f4
/* 23A70 80034B10 4600303C */  c.lt.s  $f6, $f0
/* 23A74 80034B14 00000000 */  nop
/* 23A78 80034B18 4502002F */  bc1fl   .L80034BD8
/* 23A7C 80034B1C 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000003
/* 23A80 80034B20 846C0006 */  lh      $t4, 0x0006($v1)           ## 00000006
/* 23A84 80034B24 00AC6821 */  addu    $t5, $a1, $t4
/* 23A88 80034B28 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 23A8C 80034B2C 00000000 */  nop
/* 23A90 80034B30 468042A0 */  cvt.s.w $f10, $f8
/* 23A94 80034B34 460A003C */  c.lt.s  $f0, $f10
/* 23A98 80034B38 00000000 */  nop
/* 23A9C 80034B3C 45020026 */  bc1fl   .L80034BD8
/* 23AA0 80034B40 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000004
/* 23AA4 80034B44 84650004 */  lh      $a1, 0x0004($v1)           ## 00000004
/* 23AA8 80034B48 C6000008 */  lwc1    $f0, 0x0008($s0)           ## 00000008
/* 23AAC 80034B4C 44858000 */  mtc1    $a1, $f16                  ## $f16 = 0.00
/* 23AB0 80034B50 00000000 */  nop
/* 23AB4 80034B54 468084A0 */  cvt.s.w $f18, $f16
/* 23AB8 80034B58 4600903C */  c.lt.s  $f18, $f0
/* 23ABC 80034B5C 00000000 */  nop
/* 23AC0 80034B60 4502001D */  bc1fl   .L80034BD8
/* 23AC4 80034B64 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000005
/* 23AC8 80034B68 846E0008 */  lh      $t6, 0x0008($v1)           ## 00000008
/* 23ACC 80034B6C 00AE7821 */  addu    $t7, $a1, $t6
/* 23AD0 80034B70 448F2000 */  mtc1    $t7, $f4                   ## $f4 = -0.00
/* 23AD4 80034B74 00000000 */  nop
/* 23AD8 80034B78 468021A0 */  cvt.s.w $f6, $f4
/* 23ADC 80034B7C 4606003C */  c.lt.s  $f0, $f6
/* 23AE0 80034B80 00000000 */  nop
/* 23AE4 80034B84 45020014 */  bc1fl   .L80034BD8
/* 23AE8 80034B88 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000006
/* 23AEC 80034B8C 84780002 */  lh      $t8, 0x0002($v1)           ## 00000002
/* 23AF0 80034B90 C6000004 */  lwc1    $f0, 0x0004($s0)           ## 00000004
/* 23AF4 80034B94 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 23AF8 80034B98 460C0281 */  sub.s   $f10, $f0, $f12
/* 23AFC 80034B9C 468040A0 */  cvt.s.w $f2, $f8
/* 23B00 80034BA0 4602503C */  c.lt.s  $f10, $f2
/* 23B04 80034BA4 00000000 */  nop
/* 23B08 80034BA8 4502000B */  bc1fl   .L80034BD8
/* 23B0C 80034BAC 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000007
/* 23B10 80034BB0 460C0400 */  add.s   $f16, $f0, $f12
/* 23B14 80034BB4 4610103C */  c.lt.s  $f2, $f16
/* 23B18 80034BB8 00000000 */  nop
/* 23B1C 80034BBC 45020006 */  bc1fl   .L80034BD8
/* 23B20 80034BC0 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000008
/* 23B24 80034BC4 8FB90018 */  lw      $t9, 0x0018($sp)
/* 23B28 80034BC8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 23B2C 80034BCC 10000008 */  beq     $zero, $zero, .L80034BF0
/* 23B30 80034BD0 AF230000 */  sw      $v1, 0x0000($t9)           ## 00000000
/* 23B34 80034BD4 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000009
.L80034BD8:
/* 23B38 80034BD8 0087082A */  slt     $at, $a0, $a3
/* 23B3C 80034BDC 1420FFBD */  bne     $at, $zero, .L80034AD4
/* 23B40 80034BE0 24420010 */  addiu   $v0, $v0, 0x0010           ## $v0 = 00000018
.L80034BE4:
/* 23B44 80034BE4 8FAB0018 */  lw      $t3, 0x0018($sp)
/* 23B48 80034BE8 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 23B4C 80034BEC AD600000 */  sw      $zero, 0x0000($t3)         ## 00000000
.L80034BF0:
/* 23B50 80034BF0 8FB00004 */  lw      $s0, 0x0004($sp)
/* 23B54 80034BF4 03E00008 */  jr      $ra
/* 23B58 80034BF8 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000


glabel func_80034BFC
/* 23B5C 80034BFC AFA40000 */  sw      $a0, 0x0000($sp)
/* 23B60 80034C00 8CA3000C */  lw      $v1, 0x000C($a1)           ## 0000000C
/* 23B64 80034C04 306200FF */  andi    $v0, $v1, 0x00FF           ## $v0 = 00000000
/* 23B68 80034C08 03E00008 */  jr      $ra
/* 23B6C 80034C0C 00000000 */  nop


glabel func_80034C10
/* 23B70 80034C10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23B74 80034C14 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23B78 80034C18 AFA40018 */  sw      $a0, 0x0018($sp)
/* 23B7C 80034C1C 0C00D2FF */  jal     func_80034BFC
/* 23B80 80034C20 8FA40018 */  lw      $a0, 0x0018($sp)
/* 23B84 80034C24 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 23B88 80034C28 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 23B8C 80034C2C 8F390C38 */  lw      $t9, 0x0C38($t9)           ## 80120C38
/* 23B90 80034C30 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 23B94 80034C34 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 23B98 80034C38 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 23B9C 80034C3C 8DE40020 */  lw      $a0, 0x0020($t7)           ## 00000020
/* 23BA0 80034C40 000540C0 */  sll     $t0, $a1,  3
/* 23BA4 80034C44 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 23BA8 80034C48 0081C021 */  addu    $t8, $a0, $at
/* 23BAC 80034C4C 17190003 */  bne     $t8, $t9, .L80034C5C
/* 23BB0 80034C50 00884821 */  addu    $t1, $a0, $t0
/* 23BB4 80034C54 10000002 */  beq     $zero, $zero, .L80034C60
/* 23BB8 80034C58 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034C5C:
/* 23BBC 80034C5C 95220000 */  lhu     $v0, 0x0000($t1)           ## 00000000
.L80034C60:
/* 23BC0 80034C60 03E00008 */  jr      $ra
/* 23BC4 80034C64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_80034C68
/* 23BC8 80034C68 AFA40000 */  sw      $a0, 0x0000($sp)
/* 23BCC 80034C6C 8CA3000C */  lw      $v1, 0x000C($a1)           ## 0000000C
/* 23BD0 80034C70 00031A02 */  srl     $v1, $v1,  8
/* 23BD4 80034C74 3062001F */  andi    $v0, $v1, 0x001F           ## $v0 = 00000000
/* 23BD8 80034C78 03E00008 */  jr      $ra
/* 23BDC 80034C7C 00000000 */  nop


glabel func_80034C80
/* 23BE0 80034C80 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 23BE4 80034C84 44877000 */  mtc1    $a3, $f14                  ## $f14 = 0.00
/* 23BE8 80034C88 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 23BEC 80034C8C AFA40000 */  sw      $a0, 0x0000($sp)
/* 23BF0 80034C90 8CA20000 */  lw      $v0, 0x0000($a1)           ## 00000000
/* 23BF4 80034C94 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 23BF8 80034C98 94430024 */  lhu     $v1, 0x0024($v0)           ## 00000024
/* 23BFC 80034C9C 10600007 */  beq     $v1, $zero, .L80034CBC
/* 23C00 80034CA0 00000000 */  nop
/* 23C04 80034CA4 8C440028 */  lw      $a0, 0x0028($v0)           ## 00000028
/* 23C08 80034CA8 8DEF0C38 */  lw      $t7, 0x0C38($t7)           ## 80120C38
/* 23C0C 80034CAC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 23C10 80034CB0 00817021 */  addu    $t6, $a0, $at
/* 23C14 80034CB4 15CF0003 */  bne     $t6, $t7, .L80034CC4
/* 23C18 80034CB8 0003C100 */  sll     $t8, $v1,  4
.L80034CBC:
/* 23C1C 80034CBC 03E00008 */  jr      $ra
/* 23C20 80034CC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80034CC4:
/* 23C24 80034CC4 00981021 */  addu    $v0, $a0, $t8
/* 23C28 80034CC8 0082082B */  sltu    $at, $a0, $v0
/* 23C2C 80034CCC 1020003F */  beq     $at, $zero, .L80034DCC
/* 23C30 80034CD0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 23C34 80034CD4 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 23C38 80034CD8 00E63821 */  addu    $a3, $a3, $a2
/* 23C3C 80034CDC 80E71CBC */  lb      $a3, 0x1CBC($a3)           ## 00011CBC
/* 23C40 80034CE0 2406003F */  addiu   $a2, $zero, 0x003F         ## $a2 = 0000003F
/* 23C44 80034CE4 3C080008 */  lui     $t0, 0x0008                ## $t0 = 00080000
/* 23C48 80034CE8 8CA4000C */  lw      $a0, 0x000C($a1)           ## 0000000C
.L80034CEC:
/* 23C4C 80034CEC 00041B42 */  srl     $v1, $a0, 13
/* 23C50 80034CF0 3063003F */  andi    $v1, $v1, 0x003F           ## $v1 = 00000000
/* 23C54 80034CF4 10670003 */  beq     $v1, $a3, .L80034D04
/* 23C58 80034CF8 0088C824 */  and     $t9, $a0, $t0
/* 23C5C 80034CFC 54660030 */  bnel    $v1, $a2, .L80034DC0
/* 23C60 80034D00 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000010
.L80034D04:
/* 23C64 80034D04 5320002E */  beql    $t9, $zero, .L80034DC0
/* 23C68 80034D08 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000020
/* 23C6C 80034D0C 84A30000 */  lh      $v1, 0x0000($a1)           ## 00000020
/* 23C70 80034D10 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 23C74 80034D14 00000000 */  nop
/* 23C78 80034D18 468021A0 */  cvt.s.w $f6, $f4
/* 23C7C 80034D1C 460C303C */  c.lt.s  $f6, $f12
/* 23C80 80034D20 00000000 */  nop
/* 23C84 80034D24 45020026 */  bc1fl   .L80034DC0
/* 23C88 80034D28 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000030
/* 23C8C 80034D2C 84A90006 */  lh      $t1, 0x0006($a1)           ## 00000036
/* 23C90 80034D30 00695021 */  addu    $t2, $v1, $t1
/* 23C94 80034D34 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 23C98 80034D38 00000000 */  nop
/* 23C9C 80034D3C 468042A0 */  cvt.s.w $f10, $f8
/* 23CA0 80034D40 460A603C */  c.lt.s  $f12, $f10
/* 23CA4 80034D44 00000000 */  nop
/* 23CA8 80034D48 4502001D */  bc1fl   .L80034DC0
/* 23CAC 80034D4C 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000040
/* 23CB0 80034D50 84A30004 */  lh      $v1, 0x0004($a1)           ## 00000044
/* 23CB4 80034D54 44838000 */  mtc1    $v1, $f16                  ## $f16 = 0.00
/* 23CB8 80034D58 00000000 */  nop
/* 23CBC 80034D5C 468084A0 */  cvt.s.w $f18, $f16
/* 23CC0 80034D60 460E903C */  c.lt.s  $f18, $f14
/* 23CC4 80034D64 00000000 */  nop
/* 23CC8 80034D68 45020015 */  bc1fl   .L80034DC0
/* 23CCC 80034D6C 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000050
/* 23CD0 80034D70 84AB0008 */  lh      $t3, 0x0008($a1)           ## 00000058
/* 23CD4 80034D74 006B6021 */  addu    $t4, $v1, $t3
/* 23CD8 80034D78 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 23CDC 80034D7C 00000000 */  nop
/* 23CE0 80034D80 468021A0 */  cvt.s.w $f6, $f4
/* 23CE4 80034D84 4606703C */  c.lt.s  $f14, $f6
/* 23CE8 80034D88 00000000 */  nop
/* 23CEC 80034D8C 4502000C */  bc1fl   .L80034DC0
/* 23CF0 80034D90 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000060
/* 23CF4 80034D94 8FAD0014 */  lw      $t5, 0x0014($sp)
/* 23CF8 80034D98 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 23CFC 80034D9C ADA50000 */  sw      $a1, 0x0000($t5)           ## 00000000
/* 23D00 80034DA0 84AE0002 */  lh      $t6, 0x0002($a1)           ## 00000062
/* 23D04 80034DA4 8FAF0010 */  lw      $t7, 0x0010($sp)
/* 23D08 80034DA8 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 23D0C 80034DAC 00000000 */  nop
/* 23D10 80034DB0 468042A0 */  cvt.s.w $f10, $f8
/* 23D14 80034DB4 03E00008 */  jr      $ra
/* 23D18 80034DB8 E5EA0000 */  swc1    $f10, 0x0000($t7)          ## 80120000
.L80034DBC:
/* 23D1C 80034DBC 24A50010 */  addiu   $a1, $a1, 0x0010           ## $a1 = 00000070
.L80034DC0:
/* 23D20 80034DC0 00A2082B */  sltu    $at, $a1, $v0
/* 23D24 80034DC4 5420FFC9 */  bnel    $at, $zero, .L80034CEC
/* 23D28 80034DC8 8CA4000C */  lw      $a0, 0x000C($a1)           ## 0000007C
.L80034DCC:
/* 23D2C 80034DCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 23D30 80034DD0 03E00008 */  jr      $ra
/* 23D34 80034DD4 00000000 */  nop


glabel func_80034DD8
/* 23D38 80034DD8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 23D3C 80034DDC AFBF002C */  sw      $ra, 0x002C($sp)
/* 23D40 80034DE0 AFA40048 */  sw      $a0, 0x0048($sp)
/* 23D44 80034DE4 AFA5004C */  sw      $a1, 0x004C($sp)
/* 23D48 80034DE8 AFA60050 */  sw      $a2, 0x0050($sp)
/* 23D4C 80034DEC AFA70054 */  sw      $a3, 0x0054($sp)
/* 23D50 80034DF0 8FA40048 */  lw      $a0, 0x0048($sp)
/* 23D54 80034DF4 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFFC
/* 23D58 80034DF8 27A60040 */  addiu   $a2, $sp, 0x0040           ## $a2 = FFFFFFF8
/* 23D5C 80034DFC 0C00AD84 */  jal     func_8002B610
/* 23D60 80034E00 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFF4
/* 23D64 80034E04 8FA4004C */  lw      $a0, 0x004C($sp)
/* 23D68 80034E08 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF0
/* 23D6C 80034E0C 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFEC
/* 23D70 80034E10 0C00AD84 */  jal     func_8002B610
/* 23D74 80034E14 27A70030 */  addiu   $a3, $sp, 0x0030           ## $a3 = FFFFFFE8
/* 23D78 80034E18 8FAE0048 */  lw      $t6, 0x0048($sp)
/* 23D7C 80034E1C C7A60038 */  lwc1    $f6, 0x0038($sp)
/* 23D80 80034E20 C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 23D84 80034E24 85CF000E */  lh      $t7, 0x000E($t6)           ## 0000000E
/* 23D88 80034E28 C7AA0030 */  lwc1    $f10, 0x0030($sp)
/* 23D8C 80034E2C 8FB8004C */  lw      $t8, 0x004C($sp)
/* 23D90 80034E30 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 23D94 80034E34 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 23D98 80034E38 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 23D9C 80034E3C 8719000E */  lh      $t9, 0x000E($t8)           ## 0000000E
/* 23DA0 80034E40 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 23DA4 80034E44 8FA80050 */  lw      $t0, 0x0050($sp)
/* 23DA8 80034E48 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 23DAC 80034E4C 46802120 */  cvt.s.w $f4, $f4
/* 23DB0 80034E50 8FA90054 */  lw      $t1, 0x0054($sp)
/* 23DB4 80034E54 C7AC0044 */  lwc1    $f12, 0x0044($sp)
/* 23DB8 80034E58 C7AE0040 */  lwc1    $f14, 0x0040($sp)
/* 23DBC 80034E5C 8FA6003C */  lw      $a2, 0x003C($sp)
/* 23DC0 80034E60 468084A0 */  cvt.s.w $f18, $f16
/* 23DC4 80034E64 44072000 */  mfc1    $a3, $f4
/* 23DC8 80034E68 AFA80020 */  sw      $t0, 0x0020($sp)
/* 23DCC 80034E6C AFA90024 */  sw      $t1, 0x0024($sp)
/* 23DD0 80034E70 0C02936A */  jal     func_800A4DA8
/* 23DD4 80034E74 E7B2001C */  swc1    $f18, 0x001C($sp)
/* 23DD8 80034E78 8FBF002C */  lw      $ra, 0x002C($sp)
/* 23DDC 80034E7C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 23DE0 80034E80 03E00008 */  jr      $ra
/* 23DE4 80034E84 00000000 */  nop


glabel func_80034E88
/* 23DE8 80034E88 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 23DEC 80034E8C AFBF0034 */  sw      $ra, 0x0034($sp)
/* 23DF0 80034E90 AFA40058 */  sw      $a0, 0x0058($sp)
/* 23DF4 80034E94 AFA5005C */  sw      $a1, 0x005C($sp)
/* 23DF8 80034E98 AFA60060 */  sw      $a2, 0x0060($sp)
/* 23DFC 80034E9C AFA70064 */  sw      $a3, 0x0064($sp)
/* 23E00 80034EA0 8FA40058 */  lw      $a0, 0x0058($sp)
/* 23E04 80034EA4 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFFC
/* 23E08 80034EA8 27A60050 */  addiu   $a2, $sp, 0x0050           ## $a2 = FFFFFFF8
/* 23E0C 80034EAC 0C00AD84 */  jal     func_8002B610
/* 23E10 80034EB0 27A7004C */  addiu   $a3, $sp, 0x004C           ## $a3 = FFFFFFF4
/* 23E14 80034EB4 8FA4005C */  lw      $a0, 0x005C($sp)
/* 23E18 80034EB8 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFF0
/* 23E1C 80034EBC 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFEC
/* 23E20 80034EC0 0C00AD84 */  jal     func_8002B610
/* 23E24 80034EC4 27A70040 */  addiu   $a3, $sp, 0x0040           ## $a3 = FFFFFFE8
/* 23E28 80034EC8 8FAE0058 */  lw      $t6, 0x0058($sp)
/* 23E2C 80034ECC C7A60048 */  lwc1    $f6, 0x0048($sp)
/* 23E30 80034ED0 C7A80044 */  lwc1    $f8, 0x0044($sp)
/* 23E34 80034ED4 85CF000E */  lh      $t7, 0x000E($t6)           ## 0000000E
/* 23E38 80034ED8 C7AA0040 */  lwc1    $f10, 0x0040($sp)
/* 23E3C 80034EDC 8FB8005C */  lw      $t8, 0x005C($sp)
/* 23E40 80034EE0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 23E44 80034EE4 E7A80014 */  swc1    $f8, 0x0014($sp)
/* 23E48 80034EE8 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 23E4C 80034EEC 8719000E */  lh      $t9, 0x000E($t8)           ## 0000000E
/* 23E50 80034EF0 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 23E54 80034EF4 8FA80060 */  lw      $t0, 0x0060($sp)
/* 23E58 80034EF8 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 23E5C 80034EFC 46802120 */  cvt.s.w $f4, $f4
/* 23E60 80034F00 8FA90064 */  lw      $t1, 0x0064($sp)
/* 23E64 80034F04 8FAA0068 */  lw      $t2, 0x0068($sp)
/* 23E68 80034F08 C7AC0054 */  lwc1    $f12, 0x0054($sp)
/* 23E6C 80034F0C C7AE0050 */  lwc1    $f14, 0x0050($sp)
/* 23E70 80034F10 468084A0 */  cvt.s.w $f18, $f16
/* 23E74 80034F14 44072000 */  mfc1    $a3, $f4
/* 23E78 80034F18 8FA6004C */  lw      $a2, 0x004C($sp)
/* 23E7C 80034F1C AFA80020 */  sw      $t0, 0x0020($sp)
/* 23E80 80034F20 AFA90024 */  sw      $t1, 0x0024($sp)
/* 23E84 80034F24 AFAA0028 */  sw      $t2, 0x0028($sp)
/* 23E88 80034F28 0C0291AC */  jal     func_800A46B0
/* 23E8C 80034F2C E7B2001C */  swc1    $f18, 0x001C($sp)
/* 23E90 80034F30 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 23E94 80034F34 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 23E98 80034F38 03E00008 */  jr      $ra
/* 23E9C 80034F3C 00000000 */  nop


glabel func_80034F40
/* 23EA0 80034F40 27BDFEF0 */  addiu   $sp, $sp, 0xFEF0           ## $sp = FFFFFEF0
/* 23EA4 80034F44 AFBF002C */  sw      $ra, 0x002C($sp)
/* 23EA8 80034F48 AFA40110 */  sw      $a0, 0x0110($sp)
/* 23EAC 80034F4C AFA50114 */  sw      $a1, 0x0114($sp)
/* 23EB0 80034F50 AFA60118 */  sw      $a2, 0x0118($sp)
/* 23EB4 80034F54 0C00C499 */  jal     func_80031264
/* 23EB8 80034F58 8FA40114 */  lw      $a0, 0x0114($sp)
/* 23EBC 80034F5C 10400043 */  beq     $v0, $zero, .L8003506C
/* 23EC0 80034F60 8FAF0114 */  lw      $t7, 0x0114($sp)
/* 23EC4 80034F64 000FC080 */  sll     $t8, $t7,  2
/* 23EC8 80034F68 030FC023 */  subu    $t8, $t8, $t7
/* 23ECC 80034F6C 8FAE0110 */  lw      $t6, 0x0110($sp)
/* 23ED0 80034F70 0018C0C0 */  sll     $t8, $t8,  3
/* 23ED4 80034F74 030FC021 */  addu    $t8, $t8, $t7
/* 23ED8 80034F78 0018C080 */  sll     $t8, $t8,  2
/* 23EDC 80034F7C 01D81821 */  addu    $v1, $t6, $t8
/* 23EE0 80034F80 84790074 */  lh      $t9, 0x0074($v1)           ## 00000074
/* 23EE4 80034F84 8C650068 */  lw      $a1, 0x0068($v1)           ## 00000068
/* 23EE8 80034F88 8C66006C */  lw      $a2, 0x006C($v1)           ## 0000006C
/* 23EEC 80034F8C 8C670070 */  lw      $a3, 0x0070($v1)           ## 00000070
/* 23EF0 80034F90 AFB90010 */  sw      $t9, 0x0010($sp)
/* 23EF4 80034F94 84680076 */  lh      $t0, 0x0076($v1)           ## 00000076
/* 23EF8 80034F98 27A400D0 */  addiu   $a0, $sp, 0x00D0           ## $a0 = FFFFFFC0
/* 23EFC 80034F9C AFA80014 */  sw      $t0, 0x0014($sp)
/* 23F00 80034FA0 84690078 */  lh      $t1, 0x0078($v1)           ## 00000078
/* 23F04 80034FA4 AFA90018 */  sw      $t1, 0x0018($sp)
/* 23F08 80034FA8 C464007C */  lwc1    $f4, 0x007C($v1)           ## 0000007C
/* 23F0C 80034FAC E7A4001C */  swc1    $f4, 0x001C($sp)
/* 23F10 80034FB0 C4660080 */  lwc1    $f6, 0x0080($v1)           ## 00000080
/* 23F14 80034FB4 E7A60020 */  swc1    $f6, 0x0020($sp)
/* 23F18 80034FB8 C4680084 */  lwc1    $f8, 0x0084($v1)           ## 00000084
/* 23F1C 80034FBC AFA30034 */  sw      $v1, 0x0034($sp)
/* 23F20 80034FC0 0C023E45 */  jal     func_8008F914
/* 23F24 80034FC4 E7A80024 */  swc1    $f8, 0x0024($sp)
/* 23F28 80034FC8 27A400D0 */  addiu   $a0, $sp, 0x00D0           ## $a0 = FFFFFFC0
/* 23F2C 80034FCC 0C023C82 */  jal     func_8008F208
/* 23F30 80034FD0 27A50090 */  addiu   $a1, $sp, 0x0090           ## $a1 = FFFFFF80
/* 23F34 80034FD4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 23F38 80034FD8 10410024 */  beq     $v0, $at, .L8003506C
/* 23F3C 80034FDC 8FA30034 */  lw      $v1, 0x0034($sp)
/* 23F40 80034FE0 846A0094 */  lh      $t2, 0x0094($v1)           ## 00000094
/* 23F44 80034FE4 8C650088 */  lw      $a1, 0x0088($v1)           ## 00000088
/* 23F48 80034FE8 8C66008C */  lw      $a2, 0x008C($v1)           ## 0000008C
/* 23F4C 80034FEC 8C670090 */  lw      $a3, 0x0090($v1)           ## 00000090
/* 23F50 80034FF0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 23F54 80034FF4 846B0096 */  lh      $t3, 0x0096($v1)           ## 00000096
/* 23F58 80034FF8 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFF40
/* 23F5C 80034FFC AFAB0014 */  sw      $t3, 0x0014($sp)
/* 23F60 80035000 846C0098 */  lh      $t4, 0x0098($v1)           ## 00000098
/* 23F64 80035004 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 23F68 80035008 C46A009C */  lwc1    $f10, 0x009C($v1)          ## 0000009C
/* 23F6C 8003500C E7AA001C */  swc1    $f10, 0x001C($sp)
/* 23F70 80035010 C47000A0 */  lwc1    $f16, 0x00A0($v1)          ## 000000A0
/* 23F74 80035014 E7B00020 */  swc1    $f16, 0x0020($sp)
/* 23F78 80035018 C47200A4 */  lwc1    $f18, 0x00A4($v1)          ## 000000A4
/* 23F7C 8003501C 0C023E45 */  jal     func_8008F914
/* 23F80 80035020 E7B20024 */  swc1    $f18, 0x0024($sp)
/* 23F84 80035024 8FA50118 */  lw      $a1, 0x0118($sp)
/* 23F88 80035028 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFF80
/* 23F8C 8003502C 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFF28
/* 23F90 80035030 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 23F94 80035034 0C023B42 */  jal     func_8008ED08
/* 23F98 80035038 AFA50034 */  sw      $a1, 0x0034($sp)
/* 23F9C 8003503C 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFF40
/* 23FA0 80035040 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFF28
/* 23FA4 80035044 0C023B42 */  jal     func_8008ED08
/* 23FA8 80035048 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFF34
/* 23FAC 8003504C 27AF0044 */  addiu   $t7, $sp, 0x0044           ## $t7 = FFFFFF34
/* 23FB0 80035050 8DF80000 */  lw      $t8, 0x0000($t7)           ## FFFFFF34
/* 23FB4 80035054 8FAD0034 */  lw      $t5, 0x0034($sp)
/* 23FB8 80035058 ADB80000 */  sw      $t8, 0x0000($t5)           ## 00000000
/* 23FBC 8003505C 8DEE0004 */  lw      $t6, 0x0004($t7)           ## FFFFFF38
/* 23FC0 80035060 ADAE0004 */  sw      $t6, 0x0004($t5)           ## 00000004
/* 23FC4 80035064 8DF80008 */  lw      $t8, 0x0008($t7)           ## FFFFFF3C
/* 23FC8 80035068 ADB80008 */  sw      $t8, 0x0008($t5)           ## 00000008
.L8003506C:
/* 23FCC 8003506C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 23FD0 80035070 27BD0110 */  addiu   $sp, $sp, 0x0110           ## $sp = 00000000
/* 23FD4 80035074 03E00008 */  jr      $ra
/* 23FD8 80035078 00000000 */  nop


glabel func_8003507C
/* 23FDC 8003507C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 23FE0 80035080 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 23FE4 80035084 AFA40018 */  sw      $a0, 0x0018($sp)
/* 23FE8 80035088 AFA5001C */  sw      $a1, 0x001C($sp)
/* 23FEC 8003508C 8FA4001C */  lw      $a0, 0x001C($sp)
/* 23FF0 80035090 0C00C499 */  jal     func_80031264
/* 23FF4 80035094 AFA60020 */  sw      $a2, 0x0020($sp)
/* 23FF8 80035098 10400019 */  beq     $v0, $zero, .L80035100
/* 23FFC 8003509C 8FA60020 */  lw      $a2, 0x0020($sp)
/* 24000 800350A0 8FAF001C */  lw      $t7, 0x001C($sp)
/* 24004 800350A4 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 24008 800350A8 84C90000 */  lh      $t1, 0x0000($a2)           ## 00000000
/* 2400C 800350AC 000FC080 */  sll     $t8, $t7,  2
/* 24010 800350B0 030FC023 */  subu    $t8, $t8, $t7
/* 24014 800350B4 0018C0C0 */  sll     $t8, $t8,  3
/* 24018 800350B8 030FC021 */  addu    $t8, $t8, $t7
/* 2401C 800350BC 0018C080 */  sll     $t8, $t8,  2
/* 24020 800350C0 01D81021 */  addu    $v0, $t6, $t8
/* 24024 800350C4 84590096 */  lh      $t9, 0x0096($v0)           ## 00000096
/* 24028 800350C8 84480076 */  lh      $t0, 0x0076($v0)           ## 00000076
/* 2402C 800350CC 03281823 */  subu    $v1, $t9, $t0
/* 24030 800350D0 00031C00 */  sll     $v1, $v1, 16
/* 24034 800350D4 15200004 */  bne     $t1, $zero, .L800350E8
/* 24038 800350D8 00031C03 */  sra     $v1, $v1, 16
/* 2403C 800350DC 84CA082C */  lh      $t2, 0x082C($a2)           ## 0000082C
/* 24040 800350E0 01435821 */  addu    $t3, $t2, $v1
/* 24044 800350E4 A4CB082C */  sh      $t3, 0x082C($a2)           ## 0000082C
.L800350E8:
/* 24048 800350E8 84CC00B6 */  lh      $t4, 0x00B6($a2)           ## 000000B6
/* 2404C 800350EC 84CF0032 */  lh      $t7, 0x0032($a2)           ## 00000032
/* 24050 800350F0 01836821 */  addu    $t5, $t4, $v1
/* 24054 800350F4 01E37021 */  addu    $t6, $t7, $v1
/* 24058 800350F8 A4CD00B6 */  sh      $t5, 0x00B6($a2)           ## 000000B6
/* 2405C 800350FC A4CE0032 */  sh      $t6, 0x0032($a2)           ## 00000032
.L80035100:
/* 24060 80035100 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 24064 80035104 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 24068 80035108 03E00008 */  jr      $ra
/* 2406C 8003510C 00000000 */  nop


glabel func_80035110
/* 24070 80035110 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 24074 80035114 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 24078 80035118 AFA40020 */  sw      $a0, 0x0020($sp)
/* 2407C 8003511C AFA50024 */  sw      $a1, 0x0024($sp)
/* 24080 80035120 AFA60028 */  sw      $a2, 0x0028($sp)
/* 24084 80035124 0C00C499 */  jal     func_80031264
/* 24088 80035128 8FA40028 */  lw      $a0, 0x0028($sp)
/* 2408C 8003512C 10400010 */  beq     $v0, $zero, .L80035170
/* 24090 80035130 8FA40020 */  lw      $a0, 0x0020($sp)
/* 24094 80035134 0C00C519 */  jal     func_80031464
/* 24098 80035138 8FA50028 */  lw      $a1, 0x0028($sp)
/* 2409C 8003513C 1040000C */  beq     $v0, $zero, .L80035170
/* 240A0 80035140 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 240A4 80035144 0C00D4A4 */  jal     func_80035290
/* 240A8 80035148 AFA2001C */  sw      $v0, 0x001C($sp)
/* 240AC 8003514C 8FAE0024 */  lw      $t6, 0x0024($sp)
/* 240B0 80035150 3C020400 */  lui     $v0, 0x0400                ## $v0 = 04000000
/* 240B4 80035154 8FA4001C */  lw      $a0, 0x001C($sp)
/* 240B8 80035158 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 00000004
/* 240BC 8003515C 01E2C024 */  and     $t8, $t7, $v0
/* 240C0 80035160 54580004 */  bnel    $v0, $t8, .L80035174
/* 240C4 80035164 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 240C8 80035168 0C00D4CB */  jal     func_8003532C
/* 240CC 8003516C 00000000 */  nop
.L80035170:
/* 240D0 80035170 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80035174:
/* 240D4 80035174 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 240D8 80035178 03E00008 */  jr      $ra
/* 240DC 8003517C 00000000 */  nop


glabel func_80035180
/* 240E0 80035180 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 240E4 80035184 AFB00018 */  sw      $s0, 0x0018($sp)
/* 240E8 80035188 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 240EC 8003518C AFBF001C */  sw      $ra, 0x001C($sp)
/* 240F0 80035190 AFA40028 */  sw      $a0, 0x0028($sp)
/* 240F4 80035194 AFA60030 */  sw      $a2, 0x0030($sp)
/* 240F8 80035198 AFA00024 */  sw      $zero, 0x0024($sp)
/* 240FC 8003519C 0C00C499 */  jal     func_80031264
/* 24100 800351A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 24104 800351A4 14400003 */  bne     $v0, $zero, .L800351B4
/* 24108 800351A8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 2410C 800351AC 10000026 */  beq     $zero, $zero, .L80035248
/* 24110 800351B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800351B4:
/* 24114 800351B4 00107040 */  sll     $t6, $s0,  1
/* 24118 800351B8 008E7821 */  addu    $t7, $a0, $t6
/* 2411C 800351BC 95E213DC */  lhu     $v0, 0x13DC($t7)           ## 000013DC
/* 24120 800351C0 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 24124 800351C4 17000003 */  bne     $t8, $zero, .L800351D4
/* 24128 800351C8 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 2412C 800351CC 17200003 */  bne     $t9, $zero, .L800351DC
/* 24130 800351D0 00000000 */  nop
.L800351D4:
/* 24134 800351D4 1000001C */  beq     $zero, $zero, .L80035248
/* 24138 800351D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800351DC:
/* 2413C 800351DC 0C00C519 */  jal     func_80031464
/* 24140 800351E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 24144 800351E4 14400003 */  bne     $v0, $zero, .L800351F4
/* 24148 800351E8 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 2414C 800351EC 10000016 */  beq     $zero, $zero, .L80035248
/* 24150 800351F0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L800351F4:
/* 24154 800351F4 8C48014C */  lw      $t0, 0x014C($v0)           ## 0000014C
/* 24158 800351F8 8FA40028 */  lw      $a0, 0x0028($sp)
/* 2415C 800351FC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 24160 80035200 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 24164 80035204 11200006 */  beq     $t1, $zero, .L80035220
/* 24168 80035208 8FA60030 */  lw      $a2, 0x0030($sp)
/* 2416C 8003520C 0C00D3D0 */  jal     func_80034F40
/* 24170 80035210 AFA30020 */  sw      $v1, 0x0020($sp)
/* 24174 80035214 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 24178 80035218 8FA30020 */  lw      $v1, 0x0020($sp)
/* 2417C 8003521C AFAA0024 */  sw      $t2, 0x0024($sp)
.L80035220:
/* 24180 80035220 8C6B014C */  lw      $t3, 0x014C($v1)           ## 0000014C
/* 24184 80035224 8FA40028 */  lw      $a0, 0x0028($sp)
/* 24188 80035228 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 2418C 8003522C 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 24190 80035230 11800004 */  beq     $t4, $zero, .L80035244
/* 24194 80035234 8FA60030 */  lw      $a2, 0x0030($sp)
/* 24198 80035238 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 2419C 8003523C 0C00D41F */  jal     func_8003507C
/* 241A0 80035240 AFAD0024 */  sw      $t5, 0x0024($sp)
.L80035244:
/* 241A4 80035244 8FA20024 */  lw      $v0, 0x0024($sp)
.L80035248:
/* 241A8 80035248 8FBF001C */  lw      $ra, 0x001C($sp)
/* 241AC 8003524C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 241B0 80035250 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 241B4 80035254 03E00008 */  jr      $ra
/* 241B8 80035258 00000000 */  nop
/* 241BC 8003525C 00000000 */  nop


glabel func_80035260
/* 241C0 80035260 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 241C4 80035264 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 241C8 80035268 AC8E013C */  sw      $t6, 0x013C($a0)           ## 0000013C
/* 241CC 8003526C E4800140 */  swc1    $f0, 0x0140($a0)           ## 00000140
/* 241D0 80035270 E4800144 */  swc1    $f0, 0x0144($a0)           ## 00000144
/* 241D4 80035274 AC85014C */  sw      $a1, 0x014C($a0)           ## 0000014C
/* 241D8 80035278 A0800150 */  sb      $zero, 0x0150($a0)         ## 00000150
/* 241DC 8003527C 03E00008 */  jr      $ra
/* 241E0 80035280 00000000 */  nop


glabel func_80035284
/* 241E4 80035284 A0800150 */  sb      $zero, 0x0150($a0)         ## 00000150
/* 241E8 80035288 03E00008 */  jr      $ra
/* 241EC 8003528C 00000000 */  nop


glabel func_80035290
/* 241F0 80035290 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 241F4 80035294 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 241F8 80035298 A08F0150 */  sb      $t7, 0x0150($a0)           ## 00000150
/* 241FC 8003529C 03E00008 */  jr      $ra
/* 24200 800352A0 00000000 */  nop


glabel func_800352A4
/* 24204 800352A4 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 24208 800352A8 35CF0002 */  ori     $t7, $t6, 0x0002           ## $t7 = 00000002
/* 2420C 800352AC A08F0150 */  sb      $t7, 0x0150($a0)           ## 00000150
/* 24210 800352B0 03E00008 */  jr      $ra
/* 24214 800352B4 00000000 */  nop


glabel func_800352B8
/* 24218 800352B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 2421C 800352BC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 24220 800352C0 0C00C519 */  jal     func_80031464
/* 24224 800352C4 00000000 */  nop
/* 24228 800352C8 10400003 */  beq     $v0, $zero, .L800352D8
/* 2422C 800352CC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 24230 800352D0 0C00D4A9 */  jal     func_800352A4
/* 24234 800352D4 00000000 */  nop
.L800352D8:
/* 24238 800352D8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 2423C 800352DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 24240 800352E0 03E00008 */  jr      $ra
/* 24244 800352E4 00000000 */  nop


glabel func_800352E8
/* 24248 800352E8 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 2424C 800352EC 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 24250 800352F0 A08F0150 */  sb      $t7, 0x0150($a0)           ## 00000150
/* 24254 800352F4 03E00008 */  jr      $ra
/* 24258 800352F8 00000000 */  nop


glabel func_800352FC
/* 2425C 800352FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 24260 80035300 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 24264 80035304 0C00C519 */  jal     func_80031464
/* 24268 80035308 00000000 */  nop
/* 2426C 8003530C 10400003 */  beq     $v0, $zero, .L8003531C
/* 24270 80035310 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 24274 80035314 0C00D4BA */  jal     func_800352E8
/* 24278 80035318 00000000 */  nop
.L8003531C:
/* 2427C 8003531C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 24280 80035320 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 24284 80035324 03E00008 */  jr      $ra
/* 24288 80035328 00000000 */  nop


glabel func_8003532C
/* 2428C 8003532C 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 24290 80035330 35CF0008 */  ori     $t7, $t6, 0x0008           ## $t7 = 00000008
/* 24294 80035334 A08F0150 */  sb      $t7, 0x0150($a0)           ## 00000150
/* 24298 80035338 03E00008 */  jr      $ra
/* 2429C 8003533C 00000000 */  nop


glabel func_80035340
/* 242A0 80035340 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 242A4 80035344 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 242A8 80035348 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 242AC 8003534C 11E00003 */  beq     $t7, $zero, .L8003535C
/* 242B0 80035350 00000000 */  nop
/* 242B4 80035354 03E00008 */  jr      $ra
/* 242B8 80035358 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8003535C:
/* 242BC 8003535C 03E00008 */  jr      $ra
/* 242C0 80035360 00000000 */  nop


glabel func_80035364
/* 242C4 80035364 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 242C8 80035368 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 242CC 8003536C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 242D0 80035370 11E00003 */  beq     $t7, $zero, .L80035380
/* 242D4 80035374 00000000 */  nop
/* 242D8 80035378 03E00008 */  jr      $ra
/* 242DC 8003537C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80035380:
/* 242E0 80035380 03E00008 */  jr      $ra
/* 242E4 80035384 00000000 */  nop


glabel func_80035388
/* 242E8 80035388 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 242EC 8003538C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 242F0 80035390 31CF0004 */  andi    $t7, $t6, 0x0004           ## $t7 = 00000000
/* 242F4 80035394 11E00003 */  beq     $t7, $zero, .L800353A4
/* 242F8 80035398 00000000 */  nop
/* 242FC 8003539C 03E00008 */  jr      $ra
/* 24300 800353A0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L800353A4:
/* 24304 800353A4 03E00008 */  jr      $ra
/* 24308 800353A8 00000000 */  nop


glabel func_800353AC
/* 2430C 800353AC 908E0150 */  lbu     $t6, 0x0150($a0)           ## 00000150
/* 24310 800353B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 24314 800353B4 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 24318 800353B8 11E00003 */  beq     $t7, $zero, .L800353C8
/* 2431C 800353BC 00000000 */  nop
/* 24320 800353C0 03E00008 */  jr      $ra
/* 24324 800353C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L800353C8:
/* 24328 800353C8 03E00008 */  jr      $ra
/* 2432C 800353CC 00000000 */  nop


glabel func_800353D0
/* 24330 800353D0 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 24334 800353D4 AFB00038 */  sw      $s0, 0x0038($sp)
/* 24338 800353D8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 2433C 800353DC AFBF003C */  sw      $ra, 0x003C($sp)
/* 24340 800353E0 AFA40090 */  sw      $a0, 0x0090($sp)
/* 24344 800353E4 AFA60098 */  sw      $a2, 0x0098($sp)
/* 24348 800353E8 AFA7009C */  sw      $a3, 0x009C($sp)
/* 2434C 800353EC 0C018DB1 */  jal     Math_Sins              ## sins?
/* 24350 800353F0 86040148 */  lh      $a0, 0x0148($s0)           ## 00000148
/* 24354 800353F4 86040148 */  lh      $a0, 0x0148($s0)           ## 00000148
/* 24358 800353F8 0C018DA1 */  jal     Math_Coss              ## coss?
/* 2435C 800353FC E7A00068 */  swc1    $f0, 0x0068($sp)
/* 24360 80035400 C6040140 */  lwc1    $f4, 0x0140($s0)           ## 00000140
/* 24364 80035404 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 24368 80035408 87AE009A */  lh      $t6, 0x009A($sp)
/* 2436C 8003540C C7AC0068 */  lwc1    $f12, 0x0068($sp)
/* 24370 80035410 4604303E */  c.le.s  $f6, $f4
/* 24374 80035414 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 24378 80035418 46000386 */  mov.s   $f14, $f0
/* 2437C 8003541C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 24380 80035420 45000005 */  bc1f    .L80035438
/* 24384 80035424 468042A0 */  cvt.s.w $f10, $f8
/* 24388 80035428 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 2438C 8003542C 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 24390 80035430 10000003 */  beq     $zero, $zero, .L80035440
/* 24394 80035434 00000000 */  nop
.L80035438:
/* 24398 80035438 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 2439C 8003543C 00000000 */  nop
.L80035440:
/* 243A0 80035440 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 243A4 80035444 C4246AF0 */  lwc1    $f4, 0x6AF0($at)           ## 80106AF0
/* 243A8 80035448 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 243AC 8003544C 87AF00A2 */  lh      $t7, 0x00A2($sp)
/* 243B0 80035450 46045001 */  sub.s   $f0, $f10, $f4
/* 243B4 80035454 87B8009E */  lh      $t8, 0x009E($sp)
/* 243B8 80035458 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 243BC 8003545C 8FA40090 */  lw      $a0, 0x0090($sp)
/* 243C0 80035460 460E0202 */  mul.s   $f8, $f0, $f14
/* 243C4 80035464 27B9005C */  addiu   $t9, $sp, 0x005C           ## $t9 = FFFFFFCC
/* 243C8 80035468 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 243CC 8003546C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 243D0 80035470 27AA0060 */  addiu   $t2, $sp, 0x0060           ## $t2 = FFFFFFD0
/* 243D4 80035474 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 243D8 80035478 27A50084 */  addiu   $a1, $sp, 0x0084           ## $a1 = FFFFFFF4
/* 243DC 8003547C 46083280 */  add.s   $f10, $f6, $f8
/* 243E0 80035480 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 243E4 80035484 27A60078 */  addiu   $a2, $sp, 0x0078           ## $a2 = FFFFFFE8
/* 243E8 80035488 27A7006C */  addiu   $a3, $sp, 0x006C           ## $a3 = FFFFFFDC
/* 243EC 8003548C 46803220 */  cvt.s.w $f8, $f6
/* 243F0 80035490 E7AA0084 */  swc1    $f10, 0x0084($sp)
/* 243F4 80035494 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 243F8 80035498 46082280 */  add.s   $f10, $f4, $f8
/* 243FC 8003549C 460C0102 */  mul.s   $f4, $f0, $f12
/* 24400 800354A0 E7AA0088 */  swc1    $f10, 0x0088($sp)
/* 24404 800354A4 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 24408 800354A8 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 2440C 800354AC AFA40044 */  sw      $a0, 0x0044($sp)
/* 24410 800354B0 46043201 */  sub.s   $f8, $f6, $f4
/* 24414 800354B4 C4246AF4 */  lwc1    $f4, 0x6AF4($at)           ## 80106AF4
/* 24418 800354B8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 2441C 800354BC 468051A0 */  cvt.s.w $f6, $f10
/* 24420 800354C0 E7A8008C */  swc1    $f8, 0x008C($sp)
/* 24424 800354C4 C7AA0084 */  lwc1    $f10, 0x0084($sp)
/* 24428 800354C8 AFAA0024 */  sw      $t2, 0x0024($sp)
/* 2442C 800354CC AFA90020 */  sw      $t1, 0x0020($sp)
/* 24430 800354D0 AFA0001C */  sw      $zero, 0x001C($sp)
/* 24434 800354D4 46043201 */  sub.s   $f8, $f6, $f4
/* 24438 800354D8 C7A40088 */  lwc1    $f4, 0x0088($sp)
/* 2443C 800354DC AFA00018 */  sw      $zero, 0x0018($sp)
/* 24440 800354E0 AFA80014 */  sw      $t0, 0x0014($sp)
/* 24444 800354E4 46088082 */  mul.s   $f2, $f16, $f8
/* 24448 800354E8 E7A4007C */  swc1    $f4, 0x007C($sp)
/* 2444C 800354EC AFB90010 */  sw      $t9, 0x0010($sp)
/* 24450 800354F0 460C1482 */  mul.s   $f18, $f2, $f12
/* 24454 800354F4 460A9180 */  add.s   $f6, $f18, $f10
/* 24458 800354F8 460E1202 */  mul.s   $f8, $f2, $f14
/* 2445C 800354FC E7B2004C */  swc1    $f18, 0x004C($sp)
/* 24460 80035500 E7A60078 */  swc1    $f6, 0x0078($sp)
/* 24464 80035504 C7A6008C */  lwc1    $f6, 0x008C($sp)
/* 24468 80035508 E7A80048 */  swc1    $f8, 0x0048($sp)
/* 2446C 8003550C C7AA0048 */  lwc1    $f10, 0x0048($sp)
/* 24470 80035510 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 24474 80035514 46065100 */  add.s   $f4, $f10, $f6
/* 24478 80035518 E7A8002C */  swc1    $f8, 0x002C($sp)
/* 2447C 8003551C 0C00C274 */  jal     func_800309D0
/* 24480 80035520 E7A40080 */  swc1    $f4, 0x0080($sp)
/* 24484 80035524 8FA40044 */  lw      $a0, 0x0044($sp)
/* 24488 80035528 10400003 */  beq     $v0, $zero, .L80035538
/* 2448C 8003552C C7B2004C */  lwc1    $f18, 0x004C($sp)
/* 24490 80035530 10000028 */  beq     $zero, $zero, .L800355D4
/* 24494 80035534 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80035538:
/* 24498 80035538 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 2449C 8003553C 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 244A0 80035540 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 244A4 80035544 C7A40084 */  lwc1    $f4, 0x0084($sp)
/* 244A8 80035548 27AB005C */  addiu   $t3, $sp, 0x005C           ## $t3 = FFFFFFCC
/* 244AC 8003554C 46005182 */  mul.s   $f6, $f10, $f0
/* 244B0 80035550 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 244B4 80035554 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 244B8 80035558 27AE0060 */  addiu   $t6, $sp, 0x0060           ## $t6 = FFFFFFD0
/* 244BC 8003555C 27A50084 */  addiu   $a1, $sp, 0x0084           ## $a1 = FFFFFFF4
/* 244C0 80035560 27A60078 */  addiu   $a2, $sp, 0x0078           ## $a2 = FFFFFFE8
/* 244C4 80035564 27A7006C */  addiu   $a3, $sp, 0x006C           ## $a3 = FFFFFFDC
/* 244C8 80035568 46043201 */  sub.s   $f8, $f6, $f4
/* 244CC 8003556C C7A4008C */  lwc1    $f4, 0x008C($sp)
/* 244D0 80035570 E7A80084 */  swc1    $f8, 0x0084($sp)
/* 244D4 80035574 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 244D8 80035578 AFB00028 */  sw      $s0, 0x0028($sp)
/* 244DC 8003557C AFAE0024 */  sw      $t6, 0x0024($sp)
/* 244E0 80035580 46005182 */  mul.s   $f6, $f10, $f0
/* 244E4 80035584 AFAD0020 */  sw      $t5, 0x0020($sp)
/* 244E8 80035588 AFA0001C */  sw      $zero, 0x001C($sp)
/* 244EC 8003558C AFA00018 */  sw      $zero, 0x0018($sp)
/* 244F0 80035590 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 244F4 80035594 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 244F8 80035598 46043281 */  sub.s   $f10, $f6, $f4
/* 244FC 8003559C C7A40048 */  lwc1    $f4, 0x0048($sp)
/* 24500 800355A0 46089180 */  add.s   $f6, $f18, $f8
/* 24504 800355A4 E7AA008C */  swc1    $f10, 0x008C($sp)
/* 24508 800355A8 460A2200 */  add.s   $f8, $f4, $f10
/* 2450C 800355AC E7A60078 */  swc1    $f6, 0x0078($sp)
/* 24510 800355B0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 24514 800355B4 E7A80080 */  swc1    $f8, 0x0080($sp)
/* 24518 800355B8 0C00C274 */  jal     func_800309D0
/* 2451C 800355BC E7A6002C */  swc1    $f6, 0x002C($sp)
/* 24520 800355C0 50400004 */  beql    $v0, $zero, .L800355D4
/* 24524 800355C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 24528 800355C8 10000002 */  beq     $zero, $zero, .L800355D4
/* 2452C 800355CC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 24530 800355D0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L800355D4:
/* 24534 800355D4 8FBF003C */  lw      $ra, 0x003C($sp)
/* 24538 800355D8 8FB00038 */  lw      $s0, 0x0038($sp)
/* 2453C 800355DC 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
/* 24540 800355E0 03E00008 */  jr      $ra
/* 24544 800355E4 00000000 */  nop
/* 24548 800355E8 00000000 */  nop
/* 2454C 800355EC 00000000 */  nop