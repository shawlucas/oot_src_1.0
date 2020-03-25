.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel KaleidoManager_LoadOvl
/* 88BC0 80099C60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 88BC4 80099C64 AFB00020 */  sw      $s0, 0x0020($sp)
/* 88BC8 80099C68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 88BCC 80099C6C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 88BD0 80099C70 3C0E8010 */  lui     $t6, 0x8010                ## $t6 = 80100000
/* 88BD4 80099C74 8DCEE4B8 */  lw      $t6, -0x1B48($t6)          ## 800FE4B8
/* 88BD8 80099C78 8E040004 */  lw      $a0, 0x0004($s0)           ## 00000004
/* 88BDC 80099C7C 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 88BE0 80099C80 8E06000C */  lw      $a2, 0x000C($s0)           ## 0000000C
/* 88BE4 80099C84 8E070010 */  lw      $a3, 0x0010($s0)           ## 00000010
/* 88BE8 80099C88 AE0E0000 */  sw      $t6, 0x0000($s0)           ## 00000000
/* 88BEC 80099C8C 0C0332EE */  jal     Overlay_Load
/* 88BF0 80099C90 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 88BF4 80099C94 8E180000 */  lw      $t8, 0x0000($s0)           ## 00000000
/* 88BF8 80099C98 8E19000C */  lw      $t9, 0x000C($s0)           ## 0000000C
/* 88BFC 80099C9C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88C00 80099CA0 03194023 */  subu    $t0, $t8, $t9
/* 88C04 80099CA4 AE080014 */  sw      $t0, 0x0014($s0)           ## 00000014
/* 88C08 80099CA8 AC30E4BC */  sw      $s0, -0x1B44($at)          ## 800FE4BC
/* 88C0C 80099CAC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 88C10 80099CB0 8FB00020 */  lw      $s0, 0x0020($sp)
/* 88C14 80099CB4 03E00008 */  jr      $ra
/* 88C18 80099CB8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


glabel KaleidoManager_ClearOvl
/* 88C1C 80099CBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88C20 80099CC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88C24 80099CC4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 88C28 80099CC8 8CC70000 */  lw      $a3, 0x0000($a2)           ## 00000000
/* 88C2C 80099CCC 10E0000B */  beq     $a3, $zero, .L80099CFC
/* 88C30 80099CD0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 88C34 80099CD4 8CCE0010 */  lw      $t6, 0x0010($a2)           ## 00000010
/* 88C38 80099CD8 8CCF000C */  lw      $t7, 0x000C($a2)           ## 0000000C
/* 88C3C 80099CDC ACC00014 */  sw      $zero, 0x0014($a2)         ## 00000014
/* 88C40 80099CE0 AFA60018 */  sw      $a2, 0x0018($sp)
/* 88C44 80099CE4 0C000BA0 */  jal     bzero              ## bzero
/* 88C48 80099CE8 01CF2823 */  subu    $a1, $t6, $t7
/* 88C4C 80099CEC 8FA60018 */  lw      $a2, 0x0018($sp)
/* 88C50 80099CF0 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88C54 80099CF4 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 88C58 80099CF8 AC20E4BC */  sw      $zero, -0x1B44($at)        ## 800FE4BC
.L80099CFC:
/* 88C5C 80099CFC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88C60 80099D00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88C64 80099D04 03E00008 */  jr      $ra
/* 88C68 80099D08 00000000 */  nop


glabel KaleidoManager_Init
/* 88C6C 80099D0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88C70 80099D10 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88C74 80099D14 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 88C78 80099D18 3C028010 */  lui     $v0, 0x8010                ## $v0 = 80100000
/* 88C7C 80099D1C 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88C80 80099D20 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 88C84 80099D24 2484E4B8 */  addiu   $a0, $a0, 0xE4B8           ## $a0 = 800FE4B8
/* 88C88 80099D28 2442E480 */  addiu   $v0, $v0, 0xE480           ## $v0 = 800FE480
/* 88C8C 80099D2C 8C4E0010 */  lw      $t6, 0x0010($v0)           ## 800FE490
.L80099D30:
/* 88C90 80099D30 8C4F000C */  lw      $t7, 0x000C($v0)           ## 800FE48C
/* 88C94 80099D34 2442001C */  addiu   $v0, $v0, 0x001C           ## $v0 = 800FE49C
/* 88C98 80099D38 01CF1823 */  subu    $v1, $t6, $t7
/* 88C9C 80099D3C 00A3082A */  slt     $at, $a1, $v1
/* 88CA0 80099D40 10200002 */  beq     $at, $zero, .L80099D4C
/* 88CA4 80099D44 00000000 */  nop
/* 88CA8 80099D48 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
.L80099D4C:
/* 88CAC 80099D4C 5444FFF8 */  bnel    $v0, $a0, .L80099D30
/* 88CB0 80099D50 8C4E0010 */  lw      $t6, 0x0010($v0)           ## 800FE4AC
/* 88CB4 80099D54 0C02806E */  jal     func_800A01B8
/* 88CB8 80099D58 24C40074 */  addiu   $a0, $a2, 0x0074           ## $a0 = 00000074
/* 88CBC 80099D5C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88CC0 80099D60 AC22E4B8 */  sw      $v0, -0x1B48($at)          ## 800FE4B8
/* 88CC4 80099D64 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88CC8 80099D68 AC20E4BC */  sw      $zero, -0x1B44($at)        ## 800FE4BC
/* 88CCC 80099D6C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88CD0 80099D70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88CD4 80099D74 03E00008 */  jr      $ra
/* 88CD8 80099D78 00000000 */  nop


