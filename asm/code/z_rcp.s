# "Reality Co-Processor" part of the code file
#
# Handles the N64's RCP, managing rendering tasks.
#
# General Documentation about the RCP and rendering:
# - https://wiki.cloudmodding.com/oot/F3DZEX
# - https://wiki.cloudmodding.com/oot/Rendering
#
# Starts at VRAM: 8007DC40 / VROM: AF3BA0
#


.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8007DC40
/* 6CBA0 8007DC40 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 6CBA4 8007DC44 AFB00004 */  sw      $s0, 0x0004($sp)
/* 6CBA8 8007DC48 8FB0001C */  lw      $s0, 0x001C($sp)
/* 6CBAC 8007DC4C 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 6CBB0 8007DC50 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 6CBB4 8007DC54 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6CBB8 8007DC58 15D00003 */  bne     $t6, $s0, .L8007DC68
/* 6CBBC 8007DC5C 3C18F800 */  lui     $t8, 0xF800                ## $t8 = F8000000
/* 6CBC0 8007DC60 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 6CBC4 8007DC64 AFAF0020 */  sw      $t7, 0x0020($sp)
.L8007DC68:
/* 6CBC8 8007DC68 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 6CBCC 8007DC6C 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 6CBD0 8007DC70 00A0C825 */  or      $t9, $a1, $zero            ## $t9 = 00000000
/* 6CBD4 8007DC74 30C900FF */  andi    $t1, $a2, 0x00FF           ## $t1 = 00000000
/* 6CBD8 8007DC78 00095400 */  sll     $t2, $t1, 16
/* 6CBDC 8007DC7C 00194600 */  sll     $t0, $t9, 24
/* 6CBE0 8007DC80 30EC00FF */  andi    $t4, $a3, 0x00FF           ## $t4 = 00000000
/* 6CBE4 8007DC84 000C6A00 */  sll     $t5, $t4,  8
/* 6CBE8 8007DC88 010A5825 */  or      $t3, $t0, $t2              ## $t3 = 00000000
/* 6CBEC 8007DC8C 016D7025 */  or      $t6, $t3, $t5              ## $t6 = 00000000
/* 6CBF0 8007DC90 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000001
/* 6CBF4 8007DC94 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = 00000001
/* 6CBF8 8007DC98 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 6CBFC 8007DC9C 2A0103E8 */  slti    $at, $s0, 0x03E8
/* 6CC00 8007DCA0 14200007 */  bne     $at, $zero, .L8007DCC0
/* 6CC04 8007DCA4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6CC08 8007DCA8 3C09DB08 */  lui     $t1, 0xDB08                ## $t1 = DB080000
/* 6CC0C 8007DCAC AC490000 */  sw      $t1, 0x0000($v0)           ## 00000008
/* 6CC10 8007DCB0 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 6CC14 8007DCB4 AC400004 */  sw      $zero, 0x0004($v0)         ## 0000000C
/* 6CC18 8007DCB8 1000003D */  beq     $zero, $zero, .L8007DDB0
/* 6CC1C 8007DCBC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
.L8007DCC0:
/* 6CC20 8007DCC0 2A0103E5 */  slti    $at, $s0, 0x03E5
/* 6CC24 8007DCC4 14200009 */  bne     $at, $zero, .L8007DCEC
/* 6CC28 8007DCC8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 6CC2C 8007DCCC 3C0A7FFF */  lui     $t2, 0x7FFF                ## $t2 = 7FFF0000
/* 6CC30 8007DCD0 354A8100 */  ori     $t2, $t2, 0x8100           ## $t2 = 7FFF8100
/* 6CC34 8007DCD4 3C08DB08 */  lui     $t0, 0xDB08                ## $t0 = DB080000
/* 6CC38 8007DCD8 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000010
/* 6CC3C 8007DCDC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000014
/* 6CC40 8007DCE0 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000018
/* 6CC44 8007DCE4 10000032 */  beq     $zero, $zero, .L8007DDB0
/* 6CC48 8007DCE8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000018
.L8007DCEC:
/* 6CC4C 8007DCEC 06010009 */  bgez    $s0, .L8007DD14
/* 6CC50 8007DCF0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000018
/* 6CC54 8007DCF4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000018
/* 6CC58 8007DCF8 3C0CDB08 */  lui     $t4, 0xDB08                ## $t4 = DB080000
/* 6CC5C 8007DCFC 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 6CC60 8007DD00 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 0000001C
/* 6CC64 8007DD04 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000018
/* 6CC68 8007DD08 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000020
/* 6CC6C 8007DD0C 10000028 */  beq     $zero, $zero, .L8007DDB0
/* 6CC70 8007DD10 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000020
.L8007DD14:
/* 6CC74 8007DD14 3C0DDB08 */  lui     $t5, 0xDB08                ## $t5 = DB080000
/* 6CC78 8007DD18 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000020
/* 6CC7C 8007DD1C 8FAF0020 */  lw      $t7, 0x0020($sp)
/* 6CC80 8007DD20 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 6CC84 8007DD24 35CEF400 */  ori     $t6, $t6, 0xF400           ## $t6 = 0001F400
/* 6CC88 8007DD28 01F01823 */  subu    $v1, $t7, $s0
/* 6CC8C 8007DD2C 01C3001A */  div     $zero, $t6, $v1
/* 6CC90 8007DD30 00104023 */  subu    $t0, $zero, $s0
/* 6CC94 8007DD34 00085200 */  sll     $t2, $t0,  8
/* 6CC98 8007DD38 014E6021 */  addu    $t4, $t2, $t6
/* 6CC9C 8007DD3C 0000C012 */  mflo    $t8
/* 6CCA0 8007DD40 3319FFFF */  andi    $t9, $t8, 0xFFFF           ## $t9 = 00000001
/* 6CCA4 8007DD44 00194C00 */  sll     $t1, $t9, 16
/* 6CCA8 8007DD48 0183001A */  div     $zero, $t4, $v1
/* 6CCAC 8007DD4C 00005812 */  mflo    $t3
/* 6CCB0 8007DD50 316DFFFF */  andi    $t5, $t3, 0xFFFF           ## $t5 = 000000FF
/* 6CCB4 8007DD54 012D7825 */  or      $t7, $t1, $t5              ## $t7 = DB0800FF
/* 6CCB8 8007DD58 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000024
/* 6CCBC 8007DD5C 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000028
/* 6CCC0 8007DD60 14600002 */  bne     $v1, $zero, .L8007DD6C
/* 6CCC4 8007DD64 00000000 */  nop
/* 6CCC8 8007DD68 0007000D */  break 7
.L8007DD6C:
/* 6CCCC 8007DD6C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 6CCD0 8007DD70 14610004 */  bne     $v1, $at, .L8007DD84
/* 6CCD4 8007DD74 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 6CCD8 8007DD78 15C10002 */  bne     $t6, $at, .L8007DD84
/* 6CCDC 8007DD7C 00000000 */  nop
/* 6CCE0 8007DD80 0006000D */  break 6
.L8007DD84:
/* 6CCE4 8007DD84 01C00821 */  addu    $at, $t6, $zero
/* 6CCE8 8007DD88 14600002 */  bne     $v1, $zero, .L8007DD94
/* 6CCEC 8007DD8C 00000000 */  nop
/* 6CCF0 8007DD90 0007000D */  break 7
.L8007DD94:
/* 6CCF4 8007DD94 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 6CCF8 8007DD98 14610004 */  bne     $v1, $at, .L8007DDAC
/* 6CCFC 8007DD9C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 6CD00 8007DDA0 15810002 */  bne     $t4, $at, .L8007DDAC
/* 6CD04 8007DDA4 00000000 */  nop
/* 6CD08 8007DDA8 0006000D */  break 6
.L8007DDAC:
/* 6CD0C 8007DDAC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000028
.L8007DDB0:
/* 6CD10 8007DDB0 8FB00004 */  lw      $s0, 0x0004($sp)
/* 6CD14 8007DDB4 03E00008 */  jr      $ra
/* 6CD18 8007DDB8 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000


glabel func_8007DDBC
/* 6CD1C 8007DDBC 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 6CD20 8007DDC0 AFB00004 */  sw      $s0, 0x0004($sp)
/* 6CD24 8007DDC4 8FB0001C */  lw      $s0, 0x001C($sp)
/* 6CD28 8007DDC8 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 6CD2C 8007DDCC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 6CD30 8007DDD0 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6CD34 8007DDD4 15D00003 */  bne     $t6, $s0, .L8007DDE4
/* 6CD38 8007DDD8 3C18E700 */  lui     $t8, 0xE700                ## $t8 = E7000000
/* 6CD3C 8007DDDC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 6CD40 8007DDE0 AFAF0020 */  sw      $t7, 0x0020($sp)
.L8007DDE4:
/* 6CD44 8007DDE4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 6CD48 8007DDE8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 6CD4C 8007DDEC 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000008
/* 6CD50 8007DDF0 3C19F800 */  lui     $t9, 0xF800                ## $t9 = F8000000
/* 6CD54 8007DDF4 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000008
/* 6CD58 8007DDF8 8FB80018 */  lw      $t8, 0x0018($sp)
/* 6CD5C 8007DDFC 00A04025 */  or      $t0, $a1, $zero            ## $t0 = 00000000
/* 6CD60 8007DE00 30CA00FF */  andi    $t2, $a2, 0x00FF           ## $t2 = 00000000
/* 6CD64 8007DE04 000A5C00 */  sll     $t3, $t2, 16
/* 6CD68 8007DE08 00084E00 */  sll     $t1, $t0, 24
/* 6CD6C 8007DE0C 30ED00FF */  andi    $t5, $a3, 0x00FF           ## $t5 = 00000000
/* 6CD70 8007DE10 000D7200 */  sll     $t6, $t5,  8
/* 6CD74 8007DE14 012B6025 */  or      $t4, $t1, $t3              ## $t4 = 00000000
/* 6CD78 8007DE18 018E7825 */  or      $t7, $t4, $t6              ## $t7 = 00000000
/* 6CD7C 8007DE1C 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 6CD80 8007DE20 01F94025 */  or      $t0, $t7, $t9              ## $t0 = 00000000
/* 6CD84 8007DE24 AC680004 */  sw      $t0, 0x0004($v1)           ## 0000000C
/* 6CD88 8007DE28 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 6CD8C 8007DE2C 2A0103E8 */  slti    $at, $s0, 0x03E8
/* 6CD90 8007DE30 14200007 */  bne     $at, $zero, .L8007DE50
/* 6CD94 8007DE34 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 6CD98 8007DE38 3C0ADB08 */  lui     $t2, 0xDB08                ## $t2 = DB080000
/* 6CD9C 8007DE3C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000010
/* 6CDA0 8007DE40 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000018
/* 6CDA4 8007DE44 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000014
/* 6CDA8 8007DE48 1000003D */  beq     $zero, $zero, .L8007DF40
/* 6CDAC 8007DE4C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000018
.L8007DE50:
/* 6CDB0 8007DE50 2A0103E5 */  slti    $at, $s0, 0x03E5
/* 6CDB4 8007DE54 14200009 */  bne     $at, $zero, .L8007DE7C
/* 6CDB8 8007DE58 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000018
/* 6CDBC 8007DE5C 3C0B7FFF */  lui     $t3, 0x7FFF                ## $t3 = 7FFF0000
/* 6CDC0 8007DE60 356B8100 */  ori     $t3, $t3, 0x8100           ## $t3 = 7FFF8100
/* 6CDC4 8007DE64 3C09DB08 */  lui     $t1, 0xDB08                ## $t1 = DB080000
/* 6CDC8 8007DE68 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000018
/* 6CDCC 8007DE6C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 0000001C
/* 6CDD0 8007DE70 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000020
/* 6CDD4 8007DE74 10000032 */  beq     $zero, $zero, .L8007DF40
/* 6CDD8 8007DE78 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000020
.L8007DE7C:
/* 6CDDC 8007DE7C 06010009 */  bgez    $s0, .L8007DEA4
/* 6CDE0 8007DE80 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000020
/* 6CDE4 8007DE84 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000020
/* 6CDE8 8007DE88 3C0DDB08 */  lui     $t5, 0xDB08                ## $t5 = DB080000
/* 6CDEC 8007DE8C 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 6CDF0 8007DE90 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000024
/* 6CDF4 8007DE94 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000020
/* 6CDF8 8007DE98 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000028
/* 6CDFC 8007DE9C 10000028 */  beq     $zero, $zero, .L8007DF40
/* 6CE00 8007DEA0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000028
.L8007DEA4:
/* 6CE04 8007DEA4 3C0EDB08 */  lui     $t6, 0xDB08                ## $t6 = DB080000
/* 6CE08 8007DEA8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000028
/* 6CE0C 8007DEAC 8FB80020 */  lw      $t8, 0x0020($sp)
/* 6CE10 8007DEB0 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 6CE14 8007DEB4 35EFF400 */  ori     $t7, $t7, 0xF400           ## $t7 = 0001F400
/* 6CE18 8007DEB8 03101823 */  subu    $v1, $t8, $s0
/* 6CE1C 8007DEBC 01E3001A */  div     $zero, $t7, $v1
/* 6CE20 8007DEC0 00104823 */  subu    $t1, $zero, $s0
/* 6CE24 8007DEC4 00095A00 */  sll     $t3, $t1,  8
/* 6CE28 8007DEC8 016F6821 */  addu    $t5, $t3, $t7
/* 6CE2C 8007DECC 0000C812 */  mflo    $t9
/* 6CE30 8007DED0 3328FFFF */  andi    $t0, $t9, 0xFFFF           ## $t0 = 00000000
/* 6CE34 8007DED4 00085400 */  sll     $t2, $t0, 16
/* 6CE38 8007DED8 01A3001A */  div     $zero, $t5, $v1
/* 6CE3C 8007DEDC 00006012 */  mflo    $t4
/* 6CE40 8007DEE0 318EFFFF */  andi    $t6, $t4, 0xFFFF           ## $t6 = 000000FF
/* 6CE44 8007DEE4 014EC025 */  or      $t8, $t2, $t6              ## $t8 = DB0800FF
/* 6CE48 8007DEE8 AC580004 */  sw      $t8, 0x0004($v0)           ## 0000002C
/* 6CE4C 8007DEEC 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000030
/* 6CE50 8007DEF0 14600002 */  bne     $v1, $zero, .L8007DEFC
/* 6CE54 8007DEF4 00000000 */  nop
/* 6CE58 8007DEF8 0007000D */  break 7
.L8007DEFC:
/* 6CE5C 8007DEFC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 6CE60 8007DF00 14610004 */  bne     $v1, $at, .L8007DF14
/* 6CE64 8007DF04 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 6CE68 8007DF08 15E10002 */  bne     $t7, $at, .L8007DF14
/* 6CE6C 8007DF0C 00000000 */  nop
/* 6CE70 8007DF10 0006000D */  break 6
.L8007DF14:
/* 6CE74 8007DF14 01E00821 */  addu    $at, $t7, $zero
/* 6CE78 8007DF18 14600002 */  bne     $v1, $zero, .L8007DF24
/* 6CE7C 8007DF1C 00000000 */  nop
/* 6CE80 8007DF20 0007000D */  break 7
.L8007DF24:
/* 6CE84 8007DF24 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 6CE88 8007DF28 14610004 */  bne     $v1, $at, .L8007DF3C
/* 6CE8C 8007DF2C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 6CE90 8007DF30 15A10002 */  bne     $t5, $at, .L8007DF3C
/* 6CE94 8007DF34 00000000 */  nop
/* 6CE98 8007DF38 0006000D */  break 6
.L8007DF3C:
/* 6CE9C 8007DF3C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000030
.L8007DF40:
/* 6CEA0 8007DF40 8FB00004 */  lw      $s0, 0x0004($sp)
/* 6CEA4 8007DF44 03E00008 */  jr      $ra
/* 6CEA8 8007DF48 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000


glabel func_8007DF4C
/* 6CEAC 8007DF4C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 6CEB0 8007DF50 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 6CEB4 8007DF54 8FAE0038 */  lw      $t6, 0x0038($sp)
/* 6CEB8 8007DF58 8FAF003C */  lw      $t7, 0x003C($sp)
/* 6CEBC 8007DF5C 8FB80040 */  lw      $t8, 0x0040($sp)
/* 6CEC0 8007DF60 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 6CEC4 8007DF64 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 6CEC8 8007DF68 0C01F710 */  jal     func_8007DC40
/* 6CECC 8007DF6C AFB80018 */  sw      $t8, 0x0018($sp)
/* 6CED0 8007DF70 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 6CED4 8007DF74 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 6CED8 8007DF78 03E00008 */  jr      $ra
/* 6CEDC 8007DF7C 00000000 */  nop


