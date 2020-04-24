glabel DmaMgr_Start
/* 00A0C 80000E6C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A10 80000E70 3C020000 */  lui     $v0, %hi(_dmadataSegmentRomStart)                ## $v0 = 00000000
/* 00A14 80000E74 24427430 */  addiu   $v0, $v0, %lo(_dmadataSegmentRomStart)           ## $v0 = 00007430
/* 00A18 80000E78 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00A1C 80000E7C 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00A20 80000E80 25CED390 */  addiu   $t6, $t6, 0xD390          ## $t6 = 0000D390
/* 00A24 80000E84 3C058001 */  lui     $a1, %hi(_dmadataSegmentStart)                ## $a1 = 80010000
/* 00A28 80000E88 24A5B140 */  addiu   $a1, $a1, %lo(_dmadataSegmentStart)           ## $a1 = 8000B140
/* 00A2C 80000E8C 01C23023 */  subu    $a2, $t6, $v0
/* 00A30 80000E90 0C000217 */  jal     DmaMgr_DMARomToRam
/* 00A34 80000E94 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00007430
/* 00A38 80000E98 3C188001 */  lui     $t8, 0x8001                ## $t8 = 80010000
/* 00A3C 80000E9C 8F18B144 */  lw      $t8, -0x4EBC($t8)          ## 8000B144
/* 00A40 80000EA0 3C0F0000 */  lui     $t7, 0x0000                ## $t7 = 00000000
/* 00A44 80000EA4 25EF1060 */  addiu   $t7, $t7, 0x1060           ## $t7 = 00001060
/* 00A48 80000EA8 11F80004 */  beq     $t7, $t8, .L80000EBC
/* 00A4C 80000EAC 3C048000 */  lui     $a0, %hi(D_800065D4)                ## $a0 = 80000000
/* 00A50 80000EB0 248465D4 */  addiu   $a0, $a0, %lo(D_800065D4)          ## $a0 = 800065D4
/* 00A54 80000EB4 0C02BDCD */  jal     Fault_AddHungupAndCrash
/* 00A58 80000EB8 24050345 */  addiu   $a1, $zero, 0x0345         ## $a1 = 00000345
.L80000EBC:
/* 00A5C 80000EBC 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00A60 80000EC0 3C058000 */  lui     $a1, 0x8000                ## $a1 = 80000000
/* 00A64 80000EC4 24A57D58 */  addiu   $a1, $a1, 0x7D58           ## $a1 = 80007D58
/* 00A68 80000EC8 24847D40 */  addiu   $a0, $a0, 0x7D40           ## $a0 = 80007D40
/* 00A6C 80000ECC 0C001088 */  jal     osCreateMesgQueue              ## osCreateMesgQueue
/* 00A70 80000ED0 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 00A74 80000ED4 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 00A78 80000ED8 250865E4 */  addiu   $t0, $t0, 0x65E4           ## $t0 = 800065E4
/* 00A7C 80000EDC 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00A80 80000EE0 3C058000 */  lui     $a1, 0x8000                ## $a1 = 80000000
/* 00A84 80000EE4 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 00A88 80000EE8 24190100 */  addiu   $t9, $zero, 0x0100         ## $t9 = 00000100
/* 00A8C 80000EEC AFB90010 */  sw      $t9, 0x0010($sp)
/* 00A90 80000EF0 24C68488 */  addiu   $a2, $a2, 0x8488           ## $a2 = 80008488
/* 00A94 80000EF4 24A57F88 */  addiu   $a1, $a1, 0x7F88           ## $a1 = 80007F88
/* 00A98 80000EF8 24847D20 */  addiu   $a0, $a0, 0x7D20           ## $a0 = 80007D20
/* 00A9C 80000EFC AFA80014 */  sw      $t0, 0x0014($sp)
/* 00AA0 80000F00 0C000624 */  jal     StackCheck_Init
/* 00AA4 80000F04 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00AA8 80000F08 3C098001 */  lui     $t1, 0x8001                ## $t1 = 80010000
/* 00AAC 80000F0C 25298488 */  addiu   $t1, $t1, 0x8488           ## $t1 = 80008488
/* 00AB0 80000F10 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00AB4 80000F14 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 00AB8 80000F18 240A0010 */  addiu   $t2, $zero, 0x0010         ## $t2 = 00000010
/* 00ABC 80000F1C AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00AC0 80000F20 24C60CA8 */  addiu   $a2, $a2, 0x0CA8           ## $a2 = 80000CA8
/* 00AC4 80000F24 24847DD8 */  addiu   $a0, $a0, 0x7DD8           ## $a0 = 80007DD8
/* 00AC8 80000F28 AFA90010 */  sw      $t1, 0x0010($sp)
/* 00ACC 80000F2C 24050012 */  addiu   $a1, $zero, 0x0012         ## $a1 = 00000012
/* 00AD0 80000F30 0C000BC8 */  jal     osCreateThread              ## osCreateThread
/* 00AD4 80000F34 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00AD8 80000F38 3C048000 */  lui     $a0, 0x8000                ## $a0 = 80000000
/* 00ADC 80000F3C 0C0017B0 */  jal     osStartThread              ## osStartThread
/* 00AE0 80000F40 24847DD8 */  addiu   $a0, $a0, 0x7DD8           ## $a0 = 80007DD8
/* 00AE4 80000F44 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00AE8 80000F48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AEC 80000F4C 03E00008 */  jr      $ra
/* 00AF0 80000F50 00000000 */  nop
/* 00AF4 80000F54 00000000 */  nop
/* 00AF8 80000F58 00000000 */  nop
/* 00AFC 80000F5C 00000000 */  nop
