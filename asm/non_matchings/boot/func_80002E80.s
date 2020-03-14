glabel func_80002E80
/* 02A20 80002E80 28A1000C */  slti    $at, $a1, 0x000C
/* 02A24 80002E84 1420001D */  bne     $at, $zero, .L80002EFC
/* 02A28 80002E88 00041823 */  subu    $v1, $zero, $a0
/* 02A2C 80002E8C 30630003 */  andi    $v1, $v1, 0x0003           ## $v1 = 00000000
/* 02A30 80002E90 10600003 */  beq     $v1, $zero, .L80002EA0
/* 02A34 80002E94 00A32823 */  subu    $a1, $a1, $v1
/* 02A38 80002E98 A8800000 */  swl     $zero, 0x0000($a0)         ## 00000000
/* 02A3C 80002E9C 00832021 */  addu    $a0, $a0, $v1
.L80002EA0:
/* 02A40 80002EA0 2401FFE0 */  addiu   $at, $zero, 0xFFE0         ## $at = FFFFFFE0
/* 02A44 80002EA4 00A13824 */  and     $a3, $a1, $at
/* 02A48 80002EA8 10E0000C */  beq     $a3, $zero, .L80002EDC
/* 02A4C 80002EAC 00A72823 */  subu    $a1, $a1, $a3
/* 02A50 80002EB0 00E43821 */  addu    $a3, $a3, $a0
.L80002EB4:
/* 02A54 80002EB4 24840020 */  addiu   $a0, $a0, 0x0020           ## $a0 = 00000020
/* 02A58 80002EB8 AC80FFE0 */  sw      $zero, -0x0020($a0)        ## 00000000
/* 02A5C 80002EBC AC80FFE4 */  sw      $zero, -0x001C($a0)        ## 00000004
/* 02A60 80002EC0 AC80FFE8 */  sw      $zero, -0x0018($a0)        ## 00000008
/* 02A64 80002EC4 AC80FFEC */  sw      $zero, -0x0014($a0)        ## 0000000C
/* 02A68 80002EC8 AC80FFF0 */  sw      $zero, -0x0010($a0)        ## 00000010
/* 02A6C 80002ECC AC80FFF4 */  sw      $zero, -0x000C($a0)        ## 00000014
/* 02A70 80002ED0 AC80FFF8 */  sw      $zero, -0x0008($a0)        ## 00000018
/* 02A74 80002ED4 1487FFF7 */  bne     $a0, $a3, .L80002EB4
/* 02A78 80002ED8 AC80FFFC */  sw      $zero, -0x0004($a0)        ## 0000001C
.L80002EDC:
/* 02A7C 80002EDC 2401FFFC */  addiu   $at, $zero, 0xFFFC         ## $at = FFFFFFFC
/* 02A80 80002EE0 00A13824 */  and     $a3, $a1, $at
/* 02A84 80002EE4 10E00005 */  beq     $a3, $zero, .L80002EFC
/* 02A88 80002EE8 00A72823 */  subu    $a1, $a1, $a3
/* 02A8C 80002EEC 00E43821 */  addu    $a3, $a3, $a0
.L80002EF0:
/* 02A90 80002EF0 24840004 */  addiu   $a0, $a0, 0x0004           ## $a0 = 00000024
/* 02A94 80002EF4 1487FFFE */  bne     $a0, $a3, .L80002EF0
/* 02A98 80002EF8 AC80FFFC */  sw      $zero, -0x0004($a0)        ## 00000020
.L80002EFC:
/* 02A9C 80002EFC 18A00005 */  blez    $a1, .L80002F14
/* 02AA0 80002F00 00000000 */  nop
/* 02AA4 80002F04 00A42821 */  addu    $a1, $a1, $a0
.L80002F08:
/* 02AA8 80002F08 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000025
/* 02AAC 80002F0C 1485FFFE */  bne     $a0, $a1, .L80002F08
/* 02AB0 80002F10 A080FFFF */  sb      $zero, -0x0001($a0)        ## 00000024
.L80002F14:
/* 02AB4 80002F14 03E00008 */  jr      $ra
/* 02AB8 80002F18 00000000 */  nop
/* 02ABC 80002F1C 00000000 */  nop