glabel func_8007DF80
/* 6CEE0 8007DF80 00057880 */  sll     $t7, $a1,  2
/* 6CEE4 8007DF84 01E57823 */  subu    $t7, $t7, $a1
/* 6CEE8 8007DF88 000F7840 */  sll     $t7, $t7,  1
/* 6CEEC 8007DF8C 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6CEF0 8007DF90 3C19800F */  lui     $t9, 0x800F                ## $t9 = 800F0000
/* 6CEF4 8007DF94 27397D50 */  addiu   $t9, $t9, 0x7D50           ## $t9 = 800F7D50
/* 6CEF8 8007DF98 000FC0C0 */  sll     $t8, $t7,  3
/* 6CEFC 8007DF9C 03194021 */  addu    $t0, $t8, $t9
/* 6CF00 8007DFA0 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6CF04 8007DFA4 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6CF08 8007DFA8 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 6CF0C 8007DFAC 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6CF10 8007DFB0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6CF14 8007DFB4 03E00008 */  jr      $ra
/* 6CF18 8007DFB8 00000000 */  nop


glabel func_8007DFBC
/* 6CF1C 8007DFBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6CF20 8007DFC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6CF24 8007DFC4 0C01F7E0 */  jal     func_8007DF80
/* 6CF28 8007DFC8 00000000 */  nop
/* 6CF2C 8007DFCC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6CF30 8007DFD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6CF34 8007DFD4 03E00008 */  jr      $ra
/* 6CF38 8007DFD8 00000000 */  nop


glabel func_8007DFDC
/* 6CF3C 8007DFDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6CF40 8007DFE0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6CF44 8007DFE4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6CF48 8007DFE8 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 6CF4C 8007DFEC 0C01F7EF */  jal     func_8007DFBC
/* 6CF50 8007DFF0 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 6CF54 8007DFF4 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 6CF58 8007DFF8 ADE20000 */  sw      $v0, 0x0000($t7)           ## 00000000
/* 6CF5C 8007DFFC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6CF60 8007E000 03E00008 */  jr      $ra
/* 6CF64 8007E004 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_8007E008
/* 6CF68 8007E008 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6CF6C 8007E00C 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6CF70 8007E010 25EF8800 */  addiu   $t7, $t7, 0x8800           ## $t7 = 800F8800
/* 6CF74 8007E014 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6CF78 8007E018 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6CF7C 8007E01C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6CF80 8007E020 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6CF84 8007E024 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6CF88 8007E028 03E00008 */  jr      $ra
/* 6CF8C 8007E02C 00000000 */  nop


glabel func_8007E030
/* 6CF90 8007E030 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6CF94 8007E034 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6CF98 8007E038 25EF8800 */  addiu   $t7, $t7, 0x8800           ## $t7 = 800F8800
/* 6CF9C 8007E03C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6CFA0 8007E040 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6CFA4 8007E044 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6CFA8 8007E048 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6CFAC 8007E04C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6CFB0 8007E050 03E00008 */  jr      $ra
/* 6CFB4 8007E054 00000000 */  nop


glabel func_8007E058
/* 6CFB8 8007E058 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6CFBC 8007E05C 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6CFC0 8007E060 25EF8710 */  addiu   $t7, $t7, 0x8710           ## $t7 = 800F8710
/* 6CFC4 8007E064 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6CFC8 8007E068 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6CFCC 8007E06C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6CFD0 8007E070 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6CFD4 8007E074 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000008
/* 6CFD8 8007E078 3C18E300 */  lui     $t8, 0xE300                ## $t8 = E3000000
/* 6CFDC 8007E07C 37181801 */  ori     $t8, $t8, 0x1801           ## $t8 = E3001801
/* 6CFE0 8007E080 241900C0 */  addiu   $t9, $zero, 0x00C0         ## $t9 = 000000C0
/* 6CFE4 8007E084 ACB90004 */  sw      $t9, 0x0004($a1)           ## 0000000C
/* 6CFE8 8007E088 ACB80000 */  sw      $t8, 0x0000($a1)           ## 00000008
/* 6CFEC 8007E08C 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 6CFF0 8007E090 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 6CFF4 8007E094 03E00008 */  jr      $ra
/* 6CFF8 8007E098 00000000 */  nop


glabel func_8007E09C
/* 6CFFC 8007E09C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D000 8007E0A0 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D004 8007E0A4 27188830 */  addiu   $t8, $t8, 0x8830           ## $t8 = 800F8830
/* 6D008 8007E0A8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D00C 8007E0AC AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D010 8007E0B0 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D014 8007E0B4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D018 8007E0B8 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D01C 8007E0BC 03E00008 */  jr      $ra
/* 6D020 8007E0C0 00000000 */  nop


glabel func_8007E0C4
/* 6D024 8007E0C4 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D028 8007E0C8 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D02C 8007E0CC 27188800 */  addiu   $t8, $t8, 0x8800           ## $t8 = 800F8800
/* 6D030 8007E0D0 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D034 8007E0D4 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D038 8007E0D8 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D03C 8007E0DC AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D040 8007E0E0 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D044 8007E0E4 03E00008 */  jr      $ra
/* 6D048 8007E0E8 00000000 */  nop


glabel func_8007E0EC
/* 6D04C 8007E0EC 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D050 8007E0F0 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D054 8007E0F4 271886B0 */  addiu   $t8, $t8, 0x86B0           ## $t8 = 800F86B0
/* 6D058 8007E0F8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D05C 8007E0FC AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D060 8007E100 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D064 8007E104 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D068 8007E108 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D06C 8007E10C 03E00008 */  jr      $ra
/* 6D070 8007E110 00000000 */  nop


glabel func_8007E114
/* 6D074 8007E114 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D078 8007E118 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D07C 8007E11C 271886E0 */  addiu   $t8, $t8, 0x86E0           ## $t8 = 800F86E0
/* 6D080 8007E120 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D084 8007E124 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D088 8007E128 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D08C 8007E12C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D090 8007E130 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D094 8007E134 03E00008 */  jr      $ra
/* 6D098 8007E138 00000000 */  nop


glabel func_8007E13C
/* 6D09C 8007E13C 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D0A0 8007E140 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D0A4 8007E144 27188710 */  addiu   $t8, $t8, 0x8710           ## $t8 = 800F8710
/* 6D0A8 8007E148 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D0AC 8007E14C AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D0B0 8007E150 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D0B4 8007E154 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D0B8 8007E158 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D0BC 8007E15C 03E00008 */  jr      $ra
/* 6D0C0 8007E160 00000000 */  nop


glabel func_8007E164
/* 6D0C4 8007E164 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D0C8 8007E168 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D0CC 8007E16C 27188740 */  addiu   $t8, $t8, 0x8740           ## $t8 = 800F8740
/* 6D0D0 8007E170 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D0D4 8007E174 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D0D8 8007E178 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D0DC 8007E17C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D0E0 8007E180 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D0E4 8007E184 03E00008 */  jr      $ra
/* 6D0E8 8007E188 00000000 */  nop


glabel func_8007E18C
/* 6D0EC 8007E18C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D0F0 8007E190 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D0F4 8007E194 27188770 */  addiu   $t8, $t8, 0x8770           ## $t8 = 800F8770
/* 6D0F8 8007E198 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D0FC 8007E19C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D100 8007E1A0 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D104 8007E1A4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D108 8007E1A8 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D10C 8007E1AC 03E00008 */  jr      $ra
/* 6D110 8007E1B0 00000000 */  nop


glabel func_8007E1B4
/* 6D114 8007E1B4 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D118 8007E1B8 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D11C 8007E1BC 271887A0 */  addiu   $t8, $t8, 0x87A0           ## $t8 = 800F87A0
/* 6D120 8007E1C0 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D124 8007E1C4 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D128 8007E1C8 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D12C 8007E1CC AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D130 8007E1D0 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D134 8007E1D4 03E00008 */  jr      $ra
/* 6D138 8007E1D8 00000000 */  nop


glabel func_8007E1DC
/* 6D13C 8007E1DC 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D140 8007E1E0 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D144 8007E1E4 27188230 */  addiu   $t8, $t8, 0x8230           ## $t8 = 800F8230
/* 6D148 8007E1E8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D14C 8007E1EC AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D150 8007E1F0 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D154 8007E1F4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D158 8007E1F8 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D15C 8007E1FC 03E00008 */  jr      $ra
/* 6D160 8007E200 00000000 */  nop


glabel func_8007E204
/* 6D164 8007E204 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D168 8007E208 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D16C 8007E20C 27188200 */  addiu   $t8, $t8, 0x8200           ## $t8 = 800F8200
/* 6D170 8007E210 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D174 8007E214 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D178 8007E218 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D17C 8007E21C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D180 8007E220 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D184 8007E224 03E00008 */  jr      $ra
/* 6D188 8007E228 00000000 */  nop


glabel func_8007E22C
/* 6D18C 8007E22C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6D190 8007E230 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6D194 8007E234 AFA40020 */  sw      $a0, 0x0020($sp)
/* 6D198 8007E238 8FAE0020 */  lw      $t6, 0x0020($sp)
/* 6D19C 8007E23C 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 6D1A0 8007E240 0C01F8A6 */  jal     func_8007E298
/* 6D1A4 8007E244 AFA4001C */  sw      $a0, 0x001C($sp)
/* 6D1A8 8007E248 8FAF0020 */  lw      $t7, 0x0020($sp)
/* 6D1AC 8007E24C 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 6D1B0 8007E250 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 6D1B4 8007E254 030FC021 */  addu    $t8, $t8, $t7
/* 6D1B8 8007E258 93181CBF */  lbu     $t8, 0x1CBF($t8)           ## 00011CBF
/* 6D1BC 8007E25C 8FA4001C */  lw      $a0, 0x001C($sp)
/* 6D1C0 8007E260 3C08E300 */  lui     $t0, 0xE300                ## $t0 = E3000000
/* 6D1C4 8007E264 57010009 */  bnel    $t8, $at, .L8007E28C
/* 6D1C8 8007E268 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6D1CC 8007E26C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D1D0 8007E270 35081801 */  ori     $t0, $t0, 0x1801           ## $t0 = E3001801
/* 6D1D4 8007E274 240900C0 */  addiu   $t1, $zero, 0x00C0         ## $t1 = 000000C0
/* 6D1D8 8007E278 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6D1DC 8007E27C AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6D1E0 8007E280 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 6D1E4 8007E284 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 6D1E8 8007E288 8FBF0014 */  lw      $ra, 0x0014($sp)
.L8007E28C:
/* 6D1EC 8007E28C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 6D1F0 8007E290 03E00008 */  jr      $ra
/* 6D1F4 8007E294 00000000 */  nop


glabel func_8007E298
/* 6D1F8 8007E298 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D1FC 8007E29C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D200 8007E2A0 27188200 */  addiu   $t8, $t8, 0x8200           ## $t8 = 800F8200
/* 6D204 8007E2A4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D208 8007E2A8 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D20C 8007E2AC 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D210 8007E2B0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D214 8007E2B4 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D218 8007E2B8 03E00008 */  jr      $ra
/* 6D21C 8007E2BC 00000000 */  nop


glabel func_8007E2C0
/* 6D220 8007E2C0 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D224 8007E2C4 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D228 8007E2C8 27188200 */  addiu   $t8, $t8, 0x8200           ## $t8 = 800F8200
/* 6D22C 8007E2CC 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D230 8007E2D0 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D234 8007E2D4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D238 8007E2D8 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D23C 8007E2DC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D240 8007E2E0 03E00008 */  jr      $ra
/* 6D244 8007E2E4 00000000 */  nop


glabel func_8007E2E8
/* 6D248 8007E2E8 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D24C 8007E2EC 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D250 8007E2F0 27188320 */  addiu   $t8, $t8, 0x8320           ## $t8 = 800F8320
/* 6D254 8007E2F4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D258 8007E2F8 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D25C 8007E2FC 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D260 8007E300 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D264 8007E304 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D268 8007E308 03E00008 */  jr      $ra
/* 6D26C 8007E30C 00000000 */  nop


glabel func_8007E310
/* 6D270 8007E310 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D274 8007E314 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D278 8007E318 27188350 */  addiu   $t8, $t8, 0x8350           ## $t8 = 800F8350
/* 6D27C 8007E31C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D280 8007E320 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D284 8007E324 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D288 8007E328 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D28C 8007E32C AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D290 8007E330 03E00008 */  jr      $ra
/* 6D294 8007E334 00000000 */  nop