glabel KaleidoManager_Destroy
/* 88CDC 80099D7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 88CE0 80099D80 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88CE4 80099D84 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88CE8 80099D88 8C84E4BC */  lw      $a0, -0x1B44($a0)          ## 800FE4BC
/* 88CEC 80099D8C 10800005 */  beq     $a0, $zero, .L80099DA4
/* 88CF0 80099D90 00000000 */  nop
/* 88CF4 80099D94 0C02672F */  jal     KaleidoManager_ClearOvl
/* 88CF8 80099D98 00000000 */  nop
/* 88CFC 80099D9C 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88D00 80099DA0 AC20E4BC */  sw      $zero, -0x1B44($at)        ## 800FE4BC
.L80099DA4:
/* 88D04 80099DA4 3C018010 */  lui     $at, 0x8010                ## $at = 80100000
/* 88D08 80099DA8 AC20E4B8 */  sw      $zero, -0x1B48($at)        ## 800FE4B8
/* 88D0C 80099DAC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88D10 80099DB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 88D14 80099DB4 03E00008 */  jr      $ra
/* 88D18 80099DB8 00000000 */  nop


glabel KaleidoManager_GetRamAddr
/* 88D1C 80099DBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 88D20 80099DC0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 88D24 80099DC4 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 88D28 80099DC8 3C088010 */  lui     $t0, 0x8010                ## $t0 = 80100000
/* 88D2C 80099DCC 8D08E4BC */  lw      $t0, -0x1B44($t0)          ## 800FE4BC
/* 88D30 80099DD0 3C068010 */  lui     $a2, 0x8010                ## $a2 = 80100000
/* 88D34 80099DD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 88D38 80099DD8 15000019 */  bne     $t0, $zero, .L80099E40
/* 88D3C 80099DDC 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 88D40 80099DE0 8CC6E48C */  lw      $a2, -0x1B74($a2)          ## 800FE48C
/* 88D44 80099DE4 3C088010 */  lui     $t0, 0x8010                ## $t0 = 80100000
/* 88D48 80099DE8 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88D4C 80099DEC 2508E480 */  addiu   $t0, $t0, 0xE480           ## $t0 = 800FE480
/* 88D50 80099DF0 8C84E490 */  lw      $a0, -0x1B70($a0)          ## 800FE490
/* 88D54 80099DF4 00C01825 */  or      $v1, $a2, $zero            ## $v1 = 80100000
/* 88D58 80099DF8 00A3082B */  sltu    $at, $a1, $v1
.L80099DFC:
/* 88D5C 80099DFC 1420000C */  bne     $at, $zero, .L80099E30
/* 88D60 80099E00 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 88D64 80099E04 0085082B */  sltu    $at, $a0, $a1
/* 88D68 80099E08 14200009 */  bne     $at, $zero, .L80099E30
/* 88D6C 80099E0C 00000000 */  nop
/* 88D70 80099E10 3C048010 */  lui     $a0, 0x8010                ## $a0 = 80100000
/* 88D74 80099E14 2484E480 */  addiu   $a0, $a0, 0xE480           ## $a0 = 800FE480
/* 88D78 80099E18 AFA50020 */  sw      $a1, 0x0020($sp)
/* 88D7C 80099E1C 0C026718 */  jal     KaleidoManager_LoadOvl
/* 88D80 80099E20 AFA8001C */  sw      $t0, 0x001C($sp)
/* 88D84 80099E24 8FA50020 */  lw      $a1, 0x0020($sp)
/* 88D88 80099E28 10000005 */  beq     $zero, $zero, .L80099E40
/* 88D8C 80099E2C 8FA8001C */  lw      $t0, 0x001C($sp)
.L80099E30:
/* 88D90 80099E30 5447FFF2 */  bnel    $v0, $a3, .L80099DFC
/* 88D94 80099E34 00A3082B */  sltu    $at, $a1, $v1
/* 88D98 80099E38 1000000F */  beq     $zero, $zero, .L80099E78
/* 88D9C 80099E3C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80099E40:
/* 88DA0 80099E40 11000009 */  beq     $t0, $zero, .L80099E68
/* 88DA4 80099E44 00000000 */  nop
/* 88DA8 80099E48 8D0E000C */  lw      $t6, 0x000C($t0)           ## 0000000C
/* 88DAC 80099E4C 00AE082B */  sltu    $at, $a1, $t6
/* 88DB0 80099E50 14200005 */  bne     $at, $zero, .L80099E68
/* 88DB4 80099E54 00000000 */  nop
/* 88DB8 80099E58 8D0F0010 */  lw      $t7, 0x0010($t0)           ## 00000010
/* 88DBC 80099E5C 00AF082B */  sltu    $at, $a1, $t7
/* 88DC0 80099E60 54200004 */  bnel    $at, $zero, .L80099E74
/* 88DC4 80099E64 8D180014 */  lw      $t8, 0x0014($t0)           ## 00000014
.L80099E68:
/* 88DC8 80099E68 10000003 */  beq     $zero, $zero, .L80099E78
/* 88DCC 80099E6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 88DD0 80099E70 8D180014 */  lw      $t8, 0x0014($t0)           ## 00000014
.L80099E74:
/* 88DD4 80099E74 00B81021 */  addu    $v0, $a1, $t8
.L80099E78:
/* 88DD8 80099E78 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 88DDC 80099E7C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 88DE0 80099E80 03E00008 */  jr      $ra
/* 88DE4 80099E84 00000000 */  nop
/* 88DE8 80099E88 00000000 */  nop
/* 88DEC 80099E8C 00000000 */  nop
