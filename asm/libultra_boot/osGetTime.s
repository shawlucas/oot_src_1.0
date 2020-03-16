.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel osGetTime
/* 04460 800048C0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 04464 800048C4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 04468 800048C8 0C00144C */  jal     __osDisableInt              ## __osDisableInt
/* 0446C 800048CC AFB00018 */  sw      $s0, 0x0018($sp)
/* 04470 800048D0 0C001354 */  jal     osGetCount              ## osGetCount
/* 04474 800048D4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 04478 800048D8 AFA20034 */  sw      $v0, 0x0034($sp)
/* 0447C 800048DC 3C0F8001 */  lui     $t7, 0x8001                ## $t7 = 80010000
/* 04480 800048E0 8DEF9E88 */  lw      $t7, -0x6178($t7)          ## 80009E88
/* 04484 800048E4 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 04488 800048E8 3C088001 */  lui     $t0, 0x8001                ## $t0 = 80010000
/* 0448C 800048EC 3C098001 */  lui     $t1, 0x8001                ## $t1 = 80010000
/* 04490 800048F0 8D299E84 */  lw      $t1, -0x617C($t1)          ## 80009E84
/* 04494 800048F4 8D089E80 */  lw      $t0, -0x6180($t0)          ## 80009E80
/* 04498 800048F8 01CFC023 */  subu    $t8, $t6, $t7
/* 0449C 800048FC AFB80030 */  sw      $t8, 0x0030($sp)
/* 044A0 80004900 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 044A4 80004904 AFA9002C */  sw      $t1, 0x002C($sp)
/* 044A8 80004908 0C001468 */  jal     __osRestoreInt
/* 044AC 8000490C AFA80028 */  sw      $t0, 0x0028($sp)
/* 044B0 80004910 8FB90030 */  lw      $t9, 0x0030($sp)
/* 044B4 80004914 8FAD002C */  lw      $t5, 0x002C($sp)
/* 044B8 80004918 8FBF001C */  lw      $ra, 0x001C($sp)
/* 044BC 8000491C 03205825 */  or      $t3, $t9, $zero            ## $t3 = 00000000
/* 044C0 80004920 016D1821 */  addu    $v1, $t3, $t5
/* 044C4 80004924 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 044C8 80004928 240A0000 */  addiu   $t2, $zero, 0x0000         ## $t2 = 00000000
/* 044CC 8000492C 006D082B */  sltu    $at, $v1, $t5
/* 044D0 80004930 002A1021 */  addu    $v0, $at, $t2
/* 044D4 80004934 8FB00018 */  lw      $s0, 0x0018($sp)
/* 044D8 80004938 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 044DC 8000493C 03E00008 */  jr      $ra
/* 044E0 80004940 004C1021 */  addu    $v0, $v0, $t4
/* 044E4 80004944 00000000 */  nop
/* 044E8 80004948 00000000 */  nop
/* 044EC 8000494C 00000000 */  nop