glabel func_8007E338
/* 6D298 8007E338 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D29C 8007E33C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D2A0 8007E340 27188380 */  addiu   $t8, $t8, 0x8380           ## $t8 = 800F8380
/* 6D2A4 8007E344 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D2A8 8007E348 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D2AC 8007E34C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D2B0 8007E350 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D2B4 8007E354 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D2B8 8007E358 03E00008 */  jr      $ra
/* 6D2BC 8007E35C 00000000 */  nop


glabel func_8007E360
/* 6D2C0 8007E360 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D2C4 8007E364 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D2C8 8007E368 25EF8950 */  addiu   $t7, $t7, 0x8950           ## $t7 = 800F8950
/* 6D2CC 8007E36C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D2D0 8007E370 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D2D4 8007E374 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D2D8 8007E378 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D2DC 8007E37C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6D2E0 8007E380 03E00008 */  jr      $ra
/* 6D2E4 8007E384 00000000 */  nop


glabel func_8007E388
/* 6D2E8 8007E388 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D2EC 8007E38C 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D2F0 8007E390 25EF83B0 */  addiu   $t7, $t7, 0x83B0           ## $t7 = 800F83B0
/* 6D2F4 8007E394 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D2F8 8007E398 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D2FC 8007E39C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D300 8007E3A0 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D304 8007E3A4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6D308 8007E3A8 03E00008 */  jr      $ra
/* 6D30C 8007E3AC 00000000 */  nop


glabel func_8007E3B0
/* 6D310 8007E3B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6D314 8007E3B4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6D318 8007E3B8 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6D31C 8007E3BC 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 6D320 8007E3C0 0C01F8E2 */  jal     func_8007E388
/* 6D324 8007E3C4 8DC402C0 */  lw      $a0, 0x02C0($t6)           ## 000002C0
/* 6D328 8007E3C8 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 6D32C 8007E3CC ADE202C0 */  sw      $v0, 0x02C0($t7)           ## 000002C0
/* 6D330 8007E3D0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6D334 8007E3D4 03E00008 */  jr      $ra
/* 6D338 8007E3D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_8007E3DC
/* 6D33C 8007E3DC 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D340 8007E3E0 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D344 8007E3E4 271883E0 */  addiu   $t8, $t8, 0x83E0           ## $t8 = 800F83E0
/* 6D348 8007E3E8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D34C 8007E3EC AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D350 8007E3F0 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D354 8007E3F4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D358 8007E3F8 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D35C 8007E3FC 03E00008 */  jr      $ra
/* 6D360 8007E400 00000000 */  nop


glabel func_8007E404
/* 6D364 8007E404 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D368 8007E408 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D36C 8007E40C 27188590 */  addiu   $t8, $t8, 0x8590           ## $t8 = 800F8590
/* 6D370 8007E410 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D374 8007E414 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D378 8007E418 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D37C 8007E41C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D380 8007E420 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D384 8007E424 03E00008 */  jr      $ra
/* 6D388 8007E428 00000000 */  nop


glabel func_8007E42C
/* 6D38C 8007E42C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D390 8007E430 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D394 8007E434 27188410 */  addiu   $t8, $t8, 0x8410           ## $t8 = 800F8410
/* 6D398 8007E438 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D39C 8007E43C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D3A0 8007E440 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D3A4 8007E444 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D3A8 8007E448 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D3AC 8007E44C 03E00008 */  jr      $ra
/* 6D3B0 8007E450 00000000 */  nop


glabel func_8007E454
/* 6D3B4 8007E454 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D3B8 8007E458 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D3BC 8007E45C 25EF8290 */  addiu   $t7, $t7, 0x8290           ## $t7 = 800F8290
/* 6D3C0 8007E460 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D3C4 8007E464 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D3C8 8007E468 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D3CC 8007E46C 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D3D0 8007E470 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6D3D4 8007E474 03E00008 */  jr      $ra
/* 6D3D8 8007E478 00000000 */  nop


glabel func_8007E47C
/* 6D3DC 8007E47C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D3E0 8007E480 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D3E4 8007E484 27188290 */  addiu   $t8, $t8, 0x8290           ## $t8 = 800F8290
/* 6D3E8 8007E488 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D3EC 8007E48C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D3F0 8007E490 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D3F4 8007E494 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D3F8 8007E498 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D3FC 8007E49C 03E00008 */  jr      $ra
/* 6D400 8007E4A0 00000000 */  nop


glabel func_8007E4A4
/* 6D404 8007E4A4 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D408 8007E4A8 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D40C 8007E4AC 27188560 */  addiu   $t8, $t8, 0x8560           ## $t8 = 800F8560
/* 6D410 8007E4B0 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D414 8007E4B4 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D418 8007E4B8 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D41C 8007E4BC AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D420 8007E4C0 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D424 8007E4C4 03E00008 */  jr      $ra
/* 6D428 8007E4C8 00000000 */  nop


glabel func_8007E4CC
/* 6D42C 8007E4CC 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D430 8007E4D0 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D434 8007E4D4 271885C0 */  addiu   $t8, $t8, 0x85C0           ## $t8 = 800F85C0
/* 6D438 8007E4D8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D43C 8007E4DC AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D440 8007E4E0 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D444 8007E4E4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D448 8007E4E8 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D44C 8007E4EC 03E00008 */  jr      $ra
/* 6D450 8007E4F0 00000000 */  nop


glabel func_8007E4F4
/* 6D454 8007E4F4 8C8302B0 */  lw      $v1, 0x02B0($a0)           ## 000002B0
/* 6D458 8007E4F8 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D45C 8007E4FC 271885F0 */  addiu   $t8, $t8, 0x85F0           ## $t8 = 800F85F0
/* 6D460 8007E500 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D464 8007E504 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 6D468 8007E508 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D46C 8007E50C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D470 8007E510 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D474 8007E514 03E00008 */  jr      $ra
/* 6D478 8007E518 00000000 */  nop


glabel func_8007E51C
/* 6D47C 8007E51C 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D480 8007E520 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D484 8007E524 27188470 */  addiu   $t8, $t8, 0x8470           ## $t8 = 800F8470
/* 6D488 8007E528 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D48C 8007E52C AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D490 8007E530 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D494 8007E534 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D498 8007E538 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D49C 8007E53C 03E00008 */  jr      $ra
/* 6D4A0 8007E540 00000000 */  nop


glabel func_8007E544
/* 6D4A4 8007E544 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D4A8 8007E548 3C18800F */  lui     $t8, 0x800F                ## $t8 = 800F0000
/* 6D4AC 8007E54C 27187E10 */  addiu   $t8, $t8, 0x7E10           ## $t8 = 800F7E10
/* 6D4B0 8007E550 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D4B4 8007E554 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D4B8 8007E558 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D4BC 8007E55C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D4C0 8007E560 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D4C4 8007E564 03E00008 */  jr      $ra
/* 6D4C8 8007E568 00000000 */  nop


glabel func_8007E56C
/* 6D4CC 8007E56C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D4D0 8007E570 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D4D4 8007E574 27188440 */  addiu   $t8, $t8, 0x8440           ## $t8 = 800F8440
/* 6D4D8 8007E578 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D4DC 8007E57C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D4E0 8007E580 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D4E4 8007E584 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D4E8 8007E588 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D4EC 8007E58C 03E00008 */  jr      $ra
/* 6D4F0 8007E590 00000000 */  nop


glabel func_8007E594
/* 6D4F4 8007E594 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D4F8 8007E598 3C18800F */  lui     $t8, 0x800F                ## $t8 = 800F0000
/* 6D4FC 8007E59C 27187DB0 */  addiu   $t8, $t8, 0x7DB0           ## $t8 = 800F7DB0
/* 6D500 8007E5A0 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D504 8007E5A4 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D508 8007E5A8 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D50C 8007E5AC AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D510 8007E5B0 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D514 8007E5B4 03E00008 */  jr      $ra
/* 6D518 8007E5B8 00000000 */  nop


glabel func_8007E5BC
/* 6D51C 8007E5BC 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D520 8007E5C0 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D524 8007E5C4 25EF84A0 */  addiu   $t7, $t7, 0x84A0           ## $t7 = 800F84A0
/* 6D528 8007E5C8 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D52C 8007E5CC AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D530 8007E5D0 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D534 8007E5D4 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D538 8007E5D8 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6D53C 8007E5DC 03E00008 */  jr      $ra
/* 6D540 8007E5E0 00000000 */  nop


glabel func_8007E5E4
/* 6D544 8007E5E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6D548 8007E5E8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6D54C 8007E5EC AFA40018 */  sw      $a0, 0x0018($sp)
/* 6D550 8007E5F0 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 6D554 8007E5F4 0C01F96F */  jal     func_8007E5BC
/* 6D558 8007E5F8 8DC402C0 */  lw      $a0, 0x02C0($t6)           ## 000002C0
/* 6D55C 8007E5FC 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 6D560 8007E600 ADE202C0 */  sw      $v0, 0x02C0($t7)           ## 000002C0
/* 6D564 8007E604 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6D568 8007E608 03E00008 */  jr      $ra
/* 6D56C 8007E60C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_8007E610
/* 6D570 8007E610 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6D574 8007E614 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6D578 8007E618 AFA40018 */  sw      $a0, 0x0018($sp)
/* 6D57C 8007E61C 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 6D580 8007E620 0C01F96F */  jal     func_8007E5BC
/* 6D584 8007E624 8DC402B0 */  lw      $a0, 0x02B0($t6)           ## 000002B0
/* 6D588 8007E628 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 6D58C 8007E62C ADE202B0 */  sw      $v0, 0x02B0($t7)           ## 000002B0
/* 6D590 8007E630 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6D594 8007E634 03E00008 */  jr      $ra
/* 6D598 8007E638 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


glabel func_8007E63C
/* 6D59C 8007E63C 8C820000 */  lw      $v0, 0x0000($a0)           ## 00000000
/* 6D5A0 8007E640 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 6D5A4 8007E644 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D5A8 8007E648 25EF84A0 */  addiu   $t7, $t7, 0x84A0           ## $t7 = 800F84A0
/* 6D5AC 8007E64C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D5B0 8007E650 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D5B4 8007E654 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D5B8 8007E658 24420008 */  addiu   $v0, $v0, 0x0008           ## $v0 = 00000008
/* 6D5BC 8007E65C AC820000 */  sw      $v0, 0x0000($a0)           ## 00000000
/* 6D5C0 8007E660 03E00008 */  jr      $ra
/* 6D5C4 8007E664 00000000 */  nop


glabel func_8007E668
/* 6D5C8 8007E668 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D5CC 8007E66C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D5D0 8007E670 271884D0 */  addiu   $t8, $t8, 0x84D0           ## $t8 = 800F84D0
/* 6D5D4 8007E674 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D5D8 8007E678 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D5DC 8007E67C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D5E0 8007E680 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D5E4 8007E684 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D5E8 8007E688 03E00008 */  jr      $ra
/* 6D5EC 8007E68C 00000000 */  nop


glabel func_8007E690
/* 6D5F0 8007E690 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D5F4 8007E694 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D5F8 8007E698 27188500 */  addiu   $t8, $t8, 0x8500           ## $t8 = 800F8500
/* 6D5FC 8007E69C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D600 8007E6A0 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D604 8007E6A4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D608 8007E6A8 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D60C 8007E6AC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D610 8007E6B0 03E00008 */  jr      $ra
/* 6D614 8007E6B4 00000000 */  nop


glabel func_8007E6B8
/* 6D618 8007E6B8 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D61C 8007E6BC 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D620 8007E6C0 27188620 */  addiu   $t8, $t8, 0x8620           ## $t8 = 800F8620
/* 6D624 8007E6C4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D628 8007E6C8 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D62C 8007E6CC 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D630 8007E6D0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D634 8007E6D4 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D638 8007E6D8 03E00008 */  jr      $ra
/* 6D63C 8007E6DC 00000000 */  nop


glabel func_8007E6E0
/* 6D640 8007E6E0 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D644 8007E6E4 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D648 8007E6E8 25EF89B0 */  addiu   $t7, $t7, 0x89B0           ## $t7 = 800F89B0
/* 6D64C 8007E6EC 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D650 8007E6F0 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D654 8007E6F4 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D658 8007E6F8 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D65C 8007E6FC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6D660 8007E700 03E00008 */  jr      $ra
/* 6D664 8007E704 00000000 */  nop


glabel func_8007E708
/* 6D668 8007E708 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D66C 8007E70C 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D670 8007E710 25EF89E0 */  addiu   $t7, $t7, 0x89E0           ## $t7 = 800F89E0
/* 6D674 8007E714 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D678 8007E718 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D67C 8007E71C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D680 8007E720 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D684 8007E724 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6D688 8007E728 03E00008 */  jr      $ra
/* 6D68C 8007E72C 00000000 */  nop


glabel func_8007E730
/* 6D690 8007E730 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D694 8007E734 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D698 8007E738 25EF8A10 */  addiu   $t7, $t7, 0x8A10           ## $t7 = 800F8A10
/* 6D69C 8007E73C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D6A0 8007E740 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D6A4 8007E744 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D6A8 8007E748 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D6AC 8007E74C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000008
/* 6D6B0 8007E750 3C18E300 */  lui     $t8, 0xE300                ## $t8 = E3000000
/* 6D6B4 8007E754 37181801 */  ori     $t8, $t8, 0x1801           ## $t8 = E3001801
/* 6D6B8 8007E758 241900C0 */  addiu   $t9, $zero, 0x00C0         ## $t9 = 000000C0
/* 6D6BC 8007E75C ACB90004 */  sw      $t9, 0x0004($a1)           ## 0000000C
/* 6D6C0 8007E760 ACB80000 */  sw      $t8, 0x0000($a1)           ## 00000008
/* 6D6C4 8007E764 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 6D6C8 8007E768 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 6D6CC 8007E76C 03E00008 */  jr      $ra
/* 6D6D0 8007E770 00000000 */  nop


