.rdata

glabel D_80006594
    .asciz "../z_std_dma.c"
    .balign 4

glabel D_800065A4
    .asciz "../z_std_dma.c"
    .balign 4

glabel D_800065B4
    .asciz "../z_std_dma.c"
    .balign 4

glabel D_800065C4
    .asciz "../z_std_dma.c"
    .balign 4

.text
glabel DmaMgr_ProcessMsg
/* 006AC 80000B0C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 006B0 80000B10 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 006B4 80000B14 24C6B140 */  addiu   $a2, $a2, 0xB140           ## $a2 = 8000B140
/* 006B8 80000B18 AFBF001C */  sw      $ra, 0x001C($sp)
/* 006BC 80000B1C AFB00018 */  sw      $s0, 0x0018($sp)
/* 006C0 80000B20 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 006C4 80000B24 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 006C8 80000B28 8CD80004 */  lw      $t8, 0x0004($a2)           ## 8000B144
/* 006CC 80000B2C AFAE0038 */  sw      $t6, 0x0038($sp)
/* 006D0 80000B30 8C8F0008 */  lw      $t7, 0x0008($a0)           ## 00000008
/* 006D4 80000B34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006D8 80000B38 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 006DC 80000B3C 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 8000B140
/* 006E0 80000B40 13000045 */  beq     $t8, $zero, .L80000C58
/* 006E4 80000B44 AFAF0034 */  sw      $t7, 0x0034($sp)
/* 006E8 80000B48 8C470000 */  lw      $a3, 0x0000($v0)           ## 8000B140
.L80000B4C:
/* 006EC 80000B4C 0207082B */  sltu    $at, $s0, $a3
/* 006F0 80000B50 1420003A */  bne     $at, $zero, .L80000C3C
/* 006F4 80000B54 00000000 */  nop
/* 006F8 80000B58 8C440004 */  lw      $a0, 0x0004($v0)           ## 8000B144
/* 006FC 80000B5C 0204082B */  sltu    $at, $s0, $a0
/* 00700 80000B60 10200036 */  beq     $at, $zero, .L80000C3C
/* 00704 80000B64 00000000 */  nop
/* 00708 80000B68 8C45000C */  lw      $a1, 0x000C($v0)           ## 8000B14C
/* 0070C 80000B6C 8FB90034 */  lw      $t9, 0x0034($sp)
/* 00710 80000B70 14A00012 */  bne     $a1, $zero, .L80000BBC
/* 00714 80000B74 02194021 */  addu    $t0, $s0, $t9
/* 00718 80000B78 0088082B */  sltu    $at, $a0, $t0
/* 0071C 80000B7C 10200007 */  beq     $at, $zero, .L80000B9C
/* 00720 80000B80 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00724 80000B84 24846594 */  addiu   $a0, $a0, 0x6594           ## $a0 = 80006594
/* 00728 80000B88 2405023F */  addiu   $a1, $zero, 0x023F         ## $a1 = 0000023F
/* 0072C 80000B8C 0C02BDCD */  jal     Fault_AddHungupAndCrash
/* 00730 80000B90 AFA20024 */  sw      $v0, 0x0024($sp)
/* 00734 80000B94 8FA20024 */  lw      $v0, 0x0024($sp)
/* 00738 80000B98 8C470000 */  lw      $a3, 0x0000($v0)           ## 00000000
.L80000B9C:
/* 0073C 80000B9C 8C490008 */  lw      $t1, 0x0008($v0)           ## 00000008
/* 00740 80000BA0 8FA50038 */  lw      $a1, 0x0038($sp)
/* 00744 80000BA4 8FA60034 */  lw      $a2, 0x0034($sp)
/* 00748 80000BA8 01305021 */  addu    $t2, $t1, $s0
/* 0074C 80000BAC 0C000217 */  jal     DmaMgr_DMARomToRam
/* 00750 80000BB0 01472023 */  subu    $a0, $t2, $a3
/* 00754 80000BB4 10000028 */  beq     $zero, $zero, .L80000C58
/* 00758 80000BB8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L80000BBC:
/* 0075C 80000BBC 8C430008 */  lw      $v1, 0x0008($v0)           ## 00000008
/* 00760 80000BC0 00A35823 */  subu    $t3, $a1, $v1
/* 00764 80000BC4 AFAB002C */  sw      $t3, 0x002C($sp)
/* 00768 80000BC8 12070009 */  beq     $s0, $a3, .L80000BF0
/* 0076C 80000BCC AFA30030 */  sw      $v1, 0x0030($sp)
/* 00770 80000BD0 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00774 80000BD4 248465A4 */  addiu   $a0, $a0, 0x65A4           ## $a0 = 800065A4
/* 00778 80000BD8 24050253 */  addiu   $a1, $zero, 0x0253         ## $a1 = 00000253
/* 0077C 80000BDC 0C02BDCD */  jal     Fault_AddHungupAndCrash
/* 00780 80000BE0 AFA20024 */  sw      $v0, 0x0024($sp)
/* 00784 80000BE4 8FA20024 */  lw      $v0, 0x0024($sp)
/* 00788 80000BE8 8C470000 */  lw      $a3, 0x0000($v0)           ## 00000000
/* 0078C 80000BEC 8C440004 */  lw      $a0, 0x0004($v0)           ## 00000004
.L80000BF0:
/* 00790 80000BF0 8FAC0034 */  lw      $t4, 0x0034($sp)
/* 00794 80000BF4 00876823 */  subu    $t5, $a0, $a3
/* 00798 80000BF8 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 0079C 80000BFC 118D0003 */  beq     $t4, $t5, .L80000C0C
/* 007A0 80000C00 248465B4 */  addiu   $a0, $a0, 0x65B4           ## $a0 = 800065B4
/* 007A4 80000C04 0C02BDCD */  jal     Fault_AddHungupAndCrash
/* 007A8 80000C08 24050259 */  addiu   $a1, $zero, 0x0259         ## $a1 = 00000259
.L80000C0C:
/* 007AC 80000C0C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 007B0 80000C10 0C001120 */  jal     osSetThreadPri              ## osSetThreadPri
/* 007B4 80000C14 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 007B8 80000C18 8FA40030 */  lw      $a0, 0x0030($sp)
/* 007BC 80000C1C 8FA50038 */  lw      $a1, 0x0038($sp)
/* 007C0 80000C20 0C000495 */  jal     Yaz0_Decompress
/* 007C4 80000C24 8FA6002C */  lw      $a2, 0x002C($sp)
/* 007C8 80000C28 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 007CC 80000C2C 0C001120 */  jal     osSetThreadPri              ## osSetThreadPri
/* 007D0 80000C30 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 007D4 80000C34 10000008 */  beq     $zero, $zero, .L80000C58
/* 007D8 80000C38 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L80000C3C:
/* 007DC 80000C3C 50600003 */  beql    $v1, $zero, .L80000C4C
/* 007E0 80000C40 8C4E0014 */  lw      $t6, 0x0014($v0)           ## 00000014
/* 007E4 80000C44 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 00000004
/* 007E8 80000C48 8C4E0014 */  lw      $t6, 0x0014($v0)           ## 00000014
.L80000C4C:
/* 007EC 80000C4C 24420010 */  addiu   $v0, $v0, 0x0010           ## $v0 = 00000010
/* 007F0 80000C50 55C0FFBE */  bnel    $t6, $zero, .L80000B4C
/* 007F4 80000C54 8C470000 */  lw      $a3, 0x0000($v0)           ## 00000010
.L80000C58:
/* 007F8 80000C58 14A0000E */  bne     $a1, $zero, .L80000C94
/* 007FC 80000C5C 3C0F8000 */  lui     $t7, 0x8000                ## $t7 = 80000000
/* 00800 80000C60 8DEF6278 */  lw      $t7, 0x6278($t7)           ## 80006278
/* 00804 80000C64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00808 80000C68 8FA50038 */  lw      $a1, 0x0038($sp)
/* 0080C 80000C6C 11E00007 */  beq     $t7, $zero, .L80000C8C
/* 00810 80000C70 00000000 */  nop
/* 00814 80000C74 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00818 80000C78 248465C4 */  addiu   $a0, $a0, 0x65C4           ## $a0 = 800065C4
/* 0081C 80000C7C 0C02BDCD */  jal     Fault_AddHungupAndCrash
/* 00820 80000C80 2405026D */  addiu   $a1, $zero, 0x026D         ## $a1 = 0000026D
/* 00824 80000C84 10000004 */  beq     $zero, $zero, .L80000C98
/* 00828 80000C88 8FBF001C */  lw      $ra, 0x001C($sp)
.L80000C8C:
/* 0082C 80000C8C 0C000217 */  jal     DmaMgr_DMARomToRam
/* 00830 80000C90 8FA60034 */  lw      $a2, 0x0034($sp)
.L80000C94:
/* 00834 80000C94 8FBF001C */  lw      $ra, 0x001C($sp)
.L80000C98:
/* 00838 80000C98 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0083C 80000C9C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00840 80000CA0 03E00008 */  jr      $ra
/* 00844 80000CA4 00000000 */  nop

