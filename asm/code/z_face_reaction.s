# "Mask Reaction" part of the code file
#
# Handles NPCs' reaction dialog to the different masks.
#
# List of mask reaction text ids and their content:
# - https://wiki.cloudmodding.com/oot/Text_Ids_(7000)#71xx_Mask_dialogs
#
# Starts at VRAM: 800597C0 / VROM: ACF720
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel Text_GetFaceReaction
/* 48720 800597C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 48724 800597C4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 48728 800597C8 AFA5001C */  sw      $a1, 0x001C($sp)
/* 4872C 800597CC 0C01E6D1 */  jal     func_80079B44
/* 48730 800597D0 00000000 */  nop
/* 48734 800597D4 8FAE001C */  lw      $t6, 0x001C($sp)
/* 48738 800597D8 0002C040 */  sll     $t8, $v0,  1
/* 4873C 800597DC 3C02800F */  lui     $v0, 0x800F                ## $v0 = 800F0000
/* 48740 800597E0 000E78C0 */  sll     $t7, $t6,  3
/* 48744 800597E4 01EE7821 */  addu    $t7, $t7, $t6
/* 48748 800597E8 000F7840 */  sll     $t7, $t7,  1
/* 4874C 800597EC 01F8C821 */  addu    $t9, $t7, $t8
/* 48750 800597F0 00591021 */  addu    $v0, $v0, $t9
/* 48754 800597F4 94420F00 */  lhu     $v0, 0x0F00($v0)           ## 800F0F00
/* 48758 800597F8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 4875C 800597FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 48760 80059800 03E00008 */  jr      $ra
/* 48764 80059804 00000000 */  nop
/* 48768 80059808 00000000 */  nop
/* 4876C 8005980C 00000000 */  nop