glabel func_8007E774
/* 6D6D4 8007E774 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D6D8 8007E778 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D6DC 8007E77C 25EF8A40 */  addiu   $t7, $t7, 0x8A40           ## $t7 = 800F8A40
/* 6D6E0 8007E780 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D6E4 8007E784 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D6E8 8007E788 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D6EC 8007E78C 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D6F0 8007E790 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000008
/* 6D6F4 8007E794 3C18E300 */  lui     $t8, 0xE300                ## $t8 = E3000000
/* 6D6F8 8007E798 37181801 */  ori     $t8, $t8, 0x1801           ## $t8 = E3001801
/* 6D6FC 8007E79C 241900C0 */  addiu   $t9, $zero, 0x00C0         ## $t9 = 000000C0
/* 6D700 8007E7A0 ACB90004 */  sw      $t9, 0x0004($a1)           ## 0000000C
/* 6D704 8007E7A4 ACB80000 */  sw      $t8, 0x0000($a1)           ## 00000008
/* 6D708 8007E7A8 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 6D70C 8007E7AC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 6D710 8007E7B0 03E00008 */  jr      $ra
/* 6D714 8007E7B4 00000000 */  nop


glabel func_8007E7B8
/* 6D718 8007E7B8 3C05E300 */  lui     $a1, 0xE300                ## $a1 = E3000000
/* 6D71C 8007E7BC 34A51801 */  ori     $a1, $a1, 0x1801           ## $a1 = E3001801
/* 6D720 8007E7C0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 6D724 8007E7C4 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D728 8007E7C8 25EF8980 */  addiu   $t7, $t7, 0x8980           ## $t7 = 800F8980
/* 6D72C 8007E7CC 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D730 8007E7D0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 6D734 8007E7D4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 6D738 8007E7D8 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D73C 8007E7DC 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000008
/* 6D740 8007E7E0 241800C0 */  addiu   $t8, $zero, 0x00C0         ## $t8 = 000000C0
/* 6D744 8007E7E4 AC780004 */  sw      $t8, 0x0004($v1)           ## 0000000C
/* 6D748 8007E7E8 AC650000 */  sw      $a1, 0x0000($v1)           ## 00000008
/* 6D74C 8007E7EC 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 6D750 8007E7F0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 6D754 8007E7F4 03E00008 */  jr      $ra
/* 6D758 8007E7F8 00000000 */  nop


glabel func_8007E7FC
/* 6D75C 8007E7FC 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D760 8007E800 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D764 8007E804 25EF8A70 */  addiu   $t7, $t7, 0x8A70           ## $t7 = 800F8A70
/* 6D768 8007E808 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D76C 8007E80C AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D770 8007E810 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D774 8007E814 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D778 8007E818 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 6D77C 8007E81C 03E00008 */  jr      $ra
/* 6D780 8007E820 00000000 */  nop


glabel func_8007E824
/* 6D784 8007E824 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000000
/* 6D788 8007E828 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D78C 8007E82C 25EF8110 */  addiu   $t7, $t7, 0x8110           ## $t7 = 800F8110
/* 6D790 8007E830 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D794 8007E834 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D798 8007E838 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D79C 8007E83C 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 6D7A0 8007E840 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000008
/* 6D7A4 8007E844 3C18E300 */  lui     $t8, 0xE300                ## $t8 = E3000000
/* 6D7A8 8007E848 37181801 */  ori     $t8, $t8, 0x1801           ## $t8 = E3001801
/* 6D7AC 8007E84C 241900C0 */  addiu   $t9, $zero, 0x00C0         ## $t9 = 000000C0
/* 6D7B0 8007E850 ACB90004 */  sw      $t9, 0x0004($a1)           ## 0000000C
/* 6D7B4 8007E854 ACB80000 */  sw      $t8, 0x0000($a1)           ## 00000008
/* 6D7B8 8007E858 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 6D7BC 8007E85C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 6D7C0 8007E860 03E00008 */  jr      $ra
/* 6D7C4 8007E864 00000000 */  nop


glabel func_8007E868
/* 6D7C8 8007E868 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D7CC 8007E86C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D7D0 8007E870 27188530 */  addiu   $t8, $t8, 0x8530           ## $t8 = 800F8530
/* 6D7D4 8007E874 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D7D8 8007E878 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D7DC 8007E87C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D7E0 8007E880 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D7E4 8007E884 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D7E8 8007E888 03E00008 */  jr      $ra
/* 6D7EC 8007E88C 00000000 */  nop


glabel func_8007E890
/* 6D7F0 8007E890 8C8302B0 */  lw      $v1, 0x02B0($a0)           ## 000002B0
/* 6D7F4 8007E894 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D7F8 8007E898 27188530 */  addiu   $t8, $t8, 0x8530           ## $t8 = 800F8530
/* 6D7FC 8007E89C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D800 8007E8A0 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 6D804 8007E8A4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D808 8007E8A8 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D80C 8007E8AC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D810 8007E8B0 03E00008 */  jr      $ra
/* 6D814 8007E8B4 00000000 */  nop


glabel func_8007E8B8
/* 6D818 8007E8B8 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D81C 8007E8BC 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D820 8007E8C0 27188650 */  addiu   $t8, $t8, 0x8650           ## $t8 = 800F8650
/* 6D824 8007E8C4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D828 8007E8C8 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D82C 8007E8CC 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D830 8007E8D0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D834 8007E8D4 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D838 8007E8D8 03E00008 */  jr      $ra
/* 6D83C 8007E8DC 00000000 */  nop


glabel func_8007E8E0
/* 6D840 8007E8E0 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D844 8007E8E4 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D848 8007E8E8 27188680 */  addiu   $t8, $t8, 0x8680           ## $t8 = 800F8680
/* 6D84C 8007E8EC 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D850 8007E8F0 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D854 8007E8F4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D858 8007E8F8 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D85C 8007E8FC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D860 8007E900 03E00008 */  jr      $ra
/* 6D864 8007E904 00000000 */  nop


glabel func_8007E908
/* 6D868 8007E908 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D86C 8007E90C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D870 8007E910 27188260 */  addiu   $t8, $t8, 0x8260           ## $t8 = 800F8260
/* 6D874 8007E914 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D878 8007E918 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D87C 8007E91C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D880 8007E920 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D884 8007E924 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D888 8007E928 03E00008 */  jr      $ra
/* 6D88C 8007E92C 00000000 */  nop


glabel func_8007E930
/* 6D890 8007E930 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D894 8007E934 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D898 8007E938 27188890 */  addiu   $t8, $t8, 0x8890           ## $t8 = 800F8890
/* 6D89C 8007E93C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D8A0 8007E940 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D8A4 8007E944 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D8A8 8007E948 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D8AC 8007E94C AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D8B0 8007E950 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D8B4 8007E954 3C08E300 */  lui     $t0, 0xE300                ## $t0 = E3000000
/* 6D8B8 8007E958 35081801 */  ori     $t0, $t0, 0x1801           ## $t0 = E3001801
/* 6D8BC 8007E95C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6D8C0 8007E960 AC9902D0 */  sw      $t9, 0x02D0($a0)           ## 000002D0
/* 6D8C4 8007E964 240900C0 */  addiu   $t1, $zero, 0x00C0         ## $t1 = 000000C0
/* 6D8C8 8007E968 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 6D8CC 8007E96C AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 6D8D0 8007E970 03E00008 */  jr      $ra
/* 6D8D4 8007E974 00000000 */  nop


glabel func_8007E978
/* 6D8D8 8007E978 8C8302D0 */  lw      $v1, 0x02D0($a0)           ## 000002D0
/* 6D8DC 8007E97C 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D8E0 8007E980 271888C0 */  addiu   $t8, $t8, 0x88C0           ## $t8 = 800F88C0
/* 6D8E4 8007E984 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D8E8 8007E988 AC8E02D0 */  sw      $t6, 0x02D0($a0)           ## 000002D0
/* 6D8EC 8007E98C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D8F0 8007E990 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D8F4 8007E994 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D8F8 8007E998 03E00008 */  jr      $ra
/* 6D8FC 8007E99C 00000000 */  nop


glabel func_8007E9A0
/* 6D900 8007E9A0 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D904 8007E9A4 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D908 8007E9A8 271887D0 */  addiu   $t8, $t8, 0x87D0           ## $t8 = 800F87D0
/* 6D90C 8007E9AC 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D910 8007E9B0 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D914 8007E9B4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D918 8007E9B8 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D91C 8007E9BC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D920 8007E9C0 03E00008 */  jr      $ra
/* 6D924 8007E9C4 00000000 */  nop


glabel func_8007E9C8
/* 6D928 8007E9C8 8C820000 */  lw      $v0, 0x0000($a0)           ## 00000000
/* 6D92C 8007E9CC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 6D930 8007E9D0 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6D934 8007E9D4 25EF87D0 */  addiu   $t7, $t7, 0x87D0           ## $t7 = 800F87D0
/* 6D938 8007E9D8 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 6D93C 8007E9DC AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6D940 8007E9E0 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6D944 8007E9E4 24420008 */  addiu   $v0, $v0, 0x0008           ## $v0 = 00000008
/* 6D948 8007E9E8 AC820000 */  sw      $v0, 0x0000($a0)           ## 00000000
/* 6D94C 8007E9EC 03E00008 */  jr      $ra
/* 6D950 8007E9F0 00000000 */  nop


glabel func_8007E9F4
/* 6D954 8007E9F4 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6D958 8007E9F8 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6D95C 8007E9FC 27188860 */  addiu   $t8, $t8, 0x8860           ## $t8 = 800F8860
/* 6D960 8007EA00 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6D964 8007EA04 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6D968 8007EA08 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6D96C 8007EA0C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6D970 8007EA10 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6D974 8007EA14 03E00008 */  jr      $ra
/* 6D978 8007EA18 00000000 */  nop


glabel func_8007EA1C
/* 6D97C 8007EA1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 6D980 8007EA20 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 6D984 8007EA24 AFA5001C */  sw      $a1, 0x001C($sp)
/* 6D988 8007EA28 AFA60020 */  sw      $a2, 0x0020($sp)
/* 6D98C 8007EA2C AFA70024 */  sw      $a3, 0x0024($sp)
/* 6D990 8007EA30 0C0286B1 */  jal     func_800A1AC4
/* 6D994 8007EA34 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
/* 6D998 8007EA38 8FA3001C */  lw      $v1, 0x001C($sp)
/* 6D99C 8007EA3C 8FA40020 */  lw      $a0, 0x0020($sp)
/* 6D9A0 8007EA40 3C0EE800 */  lui     $t6, 0xE800                ## $t6 = E8000000
/* 6D9A4 8007EA44 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 6D9A8 8007EA48 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 6D9AC 8007EA4C 306F0FFF */  andi    $t7, $v1, 0x0FFF           ## $t7 = 00000000
/* 6D9B0 8007EA50 000FC300 */  sll     $t8, $t7, 12
/* 6D9B4 8007EA54 3C01F200 */  lui     $at, 0xF200                ## $at = F2000000
/* 6D9B8 8007EA58 0301C825 */  or      $t9, $t8, $at              ## $t9 = F2000000
/* 6D9BC 8007EA5C 30880FFF */  andi    $t0, $a0, 0x0FFF           ## $t0 = 00000000
/* 6D9C0 8007EA60 03284825 */  or      $t1, $t9, $t0              ## $t1 = F2000000
/* 6D9C4 8007EA64 AC490008 */  sw      $t1, 0x0008($v0)           ## 00000008
/* 6D9C8 8007EA68 8FAA0024 */  lw      $t2, 0x0024($sp)
/* 6D9CC 8007EA6C 8FB80028 */  lw      $t8, 0x0028($sp)
/* 6D9D0 8007EA70 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 6D9D4 8007EA74 000B6080 */  sll     $t4, $t3,  2
/* 6D9D8 8007EA78 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 6D9DC 8007EA7C 00194080 */  sll     $t0, $t9,  2
/* 6D9E0 8007EA80 01836821 */  addu    $t5, $t4, $v1
/* 6D9E4 8007EA84 31AE0FFF */  andi    $t6, $t5, 0x0FFF           ## $t6 = 00000000
/* 6D9E8 8007EA88 00884821 */  addu    $t1, $a0, $t0
/* 6D9EC 8007EA8C 312A0FFF */  andi    $t2, $t1, 0x0FFF           ## $t2 = 00000000
/* 6D9F0 8007EA90 000E7B00 */  sll     $t7, $t6, 12
/* 6D9F4 8007EA94 01EA5825 */  or      $t3, $t7, $t2              ## $t3 = 00000000
/* 6D9F8 8007EA98 AC4B000C */  sw      $t3, 0x000C($v0)           ## 0000000C
/* 6D9FC 8007EA9C 3C0CDF00 */  lui     $t4, 0xDF00                ## $t4 = DF000000
/* 6DA00 8007EAA0 AC4C0010 */  sw      $t4, 0x0010($v0)           ## 00000010
/* 6DA04 8007EAA4 AC400014 */  sw      $zero, 0x0014($v0)         ## 00000014
/* 6DA08 8007EAA8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 6DA0C 8007EAAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 6DA10 8007EAB0 03E00008 */  jr      $ra
/* 6DA14 8007EAB4 00000000 */  nop


glabel func_8007EAB8
/* 6DA18 8007EAB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6DA1C 8007EABC AFBF001C */  sw      $ra, 0x001C($sp)
/* 6DA20 8007EAC0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 6DA24 8007EAC4 0C01FA87 */  jal     func_8007EA1C
/* 6DA28 8007EAC8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 6DA2C 8007EACC 8FBF001C */  lw      $ra, 0x001C($sp)
/* 6DA30 8007EAD0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 6DA34 8007EAD4 03E00008 */  jr      $ra
/* 6DA38 8007EAD8 00000000 */  nop


glabel func_8007EADC
/* 6DA3C 8007EADC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 6DA40 8007EAE0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 6DA44 8007EAE4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 6DA48 8007EAE8 0C01FAC0 */  jal     func_8007EB00
/* 6DA4C 8007EAEC AFA00010 */  sw      $zero, 0x0010($sp)
/* 6DA50 8007EAF0 8FBF001C */  lw      $ra, 0x001C($sp)
/* 6DA54 8007EAF4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 6DA58 8007EAF8 03E00008 */  jr      $ra
/* 6DA5C 8007EAFC 00000000 */  nop


