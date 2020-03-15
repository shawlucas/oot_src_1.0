.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel func_800015A0
/* 01140 800015A0 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 01144 800015A4 AFA40008 */  sw      $a0, 0x0008($sp)
/* 01148 800015A8 AFA5000C */  sw      $a1, 0x000C($sp)
/* 0114C 800015AC AFA60010 */  sw      $a2, 0x0010($sp)
/* 01150 800015B0 AFA70014 */  sw      $a3, 0x0014($sp)
/* 01154 800015B4 03E00008 */  jr      $ra
/* 01158 800015B8 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000


glabel func_800015BC
/* 0115C 800015BC 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 01160 800015C0 AFA40008 */  sw      $a0, 0x0008($sp)
/* 01164 800015C4 AFA5000C */  sw      $a1, 0x000C($sp)
/* 01168 800015C8 AFA60010 */  sw      $a2, 0x0010($sp)
/* 0116C 800015CC AFA70014 */  sw      $a3, 0x0014($sp)
/* 01170 800015D0 03E00008 */  jr      $ra
/* 01174 800015D4 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000


glabel func_800015D8
/* 01178 800015D8 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 0117C 800015DC AFA40008 */  sw      $a0, 0x0008($sp)
/* 01180 800015E0 AFA5000C */  sw      $a1, 0x000C($sp)
/* 01184 800015E4 AFA60010 */  sw      $a2, 0x0010($sp)
/* 01188 800015E8 AFA70014 */  sw      $a3, 0x0014($sp)
/* 0118C 800015EC 03E00008 */  jr      $ra
/* 01190 800015F0 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000
/* 01194 800015F4 03E00008 */  jr      $ra
/* 01198 800015F8 00000000 */  nop
/* 0119C 800015FC 00000000 */  nop
