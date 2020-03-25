.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel func_8005BC90
/* 4ABF0 8005BC90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 4ABF4 8005BC94 AFA5001C */  sw      $a1, 0x001C($sp)
/* 4ABF8 8005BC98 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 4ABFC 8005BC9C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 4AC00 8005BCA0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 4AC04 8005BCA4 AFA60020 */  sw      $a2, 0x0020($sp)
/* 4AC08 8005BCA8 0C02BDE4 */  jal     func_800AF790
/* 4AC0C 8005BCAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 4AC10 8005BCB0 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 4AC14 8005BCB4 97AF0022 */  lhu     $t7, 0x0022($sp)
/* 4AC18 8005BCB8 3C18004E */  lui     $t8, 0x004E                ## $t8 = 004E0000
/* 4AC1C 8005BCBC 27189F40 */  addiu   $t8, $t8, 0x9F40           ## $t8 = 004D9F40
/* 4AC20 8005BCC0 01CF2021 */  addu    $a0, $t6, $t7
/* 4AC24 8005BCC4 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 4AC28 8005BCC8 00582821 */  addu    $a1, $v0, $t8
/* 4AC2C 8005BCCC 0C00037C */  jal     DmaMgr_SendRequest0
/* 4AC30 8005BCD0 24060080 */  addiu   $a2, $zero, 0x0080         ## $a2 = 00000080
/* 4AC34 8005BCD4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4AC38 8005BCD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 4AC3C 8005BCDC 03E00008 */  jr      $ra
/* 4AC40 8005BCE0 00000000 */  nop


glabel func_8005BCE4
/* 4AC44 8005BCE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 4AC48 8005BCE8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 4AC4C 8005BCEC AFA40018 */  sw      $a0, 0x0018($sp)
/* 4AC50 8005BCF0 AFA5001C */  sw      $a1, 0x001C($sp)
/* 4AC54 8005BCF4 AFA60020 */  sw      $a2, 0x0020($sp)
/* 4AC58 8005BCF8 30A700FF */  andi    $a3, $a1, 0x00FF           ## $a3 = 00000000
/* 4AC5C 8005BCFC 8FAE0018 */  lw      $t6, 0x0018($sp)
/* 4AC60 8005BD00 97AF0022 */  lhu     $t7, 0x0022($sp)
/* 4AC64 8005BD04 3C190093 */  lui     $t9, 0x0093                ## $t9 = 00930000
/* 4AC68 8005BD08 27398000 */  addiu   $t9, $t9, 0x8000           ## $t9 = 00928000
/* 4AC6C 8005BD0C 0007C1C0 */  sll     $t8, $a3,  7
/* 4AC70 8005BD10 01CF2021 */  addu    $a0, $t6, $t7
/* 4AC74 8005BD14 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 4AC78 8005BD18 03192821 */  addu    $a1, $t8, $t9
/* 4AC7C 8005BD1C 0C00037C */  jal     DmaMgr_SendRequest0
/* 4AC80 8005BD20 24060080 */  addiu   $a2, $zero, 0x0080         ## $a2 = 00000080
/* 4AC84 8005BD24 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4AC88 8005BD28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 4AC8C 8005BD2C 03E00008 */  jr      $ra
/* 4AC90 8005BD30 00000000 */  nop


glabel func_8005BD34
/* 4AC94 8005BD34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 4AC98 8005BD38 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 4AC9C 8005BD3C AFA5001C */  sw      $a1, 0x001C($sp)
/* 4ACA0 8005BD40 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 4ACA4 8005BD44 97AE001E */  lhu     $t6, 0x001E($sp)
/* 4ACA8 8005BD48 3C19008E */  lui     $t9, 0x008E                ## $t9 = 008E0000
/* 4ACAC 8005BD4C 27396000 */  addiu   $t9, $t9, 0x6000           ## $t9 = 008E6000
/* 4ACB0 8005BD50 000E79C0 */  sll     $t7, $t6,  7
/* 4ACB4 8005BD54 25F84000 */  addiu   $t8, $t7, 0x4000           ## $t8 = 00004000
/* 4ACB8 8005BD58 03192821 */  addu    $a1, $t8, $t9
/* 4ACBC 8005BD5C 24E43C08 */  addiu   $a0, $a3, 0x3C08           ## $a0 = 00003C08
/* 4ACC0 8005BD60 0C00037C */  jal     DmaMgr_SendRequest0
/* 4ACC4 8005BD64 24060080 */  addiu   $a2, $zero, 0x0080         ## $a2 = 00000080
/* 4ACC8 8005BD68 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4ACCC 8005BD6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 4ACD0 8005BD70 03E00008 */  jr      $ra
/* 4ACD4 8005BD74 00000000 */  nop