glabel func_8007EB00
/* 6DA60 8007EB00 8C8302C4 */  lw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DA64 8007EB04 30A507FF */  andi    $a1, $a1, 0x07FF           ## $a1 = 00000000
/* 6DA68 8007EB08 30C607FF */  andi    $a2, $a2, 0x07FF           ## $a2 = 00000000
/* 6DA6C 8007EB0C 2463FFE0 */  addiu   $v1, $v1, 0xFFE0           ## $v1 = FFFFFFE0
/* 6DA70 8007EB10 AC8302C4 */  sw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DA74 8007EB14 3C0EE800 */  lui     $t6, 0xE800                ## $t6 = E8000000
/* 6DA78 8007EB18 AC6E0000 */  sw      $t6, 0x0000($v1)           ## FFFFFFE0
/* 6DA7C 8007EB1C AC600004 */  sw      $zero, 0x0004($v1)         ## FFFFFFE4
/* 6DA80 8007EB20 30AF0FFF */  andi    $t7, $a1, 0x0FFF           ## $t7 = 00000000
/* 6DA84 8007EB24 000FC300 */  sll     $t8, $t7, 12
/* 6DA88 8007EB28 3C01F200 */  lui     $at, 0xF200                ## $at = F2000000
/* 6DA8C 8007EB2C 0301C825 */  or      $t9, $t8, $at              ## $t9 = F2000000
/* 6DA90 8007EB30 30C80FFF */  andi    $t0, $a2, 0x0FFF           ## $t0 = 00000000
/* 6DA94 8007EB34 03284825 */  or      $t1, $t9, $t0              ## $t1 = F2000000
/* 6DA98 8007EB38 AC690008 */  sw      $t1, 0x0008($v1)           ## FFFFFFE8
/* 6DA9C 8007EB3C 8FAF0010 */  lw      $t7, 0x0010($sp)
/* 6DAA0 8007EB40 24EAFFFF */  addiu   $t2, $a3, 0xFFFF           ## $t2 = FFFFFFFF
/* 6DAA4 8007EB44 000A5880 */  sll     $t3, $t2,  2
/* 6DAA8 8007EB48 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 6DAAC 8007EB4C 0018C880 */  sll     $t9, $t8,  2
/* 6DAB0 8007EB50 01656021 */  addu    $t4, $t3, $a1
/* 6DAB4 8007EB54 318D0FFF */  andi    $t5, $t4, 0x0FFF           ## $t5 = 00000000
/* 6DAB8 8007EB58 00D94021 */  addu    $t0, $a2, $t9
/* 6DABC 8007EB5C 31090FFF */  andi    $t1, $t0, 0x0FFF           ## $t1 = 00000000
/* 6DAC0 8007EB60 000D7300 */  sll     $t6, $t5, 12
/* 6DAC4 8007EB64 01C95025 */  or      $t2, $t6, $t1              ## $t2 = E8000000
/* 6DAC8 8007EB68 AC6A000C */  sw      $t2, 0x000C($v1)           ## FFFFFFEC
/* 6DACC 8007EB6C 3C0BDF00 */  lui     $t3, 0xDF00                ## $t3 = DF000000
/* 6DAD0 8007EB70 AC6B0010 */  sw      $t3, 0x0010($v1)           ## FFFFFFF0
/* 6DAD4 8007EB74 AC600014 */  sw      $zero, 0x0014($v1)         ## FFFFFFF4
/* 6DAD8 8007EB78 00601025 */  or      $v0, $v1, $zero            ## $v0 = FFFFFFE0
/* 6DADC 8007EB7C 03E00008 */  jr      $ra
/* 6DAE0 8007EB80 00000000 */  nop


glabel func_8007EB84
/* 6DAE4 8007EB84 3C02E800 */  lui     $v0, 0xE800                ## $v0 = E8000000
/* 6DAE8 8007EB88 3C08F200 */  lui     $t0, 0xF200                ## $t0 = F2000000
/* 6DAEC 8007EB8C 8C8302C4 */  lw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DAF0 8007EB90 30C607FF */  andi    $a2, $a2, 0x07FF           ## $a2 = 00000000
/* 6DAF4 8007EB94 30E707FF */  andi    $a3, $a3, 0x07FF           ## $a3 = 00000000
/* 6DAF8 8007EB98 2463FFD0 */  addiu   $v1, $v1, 0xFFD0           ## $v1 = FFFFFFD0
/* 6DAFC 8007EB9C AC8302C4 */  sw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DB00 8007EBA0 8FAE001C */  lw      $t6, 0x001C($sp)
/* 6DB04 8007EBA4 8FB80020 */  lw      $t8, 0x0020($sp)
/* 6DB08 8007EBA8 30C90FFF */  andi    $t1, $a2, 0x0FFF           ## $t1 = 00000000
/* 6DB0C 8007EBAC 31CF07FF */  andi    $t7, $t6, 0x07FF           ## $t7 = 00000000
/* 6DB10 8007EBB0 331907FF */  andi    $t9, $t8, 0x07FF           ## $t9 = 00000000
/* 6DB14 8007EBB4 AFAF001C */  sw      $t7, 0x001C($sp)
/* 6DB18 8007EBB8 AFB90020 */  sw      $t9, 0x0020($sp)
/* 6DB1C 8007EBBC AC620000 */  sw      $v0, 0x0000($v1)           ## FFFFFFD0
/* 6DB20 8007EBC0 AC600004 */  sw      $zero, 0x0004($v1)         ## FFFFFFD4
/* 6DB24 8007EBC4 00095300 */  sll     $t2, $t1, 12
/* 6DB28 8007EBC8 01485825 */  or      $t3, $t2, $t0              ## $t3 = F2000000
/* 6DB2C 8007EBCC 30EC0FFF */  andi    $t4, $a3, 0x0FFF           ## $t4 = 00000000
/* 6DB30 8007EBD0 016C6825 */  or      $t5, $t3, $t4              ## $t5 = F2000000
/* 6DB34 8007EBD4 AC6D0008 */  sw      $t5, 0x0008($v1)           ## FFFFFFD8
/* 6DB38 8007EBD8 8FB80010 */  lw      $t8, 0x0010($sp)
/* 6DB3C 8007EBDC 30AE0007 */  andi    $t6, $a1, 0x0007           ## $t6 = 00000000
/* 6DB40 8007EBE0 000E7E00 */  sll     $t7, $t6, 24
/* 6DB44 8007EBE4 8FAE0014 */  lw      $t6, 0x0014($sp)
/* 6DB48 8007EBE8 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 6DB4C 8007EBEC 00194880 */  sll     $t1, $t9,  2
/* 6DB50 8007EBF0 00C95021 */  addu    $t2, $a2, $t1
/* 6DB54 8007EBF4 25D8FFFF */  addiu   $t8, $t6, 0xFFFF           ## $t8 = FFFFFFFF
/* 6DB58 8007EBF8 0018C880 */  sll     $t9, $t8,  2
/* 6DB5C 8007EBFC 314B0FFF */  andi    $t3, $t2, 0x0FFF           ## $t3 = 00000000
/* 6DB60 8007EC00 000B6300 */  sll     $t4, $t3, 12
/* 6DB64 8007EC04 00F94821 */  addu    $t1, $a3, $t9
/* 6DB68 8007EC08 312A0FFF */  andi    $t2, $t1, 0x0FFF           ## $t2 = 00000000
/* 6DB6C 8007EC0C 01EC6825 */  or      $t5, $t7, $t4              ## $t5 = 00000000
/* 6DB70 8007EC10 01AA5825 */  or      $t3, $t5, $t2              ## $t3 = 00000000
/* 6DB74 8007EC14 AC6B000C */  sw      $t3, 0x000C($v1)           ## FFFFFFDC
/* 6DB78 8007EC18 AC620010 */  sw      $v0, 0x0010($v1)           ## FFFFFFE0
/* 6DB7C 8007EC1C AC600014 */  sw      $zero, 0x0014($v1)         ## FFFFFFE4
/* 6DB80 8007EC20 8FAF001C */  lw      $t7, 0x001C($sp)
/* 6DB84 8007EC24 8FB90020 */  lw      $t9, 0x0020($sp)
/* 6DB88 8007EC28 00601025 */  or      $v0, $v1, $zero            ## $v0 = FFFFFFD0
/* 6DB8C 8007EC2C 31EC0FFF */  andi    $t4, $t7, 0x0FFF           ## $t4 = 00000000
/* 6DB90 8007EC30 000C7300 */  sll     $t6, $t4, 12
/* 6DB94 8007EC34 01C8C025 */  or      $t8, $t6, $t0              ## $t8 = F2000000
/* 6DB98 8007EC38 33290FFF */  andi    $t1, $t9, 0x0FFF           ## $t1 = 00000FFF
/* 6DB9C 8007EC3C 03096825 */  or      $t5, $t8, $t1              ## $t5 = F2000FFF
/* 6DBA0 8007EC40 AC6D0018 */  sw      $t5, 0x0018($v1)           ## FFFFFFE8
/* 6DBA4 8007EC44 8FAB0024 */  lw      $t3, 0x0024($sp)
/* 6DBA8 8007EC48 8FAA001C */  lw      $t2, 0x001C($sp)
/* 6DBAC 8007EC4C 8FA90018 */  lw      $t1, 0x0018($sp)
/* 6DBB0 8007EC50 256FFFFF */  addiu   $t7, $t3, 0xFFFF           ## $t7 = FFFFFFFF
/* 6DBB4 8007EC54 000F6080 */  sll     $t4, $t7,  2
/* 6DBB8 8007EC58 014C7021 */  addu    $t6, $t2, $t4
/* 6DBBC 8007EC5C 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 6DBC0 8007EC60 31D90FFF */  andi    $t9, $t6, 0x0FFF           ## $t9 = 00000000
/* 6DBC4 8007EC64 8FAA0020 */  lw      $t2, 0x0020($sp)
/* 6DBC8 8007EC68 0019C300 */  sll     $t8, $t9, 12
/* 6DBCC 8007EC6C 312D0007 */  andi    $t5, $t1, 0x0007           ## $t5 = 00000007
/* 6DBD0 8007EC70 258EFFFF */  addiu   $t6, $t4, 0xFFFF           ## $t6 = FFFFFFFF
/* 6DBD4 8007EC74 000EC880 */  sll     $t9, $t6,  2
/* 6DBD8 8007EC78 000D5E00 */  sll     $t3, $t5, 24
/* 6DBDC 8007EC7C 01594821 */  addu    $t1, $t2, $t9
/* 6DBE0 8007EC80 312D0FFF */  andi    $t5, $t1, 0x0FFF           ## $t5 = 00000FFF
/* 6DBE4 8007EC84 01787825 */  or      $t7, $t3, $t8              ## $t7 = F2000000
/* 6DBE8 8007EC88 01ED5825 */  or      $t3, $t7, $t5              ## $t3 = F2000FFF
/* 6DBEC 8007EC8C AC6B001C */  sw      $t3, 0x001C($v1)           ## FFFFFFEC
/* 6DBF0 8007EC90 3C18DF00 */  lui     $t8, 0xDF00                ## $t8 = DF000000
/* 6DBF4 8007EC94 AC780020 */  sw      $t8, 0x0020($v1)           ## FFFFFFF0
/* 6DBF8 8007EC98 AC600024 */  sw      $zero, 0x0024($v1)         ## FFFFFFF4
/* 6DBFC 8007EC9C 03E00008 */  jr      $ra
/* 6DC00 8007ECA0 00000000 */  nop


glabel func_8007ECA4
/* 6DC04 8007ECA4 3C02E800 */  lui     $v0, 0xE800                ## $v0 = E8000000
/* 6DC08 8007ECA8 3C08F200 */  lui     $t0, 0xF200                ## $t0 = F2000000
/* 6DC0C 8007ECAC 8C8302C4 */  lw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DC10 8007ECB0 30C607FF */  andi    $a2, $a2, 0x07FF           ## $a2 = 00000000
/* 6DC14 8007ECB4 30E707FF */  andi    $a3, $a3, 0x07FF           ## $a3 = 00000000
/* 6DC18 8007ECB8 2463FFD0 */  addiu   $v1, $v1, 0xFFD0           ## $v1 = FFFFFFD0
/* 6DC1C 8007ECBC AC8302C4 */  sw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DC20 8007ECC0 8FAE001C */  lw      $t6, 0x001C($sp)
/* 6DC24 8007ECC4 8FB80020 */  lw      $t8, 0x0020($sp)
/* 6DC28 8007ECC8 30C90FFF */  andi    $t1, $a2, 0x0FFF           ## $t1 = 00000000
/* 6DC2C 8007ECCC 31CF07FF */  andi    $t7, $t6, 0x07FF           ## $t7 = 00000000
/* 6DC30 8007ECD0 331907FF */  andi    $t9, $t8, 0x07FF           ## $t9 = 00000000
/* 6DC34 8007ECD4 AFAF001C */  sw      $t7, 0x001C($sp)
/* 6DC38 8007ECD8 AFB90020 */  sw      $t9, 0x0020($sp)
/* 6DC3C 8007ECDC AC620000 */  sw      $v0, 0x0000($v1)           ## FFFFFFD0
/* 6DC40 8007ECE0 AC600004 */  sw      $zero, 0x0004($v1)         ## FFFFFFD4
/* 6DC44 8007ECE4 00095300 */  sll     $t2, $t1, 12
/* 6DC48 8007ECE8 01485825 */  or      $t3, $t2, $t0              ## $t3 = F2000000
/* 6DC4C 8007ECEC 30EC0FFF */  andi    $t4, $a3, 0x0FFF           ## $t4 = 00000000
/* 6DC50 8007ECF0 016C6825 */  or      $t5, $t3, $t4              ## $t5 = F2000000
/* 6DC54 8007ECF4 AC6D0008 */  sw      $t5, 0x0008($v1)           ## FFFFFFD8
/* 6DC58 8007ECF8 8FB80010 */  lw      $t8, 0x0010($sp)
/* 6DC5C 8007ECFC 30AE0007 */  andi    $t6, $a1, 0x0007           ## $t6 = 00000000
/* 6DC60 8007ED00 000E7E00 */  sll     $t7, $t6, 24
/* 6DC64 8007ED04 8FAE0014 */  lw      $t6, 0x0014($sp)
/* 6DC68 8007ED08 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 6DC6C 8007ED0C 00194880 */  sll     $t1, $t9,  2
/* 6DC70 8007ED10 00C95021 */  addu    $t2, $a2, $t1
/* 6DC74 8007ED14 25D8FFFF */  addiu   $t8, $t6, 0xFFFF           ## $t8 = FFFFFFFF
/* 6DC78 8007ED18 0018C880 */  sll     $t9, $t8,  2
/* 6DC7C 8007ED1C 314B0FFF */  andi    $t3, $t2, 0x0FFF           ## $t3 = 00000000
/* 6DC80 8007ED20 000B6300 */  sll     $t4, $t3, 12
/* 6DC84 8007ED24 00F94821 */  addu    $t1, $a3, $t9
/* 6DC88 8007ED28 312A0FFF */  andi    $t2, $t1, 0x0FFF           ## $t2 = 00000000
/* 6DC8C 8007ED2C 01EC6825 */  or      $t5, $t7, $t4              ## $t5 = 00000000
/* 6DC90 8007ED30 01AA5825 */  or      $t3, $t5, $t2              ## $t3 = 00000000
/* 6DC94 8007ED34 AC6B000C */  sw      $t3, 0x000C($v1)           ## FFFFFFDC
/* 6DC98 8007ED38 AC620010 */  sw      $v0, 0x0010($v1)           ## FFFFFFE0
/* 6DC9C 8007ED3C AC600014 */  sw      $zero, 0x0014($v1)         ## FFFFFFE4
/* 6DCA0 8007ED40 8FAF001C */  lw      $t7, 0x001C($sp)
/* 6DCA4 8007ED44 8FB90020 */  lw      $t9, 0x0020($sp)
/* 6DCA8 8007ED48 00601025 */  or      $v0, $v1, $zero            ## $v0 = FFFFFFD0
/* 6DCAC 8007ED4C 31EC0FFF */  andi    $t4, $t7, 0x0FFF           ## $t4 = 00000000
/* 6DCB0 8007ED50 000C7300 */  sll     $t6, $t4, 12
/* 6DCB4 8007ED54 01C8C025 */  or      $t8, $t6, $t0              ## $t8 = F2000000
/* 6DCB8 8007ED58 33290FFF */  andi    $t1, $t9, 0x0FFF           ## $t1 = 00000FFF
/* 6DCBC 8007ED5C 03096825 */  or      $t5, $t8, $t1              ## $t5 = F2000FFF
/* 6DCC0 8007ED60 AC6D0018 */  sw      $t5, 0x0018($v1)           ## FFFFFFE8
/* 6DCC4 8007ED64 8FAB0024 */  lw      $t3, 0x0024($sp)
/* 6DCC8 8007ED68 8FAA001C */  lw      $t2, 0x001C($sp)
/* 6DCCC 8007ED6C 8FA90018 */  lw      $t1, 0x0018($sp)
/* 6DCD0 8007ED70 256FFFFF */  addiu   $t7, $t3, 0xFFFF           ## $t7 = FFFFFFFF
/* 6DCD4 8007ED74 000F6080 */  sll     $t4, $t7,  2
/* 6DCD8 8007ED78 014C7021 */  addu    $t6, $t2, $t4
/* 6DCDC 8007ED7C 8FAC0028 */  lw      $t4, 0x0028($sp)
/* 6DCE0 8007ED80 31D90FFF */  andi    $t9, $t6, 0x0FFF           ## $t9 = 00000000
/* 6DCE4 8007ED84 8FAA0020 */  lw      $t2, 0x0020($sp)
/* 6DCE8 8007ED88 0019C300 */  sll     $t8, $t9, 12
/* 6DCEC 8007ED8C 312D0007 */  andi    $t5, $t1, 0x0007           ## $t5 = 00000007
/* 6DCF0 8007ED90 258EFFFF */  addiu   $t6, $t4, 0xFFFF           ## $t6 = FFFFFFFF
/* 6DCF4 8007ED94 000EC880 */  sll     $t9, $t6,  2
/* 6DCF8 8007ED98 000D5E00 */  sll     $t3, $t5, 24
/* 6DCFC 8007ED9C 01594821 */  addu    $t1, $t2, $t9
/* 6DD00 8007EDA0 312D0FFF */  andi    $t5, $t1, 0x0FFF           ## $t5 = 00000FFF
/* 6DD04 8007EDA4 01787825 */  or      $t7, $t3, $t8              ## $t7 = F2000000
/* 6DD08 8007EDA8 01ED5825 */  or      $t3, $t7, $t5              ## $t3 = F2000FFF
/* 6DD0C 8007EDAC AC6B001C */  sw      $t3, 0x001C($v1)           ## FFFFFFEC
/* 6DD10 8007EDB0 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 6DD14 8007EDB4 AC780020 */  sw      $t8, 0x0020($v1)           ## FFFFFFF0
/* 6DD18 8007EDB8 8FB90030 */  lw      $t9, 0x0030($sp)
/* 6DD1C 8007EDBC 8FAB0034 */  lw      $t3, 0x0034($sp)
/* 6DD20 8007EDC0 8FAE002C */  lw      $t6, 0x002C($sp)
/* 6DD24 8007EDC4 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 6DD28 8007EDC8 8FB90038 */  lw      $t9, 0x0038($sp)
/* 6DD2C 8007EDCC 00097C00 */  sll     $t7, $t1, 16
/* 6DD30 8007EDD0 317800FF */  andi    $t8, $t3, 0x00FF           ## $t8 = 000000FF
/* 6DD34 8007EDD4 000E5600 */  sll     $t2, $t6, 24
/* 6DD38 8007EDD8 014F6825 */  or      $t5, $t2, $t7              ## $t5 = F2000000
/* 6DD3C 8007EDDC 00186200 */  sll     $t4, $t8,  8
/* 6DD40 8007EDE0 01AC7025 */  or      $t6, $t5, $t4              ## $t6 = F2000000
/* 6DD44 8007EDE4 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 6DD48 8007EDE8 01C95025 */  or      $t2, $t6, $t1              ## $t2 = F2000000
/* 6DD4C 8007EDEC AC6A0024 */  sw      $t2, 0x0024($v1)           ## FFFFFFF4
/* 6DD50 8007EDF0 3C0FDF00 */  lui     $t7, 0xDF00                ## $t7 = DF000000
/* 6DD54 8007EDF4 AC6F0028 */  sw      $t7, 0x0028($v1)           ## FFFFFFF8
/* 6DD58 8007EDF8 AC60002C */  sw      $zero, 0x002C($v1)         ## FFFFFFFC
/* 6DD5C 8007EDFC 03E00008 */  jr      $ra
/* 6DD60 8007EE00 00000000 */  nop


glabel func_8007EE04
/* 6DD64 8007EE04 8C8302C4 */  lw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DD68 8007EE08 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 6DD6C 8007EE0C 0005C600 */  sll     $t8, $a1, 24
/* 6DD70 8007EE10 2463FFF0 */  addiu   $v1, $v1, 0xFFF0           ## $v1 = FFFFFFF0
/* 6DD74 8007EE14 AC8302C4 */  sw      $v1, 0x02C4($a0)           ## 000002C4
/* 6DD78 8007EE18 AC6E0000 */  sw      $t6, 0x0000($v1)           ## FFFFFFF0
/* 6DD7C 8007EE1C 8FAD0010 */  lw      $t5, 0x0010($sp)
/* 6DD80 8007EE20 30D900FF */  andi    $t9, $a2, 0x00FF           ## $t9 = 00000000
/* 6DD84 8007EE24 00194400 */  sll     $t0, $t9, 16
/* 6DD88 8007EE28 30EA00FF */  andi    $t2, $a3, 0x00FF           ## $t2 = 00000000
/* 6DD8C 8007EE2C 000A5A00 */  sll     $t3, $t2,  8
/* 6DD90 8007EE30 03084825 */  or      $t1, $t8, $t0              ## $t1 = 00000000
/* 6DD94 8007EE34 012B6025 */  or      $t4, $t1, $t3              ## $t4 = 00000000
/* 6DD98 8007EE38 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 6DD9C 8007EE3C 018E7825 */  or      $t7, $t4, $t6              ## $t7 = 00000000
/* 6DDA0 8007EE40 AC6F0004 */  sw      $t7, 0x0004($v1)           ## FFFFFFF4
/* 6DDA4 8007EE44 3C19DF00 */  lui     $t9, 0xDF00                ## $t9 = DF000000
/* 6DDA8 8007EE48 AC790008 */  sw      $t9, 0x0008($v1)           ## FFFFFFF8
/* 6DDAC 8007EE4C AC60000C */  sw      $zero, 0x000C($v1)         ## FFFFFFFC
/* 6DDB0 8007EE50 00601025 */  or      $v0, $v1, $zero            ## $v0 = FFFFFFF0
/* 6DDB4 8007EE54 03E00008 */  jr      $ra
/* 6DDB8 8007EE58 00000000 */  nop