glabel func_8005BD78
/* 4ACD8 8005BD78 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 4ACDC 8005BD7C AFB5002C */  sw      $s5, 0x002C($sp)
/* 4ACE0 8005BD80 3C070804 */  lui     $a3, 0x0804                ## $a3 = 08040000
/* 4ACE4 8005BD84 24E7A150 */  addiu   $a3, $a3, 0xA150           ## $a3 = 0803A150
/* 4ACE8 8005BD88 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 4ACEC 8005BD8C AFBF003C */  sw      $ra, 0x003C($sp)
/* 4ACF0 8005BD90 AFBE0038 */  sw      $s8, 0x0038($sp)
/* 4ACF4 8005BD94 AFB70034 */  sw      $s7, 0x0034($sp)
/* 4ACF8 8005BD98 AFB60030 */  sw      $s6, 0x0030($sp)
/* 4ACFC 8005BD9C AFB40028 */  sw      $s4, 0x0028($sp)
/* 4AD00 8005BDA0 AFB30024 */  sw      $s3, 0x0024($sp)
/* 4AD04 8005BDA4 AFB20020 */  sw      $s2, 0x0020($sp)
/* 4AD08 8005BDA8 AFB1001C */  sw      $s1, 0x001C($sp)
/* 4AD0C 8005BDAC AFB00018 */  sw      $s0, 0x0018($sp)
/* 4AD10 8005BDB0 3C0E0800 */  lui     $t6, 0x0800                ## $t6 = 08000000
/* 4AD14 8005BDB4 3C0F0804 */  lui     $t7, 0x0804                ## $t7 = 08040000
/* 4AD18 8005BDB8 25CE0000 */  addiu   $t6, $t6, 0x0000           ## $t6 = 08000000
/* 4AD1C 8005BDBC 25EFA340 */  addiu   $t7, $t7, 0xA340           ## $t7 = 0803A340
/* 4AD20 8005BDC0 3C18008F */  lui     $t8, 0x008F                ## $t8 = 008F0000
/* 4AD24 8005BDC4 00EE1023 */  subu    $v0, $a3, $t6
/* 4AD28 8005BDC8 01E73023 */  subu    $a2, $t7, $a3
/* 4AD2C 8005BDCC 2718B000 */  addiu   $t8, $t8, 0xB000           ## $t8 = 008EB000
/* 4AD30 8005BDD0 3401DC88 */  ori     $at, $zero, 0xDC88         ## $at = 0000DC88
/* 4AD34 8005BDD4 AEA20000 */  sw      $v0, 0x0000($s5)           ## 00000000
/* 4AD38 8005BDD8 AEA60004 */  sw      $a2, 0x0004($s5)           ## 00000004
/* 4AD3C 8005BDDC 02A12021 */  addu    $a0, $s5, $at
/* 4AD40 8005BDE0 00582821 */  addu    $a1, $v0, $t8
/* 4AD44 8005BDE4 0C00037C */  jal     DmaMgr_SendRequest0
/* 4AD48 8005BDE8 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 4AD4C 8005BDEC 341E8000 */  ori     $s8, $zero, 0x8000         ## $s8 = 00008000
/* 4AD50 8005BDF0 02BEC821 */  addu    $t9, $s5, $s8
/* 4AD54 8005BDF4 97285C88 */  lhu     $t0, 0x5C88($t9)           ## 00005C88
/* 4AD58 8005BDF8 34178170 */  ori     $s7, $zero, 0x8170         ## $s7 = 00008170
/* 4AD5C 8005BDFC 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 4AD60 8005BE00 12E8001A */  beq     $s7, $t0, .L8005BE6C
/* 4AD64 8005BE04 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 4AD68 8005BE08 0010B042 */  srl     $s6, $s0,  1
/* 4AD6C 8005BE0C 02D1082A */  slt     $at, $s6, $s1
.L8005BE10:
/* 4AD70 8005BE10 14200016 */  bne     $at, $zero, .L8005BE6C
/* 4AD74 8005BE14 00114840 */  sll     $t1, $s1,  1
/* 4AD78 8005BE18 02A95021 */  addu    $t2, $s5, $t1
/* 4AD7C 8005BE1C 015E8021 */  addu    $s0, $t2, $s8
/* 4AD80 8005BE20 96045C88 */  lhu     $a0, 0x5C88($s0)           ## 00005C88
/* 4AD84 8005BE24 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 4AD88 8005BE28 001258C0 */  sll     $t3, $s2,  3
/* 4AD8C 8005BE2C 1081000A */  beq     $a0, $at, .L8005BE58
/* 4AD90 8005BE30 02AB9821 */  addu    $s3, $s5, $t3
/* 4AD94 8005BE34 3C14004E */  lui     $s4, 0x004E                ## $s4 = 004E0000
/* 4AD98 8005BE38 26949F40 */  addiu   $s4, $s4, 0x9F40           ## $s4 = 004D9F40
/* 4AD9C 8005BE3C 0C02BDE4 */  jal     func_800AF790
/* 4ADA0 8005BE40 26733C88 */  addiu   $s3, $s3, 0x3C88           ## $s3 = 00003C88
/* 4ADA4 8005BE44 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00003C88
/* 4ADA8 8005BE48 02822821 */  addu    $a1, $s4, $v0
/* 4ADAC 8005BE4C 0C00037C */  jal     DmaMgr_SendRequest0
/* 4ADB0 8005BE50 24060080 */  addiu   $a2, $zero, 0x0080         ## $a2 = 00000080
/* 4ADB4 8005BE54 26520010 */  addiu   $s2, $s2, 0x0010           ## $s2 = 00000010
.L8005BE58:
/* 4ADB8 8005BE58 960C5C8A */  lhu     $t4, 0x5C8A($s0)           ## 00005C8A
/* 4ADBC 8005BE5C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 4ADC0 8005BE60 26100002 */  addiu   $s0, $s0, 0x0002           ## $s0 = 00000002
/* 4ADC4 8005BE64 56ECFFEA */  bnel    $s7, $t4, .L8005BE10
/* 4ADC8 8005BE68 02D1082A */  slt     $at, $s6, $s1
.L8005BE6C:
/* 4ADCC 8005BE6C 8FBF003C */  lw      $ra, 0x003C($sp)
/* 4ADD0 8005BE70 8FB00018 */  lw      $s0, 0x0018($sp)
/* 4ADD4 8005BE74 8FB1001C */  lw      $s1, 0x001C($sp)
/* 4ADD8 8005BE78 8FB20020 */  lw      $s2, 0x0020($sp)
/* 4ADDC 8005BE7C 8FB30024 */  lw      $s3, 0x0024($sp)
/* 4ADE0 8005BE80 8FB40028 */  lw      $s4, 0x0028($sp)
/* 4ADE4 8005BE84 8FB5002C */  lw      $s5, 0x002C($sp)
/* 4ADE8 8005BE88 8FB60030 */  lw      $s6, 0x0030($sp)
/* 4ADEC 8005BE8C 8FB70034 */  lw      $s7, 0x0034($sp)
/* 4ADF0 8005BE90 8FBE0038 */  lw      $s8, 0x0038($sp)
/* 4ADF4 8005BE94 03E00008 */  jr      $ra
/* 4ADF8 8005BE98 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 4ADFC 8005BE9C 00000000 */  nop