glabel func_8007EE5C
/* 6DDBC 8007EE5C 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 6DDC0 8007EE60 AFB20020 */  sw      $s2, 0x0020($sp)
/* 6DDC4 8007EE64 AFB00018 */  sw      $s0, 0x0018($sp)
/* 6DDC8 8007EE68 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 6DDCC 8007EE6C 3C108010 */  lui     $s0, 0x8010                ## $s0 = 80100000
/* 6DDD0 8007EE70 3C128010 */  lui     $s2, 0x8010                ## $s2 = 80100000
/* 6DDD4 8007EE74 AFB1001C */  sw      $s1, 0x001C($sp)
/* 6DDD8 8007EE78 44810000 */  mtc1    $at, $f0                   ## $f0 = 4.00
/* 6DDDC 8007EE7C 3C11FF10 */  lui     $s1, 0xFF10                ## $s1 = FF100000
/* 6DDE0 8007EE80 2652E504 */  addiu   $s2, $s2, 0xE504           ## $s2 = 800FE504
/* 6DDE4 8007EE84 2610E500 */  addiu   $s0, $s0, 0xE500           ## $s0 = 800FE500
/* 6DDE8 8007EE88 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 6DDEC 8007EE8C AFA500BC */  sw      $a1, 0x00BC($sp)
/* 6DDF0 8007EE90 AFA600C0 */  sw      $a2, 0x00C0($sp)
/* 6DDF4 8007EE94 AFA700C4 */  sw      $a3, 0x00C4($sp)
/* 6DDF8 8007EE98 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6DDFC 8007EE9C 3C098010 */  lui     $t1, 0x8010                ## $t1 = 80100000
/* 6DE00 8007EEA0 25298AA0 */  addiu   $t1, $t1, 0x8AA0           ## $t1 = 800F8AA0
/* 6DE04 8007EEA4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6DE08 8007EEA8 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6DE0C 8007EEAC 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6DE10 8007EEB0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6DE14 8007EEB4 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 6DE18 8007EEB8 8C8202D0 */  lw      $v0, 0x02D0($a0)           ## 000002D0
/* 6DE1C 8007EEBC 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 6DE20 8007EEC0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 6DE24 8007EEC4 AC9802D0 */  sw      $t8, 0x02D0($a0)           ## 000002D0
/* 6DE28 8007EEC8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 6DE2C 8007EECC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 6DE30 8007EED0 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6DE34 8007EED4 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6DE38 8007EED8 250E0008 */  addiu   $t6, $t0, 0x0008           ## $t6 = 00000008
/* 6DE3C 8007EEDC AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 6DE40 8007EEE0 AD090004 */  sw      $t1, 0x0004($t0)           ## 00000004
/* 6DE44 8007EEE4 AD0F0000 */  sw      $t7, 0x0000($t0)           ## 00000000
/* 6DE48 8007EEE8 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6DE4C 8007EEEC 3C19ED00 */  lui     $t9, 0xED00                ## $t9 = ED000000
/* 6DE50 8007EEF0 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 6DE54 8007EEF4 AC9802C0 */  sw      $t8, 0x02C0($a0)           ## 000002C0
/* 6DE58 8007EEF8 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 6DE5C 8007EEFC 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 800FE500
/* 6DE60 8007EF00 8E4F0000 */  lw      $t7, 0x0000($s2)           ## 800FE504
/* 6DE64 8007EF04 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 6DE68 8007EF08 448F8000 */  mtc1    $t7, $f16                  ## $f16 = -2305843009213693952.00
/* 6DE6C 8007EF0C 468021A0 */  cvt.s.w $f6, $f4
/* 6DE70 8007EF10 468084A0 */  cvt.s.w $f18, $f16
/* 6DE74 8007EF14 46003202 */  mul.s   $f8, $f6, $f0
/* 6DE78 8007EF18 4600428D */  trunc.w.s $f10, $f8
/* 6DE7C 8007EF1C 46009102 */  mul.s   $f4, $f18, $f0
/* 6DE80 8007EF20 44185000 */  mfc1    $t8, $f10
/* 6DE84 8007EF24 00000000 */  nop
/* 6DE88 8007EF28 33190FFF */  andi    $t9, $t8, 0x0FFF           ## $t9 = 00000008
/* 6DE8C 8007EF2C 4600218D */  trunc.w.s $f6, $f4
/* 6DE90 8007EF30 00197300 */  sll     $t6, $t9, 12
/* 6DE94 8007EF34 44193000 */  mfc1    $t9, $f6
/* 6DE98 8007EF38 00000000 */  nop
/* 6DE9C 8007EF3C 332F0FFF */  andi    $t7, $t9, 0x0FFF           ## $t7 = 00000008
/* 6DEA0 8007EF40 01CFC025 */  or      $t8, $t6, $t7              ## $t8 = 00000008
/* 6DEA4 8007EF44 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6DEA8 8007EF48 8C8202D0 */  lw      $v0, 0x02D0($a0)           ## 000002D0
/* 6DEAC 8007EF4C 3C0EED00 */  lui     $t6, 0xED00                ## $t6 = ED000000
/* 6DEB0 8007EF50 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 6DEB4 8007EF54 AC9902D0 */  sw      $t9, 0x02D0($a0)           ## 000002D0
/* 6DEB8 8007EF58 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 6DEBC 8007EF5C 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 800FE500
/* 6DEC0 8007EF60 8E580000 */  lw      $t8, 0x0000($s2)           ## 800FE504
/* 6DEC4 8007EF64 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 6DEC8 8007EF68 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 6DECC 8007EF6C 468042A0 */  cvt.s.w $f10, $f8
/* 6DED0 8007EF70 468021A0 */  cvt.s.w $f6, $f4
/* 6DED4 8007EF74 46005402 */  mul.s   $f16, $f10, $f0
/* 6DED8 8007EF78 4600848D */  trunc.w.s $f18, $f16
/* 6DEDC 8007EF7C 46003202 */  mul.s   $f8, $f6, $f0
/* 6DEE0 8007EF80 44199000 */  mfc1    $t9, $f18
/* 6DEE4 8007EF84 00000000 */  nop
/* 6DEE8 8007EF88 332E0FFF */  andi    $t6, $t9, 0x0FFF           ## $t6 = 00000008
/* 6DEEC 8007EF8C 4600428D */  trunc.w.s $f10, $f8
/* 6DEF0 8007EF90 000E7B00 */  sll     $t7, $t6, 12
/* 6DEF4 8007EF94 440E5000 */  mfc1    $t6, $f10
/* 6DEF8 8007EF98 00000000 */  nop
/* 6DEFC 8007EF9C 31D80FFF */  andi    $t8, $t6, 0x0FFF           ## $t8 = 00000008
/* 6DF00 8007EFA0 01F8C825 */  or      $t9, $t7, $t8              ## $t9 = 00000008
/* 6DF04 8007EFA4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 6DF08 8007EFA8 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6DF0C 8007EFAC 3C0FED00 */  lui     $t7, 0xED00                ## $t7 = ED000000
/* 6DF10 8007EFB0 AFA80098 */  sw      $t0, 0x0098($sp)
/* 6DF14 8007EFB4 250E0008 */  addiu   $t6, $t0, 0x0008           ## $t6 = 00000008
/* 6DF18 8007EFB8 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 6DF1C 8007EFBC 8FB80098 */  lw      $t8, 0x0098($sp)
/* 6DF20 8007EFC0 AF0F0000 */  sw      $t7, 0x0000($t8)           ## 00000008
/* 6DF24 8007EFC4 8E190000 */  lw      $t9, 0x0000($s0)           ## 800FE500
/* 6DF28 8007EFC8 8E4E0000 */  lw      $t6, 0x0000($s2)           ## 800FE504
/* 6DF2C 8007EFCC 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 6DF30 8007EFD0 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 6DF34 8007EFD4 468084A0 */  cvt.s.w $f18, $f16
/* 6DF38 8007EFD8 468042A0 */  cvt.s.w $f10, $f8
/* 6DF3C 8007EFDC 46009102 */  mul.s   $f4, $f18, $f0
/* 6DF40 8007EFE0 4600218D */  trunc.w.s $f6, $f4
/* 6DF44 8007EFE4 46005402 */  mul.s   $f16, $f10, $f0
/* 6DF48 8007EFE8 440F3000 */  mfc1    $t7, $f6
/* 6DF4C 8007EFEC 00000000 */  nop
/* 6DF50 8007EFF0 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000000
/* 6DF54 8007EFF4 4600848D */  trunc.w.s $f18, $f16
/* 6DF58 8007EFF8 0018CB00 */  sll     $t9, $t8, 12
/* 6DF5C 8007EFFC 44189000 */  mfc1    $t8, $f18
/* 6DF60 8007F000 00000000 */  nop
/* 6DF64 8007F004 330E0FFF */  andi    $t6, $t8, 0x0FFF           ## $t6 = 00000000
/* 6DF68 8007F008 8FB80098 */  lw      $t8, 0x0098($sp)
/* 6DF6C 8007F00C 032E7825 */  or      $t7, $t9, $t6              ## $t7 = 00000008
/* 6DF70 8007F010 AF0F0004 */  sw      $t7, 0x0004($t8)           ## 00000004
/* 6DF74 8007F014 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6DF78 8007F018 AFA30094 */  sw      $v1, 0x0094($sp)
/* 6DF7C 8007F01C 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6DF80 8007F020 AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6DF84 8007F024 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 800FE500
/* 6DF88 8007F028 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 6DF8C 8007F02C 8FAE0094 */  lw      $t6, 0x0094($sp)
/* 6DF90 8007F030 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000FFF
/* 6DF94 8007F034 0311C825 */  or      $t9, $t8, $s1              ## $t9 = FF100FFF
/* 6DF98 8007F038 ADD90000 */  sw      $t9, 0x0000($t6)           ## 00000000
/* 6DF9C 8007F03C 8FB80094 */  lw      $t8, 0x0094($sp)
/* 6DFA0 8007F040 8C8F02DC */  lw      $t7, 0x02DC($a0)           ## 000002DC
/* 6DFA4 8007F044 AF0F0004 */  sw      $t7, 0x0004($t8)           ## 00001003
/* 6DFA8 8007F048 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6DFAC 8007F04C AFA30090 */  sw      $v1, 0x0090($sp)
/* 6DFB0 8007F050 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6DFB4 8007F054 AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6DFB8 8007F058 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 800FE500
/* 6DFBC 8007F05C 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 6DFC0 8007F060 8FAE0090 */  lw      $t6, 0x0090($sp)
/* 6DFC4 8007F064 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000FFF
/* 6DFC8 8007F068 0311C825 */  or      $t9, $t8, $s1              ## $t9 = FF100FFF
/* 6DFCC 8007F06C ADD90000 */  sw      $t9, 0x0000($t6)           ## 00000000
/* 6DFD0 8007F070 8FB80090 */  lw      $t8, 0x0090($sp)
/* 6DFD4 8007F074 8C8F02DC */  lw      $t7, 0x02DC($a0)           ## 000002DC
/* 6DFD8 8007F078 AF0F0004 */  sw      $t7, 0x0004($t8)           ## 00001003
/* 6DFDC 8007F07C 8C8202D0 */  lw      $v0, 0x02D0($a0)           ## 000002D0
/* 6DFE0 8007F080 3C0BFE00 */  lui     $t3, 0xFE00                ## $t3 = FE000000
/* 6DFE4 8007F084 AFA2008C */  sw      $v0, 0x008C($sp)
/* 6DFE8 8007F088 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 6DFEC 8007F08C AC9902D0 */  sw      $t9, 0x02D0($a0)           ## 000002D0
/* 6DFF0 8007F090 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 800FE500
/* 6DFF4 8007F094 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 6DFF8 8007F098 8FAE008C */  lw      $t6, 0x008C($sp)
/* 6DFFC 8007F09C 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000FFF
/* 6E000 8007F0A0 0311C825 */  or      $t9, $t8, $s1              ## $t9 = FF100FFF
/* 6E004 8007F0A4 ADD90000 */  sw      $t9, 0x0000($t6)           ## 00000000
/* 6E008 8007F0A8 8FB8008C */  lw      $t8, 0x008C($sp)
/* 6E00C 8007F0AC 8C8F02DC */  lw      $t7, 0x02DC($a0)           ## 000002DC
/* 6E010 8007F0B0 AF0F0004 */  sw      $t7, 0x0004($t8)           ## 00001003
/* 6E014 8007F0B4 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E018 8007F0B8 25190008 */  addiu   $t9, $t0, 0x0008           ## $t9 = 00000008
/* 6E01C 8007F0BC AC9902B0 */  sw      $t9, 0x02B0($a0)           ## 000002B0
/* 6E020 8007F0C0 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 800FE500
/* 6E024 8007F0C4 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 6E028 8007F0C8 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000FFF
/* 6E02C 8007F0CC 0311C825 */  or      $t9, $t8, $s1              ## $t9 = FF100FFF
/* 6E030 8007F0D0 AD190000 */  sw      $t9, 0x0000($t0)           ## 00000000
/* 6E034 8007F0D4 8C8E02DC */  lw      $t6, 0x02DC($a0)           ## 000002DC
/* 6E038 8007F0D8 AD0E0004 */  sw      $t6, 0x0004($t0)           ## 00000004
/* 6E03C 8007F0DC 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E040 8007F0E0 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 6E044 8007F0E4 2529BE40 */  addiu   $t1, $t1, 0xBE40           ## $t1 = 8012BE40
/* 6E048 8007F0E8 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 6E04C 8007F0EC AC8F02C0 */  sw      $t7, 0x02C0($a0)           ## 000002C0
/* 6E050 8007F0F0 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 6E054 8007F0F4 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 6E058 8007F0F8 8C8202D0 */  lw      $v0, 0x02D0($a0)           ## 000002D0
/* 6E05C 8007F0FC 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 6E060 8007F100 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 6E064 8007F104 AC9802D0 */  sw      $t8, 0x02D0($a0)           ## 000002D0
/* 6E068 8007F108 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 6E06C 8007F10C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 6E070 8007F110 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E074 8007F114 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 6E078 8007F118 25190008 */  addiu   $t9, $t0, 0x0008           ## $t9 = 00000008
/* 6E07C 8007F11C AC9902B0 */  sw      $t9, 0x02B0($a0)           ## 000002B0
/* 6E080 8007F120 AD090004 */  sw      $t1, 0x0004($t0)           ## 00000004
/* 6E084 8007F124 AD0B0000 */  sw      $t3, 0x0000($t0)           ## 00000000
/* 6E088 8007F128 8DCEBA00 */  lw      $t6, -0x4600($t6)          ## 8011BA00
/* 6E08C 8007F12C 85CF0190 */  lh      $t7, 0x0190($t6)           ## 80120190
/* 6E090 8007F130 29E10002 */  slti    $at, $t7, 0x0002
/* 6E094 8007F134 502000C4 */  beql    $at, $zero, .L8007F448
/* 6E098 8007F138 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 6E09C 8007F13C 8F18D140 */  lw      $t8, -0x2EC0($t8)          ## 8011D140
/* 6E0A0 8007F140 2B010002 */  slti    $at, $t8, 0x0002
/* 6E0A4 8007F144 502000C0 */  beql    $at, $zero, .L8007F448
/* 6E0A8 8007F148 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 6E0AC 8007F14C AFA400B8 */  sw      $a0, 0x00B8($sp)
/* 6E0B0 8007F150 0C026594 */  jal     func_80099650
/* 6E0B4 8007F154 AFA90028 */  sw      $t1, 0x0028($sp)
/* 6E0B8 8007F158 3C1FE300 */  lui     $ra, 0xE300                ## $ra = E3000000
/* 6E0BC 8007F15C 37FF0A01 */  ori     $ra, $ra, 0x0A01           ## $ra = E3000A01
/* 6E0C0 8007F160 8FA400B8 */  lw      $a0, 0x00B8($sp)
/* 6E0C4 8007F164 8FA90028 */  lw      $t1, 0x0028($sp)
/* 6E0C8 8007F168 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E0CC 8007F16C 3C0CF600 */  lui     $t4, 0xF600                ## $t4 = F6000000
/* 6E0D0 8007F170 3C0DE700 */  lui     $t5, 0xE700                ## $t5 = E7000000
/* 6E0D4 8007F174 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6E0D8 8007F178 AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6E0DC 8007F17C 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 800FE500
/* 6E0E0 8007F180 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 6E0E4 8007F184 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 6E0E8 8007F188 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000FFF
/* 6E0EC 8007F18C 0311C825 */  or      $t9, $t8, $s1              ## $t9 = FF100FFF
/* 6E0F0 8007F190 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 6E0F4 8007F194 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E0F8 8007F198 3C0F0030 */  lui     $t7, 0x0030                ## $t7 = 00300000
/* 6E0FC 8007F19C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6E100 8007F1A0 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6E104 8007F1A4 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6E108 8007F1A8 AC7F0000 */  sw      $ra, 0x0000($v1)           ## 00000000
/* 6E10C 8007F1AC 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E110 8007F1B0 3C19E200 */  lui     $t9, 0xE200                ## $t9 = E2000000
/* 6E114 8007F1B4 3739001C */  ori     $t9, $t9, 0x001C           ## $t9 = E200001C
/* 6E118 8007F1B8 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 6E11C 8007F1BC AC9802C0 */  sw      $t8, 0x02C0($a0)           ## 000002C0
/* 6E120 8007F1C0 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 6E124 8007F1C4 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 6E128 8007F1C8 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E12C 8007F1CC 3C18FFFC */  lui     $t8, 0xFFFC                ## $t8 = FFFC0000
/* 6E130 8007F1D0 3718FFFC */  ori     $t8, $t8, 0xFFFC           ## $t8 = FFFCFFFC
/* 6E134 8007F1D4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6E138 8007F1D8 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6E13C 8007F1DC 3C0FF700 */  lui     $t7, 0xF700                ## $t7 = F7000000
/* 6E140 8007F1E0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6E144 8007F1E4 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6E148 8007F1E8 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E14C 8007F1EC 304B03FF */  andi    $t3, $v0, 0x03FF           ## $t3 = 00000000
/* 6E150 8007F1F0 000B5880 */  sll     $t3, $t3,  2
/* 6E154 8007F1F4 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6E158 8007F1F8 AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6E15C 8007F1FC 8E0E0000 */  lw      $t6, 0x0000($s0)           ## 800FE500
/* 6E160 8007F200 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = 00000007
/* 6E164 8007F204 31F803FF */  andi    $t8, $t7, 0x03FF           ## $t8 = 00000007
/* 6E168 8007F208 8E4F0000 */  lw      $t7, 0x0000($s2)           ## 800FE504
/* 6E16C 8007F20C 0018CB80 */  sll     $t9, $t8, 14
/* 6E170 8007F210 032C7025 */  or      $t6, $t9, $t4              ## $t6 = F6000008
/* 6E174 8007F214 01E2C023 */  subu    $t8, $t7, $v0
/* 6E178 8007F218 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = 00000006
/* 6E17C 8007F21C 332F03FF */  andi    $t7, $t9, 0x03FF           ## $t7 = 00000006
/* 6E180 8007F220 000FC080 */  sll     $t8, $t7,  2
/* 6E184 8007F224 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = F600000F
/* 6E188 8007F228 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 6E18C 8007F22C AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 6E190 8007F230 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E194 8007F234 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 6E198 8007F238 AC8F02C0 */  sw      $t7, 0x02C0($a0)           ## 000002C0
/* 6E19C 8007F23C AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 6E1A0 8007F240 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 6E1A4 8007F244 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E1A8 8007F248 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6E1AC 8007F24C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6E1B0 8007F250 8E180000 */  lw      $t8, 0x0000($s0)           ## 800FE500
/* 6E1B4 8007F254 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = 00000006
/* 6E1B8 8007F258 332F0FFF */  andi    $t7, $t9, 0x0FFF           ## $t7 = 00000006
/* 6E1BC 8007F25C 01F17025 */  or      $t6, $t7, $s1              ## $t6 = FF100006
/* 6E1C0 8007F260 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 6E1C4 8007F264 8C9802DC */  lw      $t8, 0x02DC($a0)           ## 000002DC
/* 6E1C8 8007F268 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6E1CC 8007F26C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E1D0 8007F270 3C0F0030 */  lui     $t7, 0x0030                ## $t7 = 00300000
/* 6E1D4 8007F274 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6E1D8 8007F278 AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6E1DC 8007F27C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 6E1E0 8007F280 AC7F0000 */  sw      $ra, 0x0000($v1)           ## 00000000
/* 6E1E4 8007F284 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E1E8 8007F288 3C18E200 */  lui     $t8, 0xE200                ## $t8 = E2000000
/* 6E1EC 8007F28C 3718001C */  ori     $t8, $t8, 0x001C           ## $t8 = E200001C
/* 6E1F0 8007F290 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6E1F4 8007F294 AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6E1F8 8007F298 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 6E1FC 8007F29C AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 6E200 8007F2A0 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E204 8007F2A4 3C0FF700 */  lui     $t7, 0xF700                ## $t7 = F7000000
/* 6E208 8007F2A8 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6E20C 8007F2AC AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6E210 8007F2B0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6E214 8007F2B4 93AE00BF */  lbu     $t6, 0x00BF($sp)
/* 6E218 8007F2B8 93AF00C3 */  lbu     $t7, 0x00C3($sp)
/* 6E21C 8007F2BC 000EC200 */  sll     $t8, $t6,  8
/* 6E220 8007F2C0 3319F800 */  andi    $t9, $t8, 0xF800           ## $t9 = 00000000
/* 6E224 8007F2C4 000F70C0 */  sll     $t6, $t7,  3
/* 6E228 8007F2C8 31D807C0 */  andi    $t8, $t6, 0x07C0           ## $t8 = 00000000
/* 6E22C 8007F2CC 93AE00C7 */  lbu     $t6, 0x00C7($sp)
/* 6E230 8007F2D0 03387825 */  or      $t7, $t9, $t8              ## $t7 = 00000000
/* 6E234 8007F2D4 000EC883 */  sra     $t9, $t6,  2
/* 6E238 8007F2D8 3338003E */  andi    $t8, $t9, 0x003E           ## $t8 = 00000000
/* 6E23C 8007F2DC 01F83825 */  or      $a3, $t7, $t8              ## $a3 = 00000000
/* 6E240 8007F2E0 34E70001 */  ori     $a3, $a3, 0x0001           ## $a3 = 00000001
/* 6E244 8007F2E4 00077400 */  sll     $t6, $a3, 16
/* 6E248 8007F2E8 01C75025 */  or      $t2, $t6, $a3              ## $t2 = 00000009
/* 6E24C 8007F2EC AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 6E250 8007F2F0 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E254 8007F2F4 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6E258 8007F2F8 AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6E25C 8007F2FC 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 800FE500
/* 6E260 8007F300 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 6E264 8007F304 330E03FF */  andi    $t6, $t8, 0x03FF           ## $t6 = 000003FF
/* 6E268 8007F308 8E580000 */  lw      $t8, 0x0000($s2)           ## 800FE504
/* 6E26C 8007F30C 000ECB80 */  sll     $t9, $t6, 14
/* 6E270 8007F310 032C7825 */  or      $t7, $t9, $t4              ## $t7 = F6000008
/* 6E274 8007F314 03027023 */  subu    $t6, $t8, $v0
/* 6E278 8007F318 25D9FFFF */  addiu   $t9, $t6, 0xFFFF           ## $t9 = 000003FE
/* 6E27C 8007F31C 333803FF */  andi    $t8, $t9, 0x03FF           ## $t8 = 000003FE
/* 6E280 8007F320 00187080 */  sll     $t6, $t8,  2
/* 6E284 8007F324 01EEC825 */  or      $t9, $t7, $t6              ## $t9 = F60003FF
/* 6E288 8007F328 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 6E28C 8007F32C AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 6E290 8007F330 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E294 8007F334 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 6E298 8007F338 AC9802C0 */  sw      $t8, 0x02C0($a0)           ## 000002C0
/* 6E29C 8007F33C AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 6E2A0 8007F340 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 6E2A4 8007F344 58400040 */  blezl   $v0, .L8007F448
/* 6E2A8 8007F348 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 6E2AC 8007F34C 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E2B0 8007F350 250F0008 */  addiu   $t7, $t0, 0x0008           ## $t7 = 00000008
/* 6E2B4 8007F354 AC8F02B0 */  sw      $t7, 0x02B0($a0)           ## 000002B0
/* 6E2B8 8007F358 AD000004 */  sw      $zero, 0x0004($t0)         ## 00000004
/* 6E2BC 8007F35C AD0D0000 */  sw      $t5, 0x0000($t0)           ## 00000000
/* 6E2C0 8007F360 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E2C4 8007F364 3C190030 */  lui     $t9, 0x0030                ## $t9 = 00300000
/* 6E2C8 8007F368 250E0008 */  addiu   $t6, $t0, 0x0008           ## $t6 = 00000008
/* 6E2CC 8007F36C AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 6E2D0 8007F370 AD190004 */  sw      $t9, 0x0004($t0)           ## 00000004
/* 6E2D4 8007F374 AD1F0000 */  sw      $ra, 0x0000($t0)           ## 00000000
/* 6E2D8 8007F378 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E2DC 8007F37C 3C0FE200 */  lui     $t7, 0xE200                ## $t7 = E2000000
/* 6E2E0 8007F380 35EF001C */  ori     $t7, $t7, 0x001C           ## $t7 = E200001C
/* 6E2E4 8007F384 25180008 */  addiu   $t8, $t0, 0x0008           ## $t8 = 00000008
/* 6E2E8 8007F388 AC9802B0 */  sw      $t8, 0x02B0($a0)           ## 000002B0
/* 6E2EC 8007F38C AD000004 */  sw      $zero, 0x0004($t0)         ## 00000004
/* 6E2F0 8007F390 AD0F0000 */  sw      $t7, 0x0000($t0)           ## 00000000
/* 6E2F4 8007F394 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E2F8 8007F398 3C19F700 */  lui     $t9, 0xF700                ## $t9 = F7000000
/* 6E2FC 8007F39C 250E0008 */  addiu   $t6, $t0, 0x0008           ## $t6 = 00000008
/* 6E300 8007F3A0 AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 6E304 8007F3A4 AD0A0004 */  sw      $t2, 0x0004($t0)           ## 00000004
/* 6E308 8007F3A8 AD190000 */  sw      $t9, 0x0000($t0)           ## 00000000
/* 6E30C 8007F3AC 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E310 8007F3B0 25180008 */  addiu   $t8, $t0, 0x0008           ## $t8 = 00000008
/* 6E314 8007F3B4 AC9802B0 */  sw      $t8, 0x02B0($a0)           ## 000002B0
/* 6E318 8007F3B8 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 800FE500
/* 6E31C 8007F3BC AD000004 */  sw      $zero, 0x0004($t0)         ## 00000004
/* 6E320 8007F3C0 25EEFFFF */  addiu   $t6, $t7, 0xFFFF           ## $t6 = E200001B
/* 6E324 8007F3C4 31D903FF */  andi    $t9, $t6, 0x03FF           ## $t9 = 0000001B
/* 6E328 8007F3C8 0019C380 */  sll     $t8, $t9, 14
/* 6E32C 8007F3CC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 6E330 8007F3D0 31D903FF */  andi    $t9, $t6, 0x03FF           ## $t9 = 000003FF
/* 6E334 8007F3D4 030C7825 */  or      $t7, $t8, $t4              ## $t7 = F6000008
/* 6E338 8007F3D8 0019C080 */  sll     $t8, $t9,  2
/* 6E33C 8007F3DC 01F87025 */  or      $t6, $t7, $t8              ## $t6 = F6000008
/* 6E340 8007F3E0 AD0E0000 */  sw      $t6, 0x0000($t0)           ## 00000000
/* 6E344 8007F3E4 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E348 8007F3E8 25190008 */  addiu   $t9, $t0, 0x0008           ## $t9 = 00000008
/* 6E34C 8007F3EC AC9902B0 */  sw      $t9, 0x02B0($a0)           ## 000002B0
/* 6E350 8007F3F0 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 800FE500
/* 6E354 8007F3F4 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = F6000007
/* 6E358 8007F3F8 330E03FF */  andi    $t6, $t8, 0x03FF           ## $t6 = 00000007
/* 6E35C 8007F3FC 8E580000 */  lw      $t8, 0x0000($s2)           ## 800FE504
/* 6E360 8007F400 000ECB80 */  sll     $t9, $t6, 14
/* 6E364 8007F404 032C7825 */  or      $t7, $t9, $t4              ## $t7 = F6000008
/* 6E368 8007F408 270EFFFF */  addiu   $t6, $t8, 0xFFFF           ## $t6 = F6000006
/* 6E36C 8007F40C 31D903FF */  andi    $t9, $t6, 0x03FF           ## $t9 = 00000006
/* 6E370 8007F410 0019C080 */  sll     $t8, $t9,  2
/* 6E374 8007F414 01F87025 */  or      $t6, $t7, $t8              ## $t6 = F600000F
/* 6E378 8007F418 AD0E0000 */  sw      $t6, 0x0000($t0)           ## 00000000
/* 6E37C 8007F41C 8E590000 */  lw      $t9, 0x0000($s2)           ## 800FE504
/* 6E380 8007F420 03227823 */  subu    $t7, $t9, $v0
/* 6E384 8007F424 31F803FF */  andi    $t8, $t7, 0x03FF           ## $t8 = 00000008
/* 6E388 8007F428 00187080 */  sll     $t6, $t8,  2
/* 6E38C 8007F42C AD0E0004 */  sw      $t6, 0x0004($t0)           ## 00000004
/* 6E390 8007F430 8C8802B0 */  lw      $t0, 0x02B0($a0)           ## 000002B0
/* 6E394 8007F434 25190008 */  addiu   $t9, $t0, 0x0008           ## $t9 = 00000008
/* 6E398 8007F438 AC9902B0 */  sw      $t9, 0x02B0($a0)           ## 000002B0
/* 6E39C 8007F43C AD000004 */  sw      $zero, 0x0004($t0)         ## 00000004
/* 6E3A0 8007F440 AD0D0000 */  sw      $t5, 0x0000($t0)           ## 00000000
/* 6E3A4 8007F444 8FBF0024 */  lw      $ra, 0x0024($sp)
.L8007F448:
/* 6E3A8 8007F448 8FB00018 */  lw      $s0, 0x0018($sp)
/* 6E3AC 8007F44C 8FB1001C */  lw      $s1, 0x001C($sp)
/* 6E3B0 8007F450 8FB20020 */  lw      $s2, 0x0020($sp)
/* 6E3B4 8007F454 03E00008 */  jr      $ra
/* 6E3B8 8007F458 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


glabel func_8007F45C
/* 6E3BC 8007F45C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 6E3C0 8007F460 3C088010 */  lui     $t0, 0x8010                ## $t0 = 80100000
/* 6E3C4 8007F464 44810000 */  mtc1    $at, $f0                   ## $f0 = 4.00
/* 6E3C8 8007F468 2508E500 */  addiu   $t0, $t0, 0xE500           ## $t0 = 800FE500
/* 6E3CC 8007F46C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E3D0 8007F470 3C188010 */  lui     $t8, 0x8010                ## $t8 = 80100000
/* 6E3D4 8007F474 27188AA0 */  addiu   $t8, $t8, 0x8AA0           ## $t8 = 800F8AA0
/* 6E3D8 8007F478 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 6E3DC 8007F47C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 6E3E0 8007F480 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 6E3E4 8007F484 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 6E3E8 8007F488 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 6E3EC 8007F48C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E3F0 8007F490 3C09ED00 */  lui     $t1, 0xED00                ## $t1 = ED000000
/* 6E3F4 8007F494 3C0F8010 */  lui     $t7, 0x8010                ## $t7 = 80100000
/* 6E3F8 8007F498 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 6E3FC 8007F49C AC9902C0 */  sw      $t9, 0x02C0($a0)           ## 000002C0
/* 6E400 8007F4A0 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 6E404 8007F4A4 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 800FE500
/* 6E408 8007F4A8 8DEFE504 */  lw      $t7, -0x1AFC($t7)          ## 800FE504
/* 6E40C 8007F4AC 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 6E410 8007F4B0 448F8000 */  mtc1    $t7, $f16                  ## $f16 = -0.00
/* 6E414 8007F4B4 468021A0 */  cvt.s.w $f6, $f4
/* 6E418 8007F4B8 468084A0 */  cvt.s.w $f18, $f16
/* 6E41C 8007F4BC 46003202 */  mul.s   $f8, $f6, $f0
/* 6E420 8007F4C0 00000000 */  nop
/* 6E424 8007F4C4 46009102 */  mul.s   $f4, $f18, $f0
/* 6E428 8007F4C8 4600428D */  trunc.w.s $f10, $f8
/* 6E42C 8007F4CC 4600218D */  trunc.w.s $f6, $f4
/* 6E430 8007F4D0 440C5000 */  mfc1    $t4, $f10
/* 6E434 8007F4D4 44193000 */  mfc1    $t9, $f6
/* 6E438 8007F4D8 318D0FFF */  andi    $t5, $t4, 0x0FFF           ## $t5 = 00000000
/* 6E43C 8007F4DC 000D7300 */  sll     $t6, $t5, 12
/* 6E440 8007F4E0 33290FFF */  andi    $t1, $t9, 0x0FFF           ## $t1 = 00000008
/* 6E444 8007F4E4 01C95025 */  or      $t2, $t6, $t1              ## $t2 = 00000008
/* 6E448 8007F4E8 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 6E44C 8007F4EC 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E450 8007F4F0 3C0D8013 */  lui     $t5, 0x8013                ## $t5 = 80130000
/* 6E454 8007F4F4 25ADBE40 */  addiu   $t5, $t5, 0xBE40           ## $t5 = 8012BE40
/* 6E458 8007F4F8 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 6E45C 8007F4FC AC8B02C0 */  sw      $t3, 0x02C0($a0)           ## 000002C0
/* 6E460 8007F500 3C0CFE00 */  lui     $t4, 0xFE00                ## $t4 = FE000000
/* 6E464 8007F504 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 6E468 8007F508 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 6E46C 8007F50C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 6E470 8007F510 3C01FF10 */  lui     $at, 0xFF10                ## $at = FF100000
/* 6E474 8007F514 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 6E478 8007F518 AC8F02C0 */  sw      $t7, 0x02C0($a0)           ## 000002C0
/* 6E47C 8007F51C 8D180000 */  lw      $t8, 0x0000($t0)           ## 800FE500
/* 6E480 8007F520 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = 800F8A9F
/* 6E484 8007F524 332E0FFF */  andi    $t6, $t9, 0x0FFF           ## $t6 = 00000A9F
/* 6E488 8007F528 01C14825 */  or      $t1, $t6, $at              ## $t1 = FF100A9F
/* 6E48C 8007F52C AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 6E490 8007F530 8C8A02DC */  lw      $t2, 0x02DC($a0)           ## 000002DC
/* 6E494 8007F534 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 6E498 8007F538 03E00008 */  jr      $ra
/* 6E49C 8007F53C 00000000 */  nop
