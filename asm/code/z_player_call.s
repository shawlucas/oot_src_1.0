.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel PlayerCall_InitFuncPtrs
/* 865B0 80097650 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 865B4 80097654 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 865B8 80097658 3C048084 */  lui     $a0, 0x8084                ## $a0 = 80840000
/* 865BC 8009765C 0C02676F */  jal     KaleidoManager_GetRamAddr
/* 865C0 80097660 24844DE8 */  addiu   $a0, $a0, 0x4DE8           ## $a0 = 80844DE8
/* 865C4 80097664 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 865C8 80097668 3C048085 */  lui     $a0, 0x8085                ## $a0 = 80850000
/* 865CC 8009766C AC22D030 */  sw      $v0, -0x2FD0($at)          ## 8011D030
/* 865D0 80097670 0C02676F */  jal     KaleidoManager_GetRamAddr
/* 865D4 80097674 24848BB4 */  addiu   $a0, $a0, 0x8BB4           ## $a0 = 80848BB4
/* 865D8 80097678 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 865DC 8009767C 3C048084 */  lui     $a0, 0x8084                ## $a0 = 80840000
/* 865E0 80097680 AC22D034 */  sw      $v0, -0x2FCC($at)          ## 8011D034
/* 865E4 80097684 0C02676F */  jal     KaleidoManager_GetRamAddr
/* 865E8 80097688 24847FC8 */  addiu   $a0, $a0, 0x7FC8           ## $a0 = 80847FC8
/* 865EC 8009768C 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 865F0 80097690 3C048085 */  lui     $a0, 0x8085                ## $a0 = 80850000
/* 865F4 80097694 AC22D038 */  sw      $v0, -0x2FC8($at)          ## 8011D038
/* 865F8 80097698 0C02676F */  jal     KaleidoManager_GetRamAddr
/* 865FC 8009769C 24848680 */  addiu   $a0, $a0, 0x8680           ## $a0 = 80848680
/* 86600 800976A0 3C018012 */  lui     $at, 0x8012                ## $at = 80120000
/* 86604 800976A4 AC22D03C */  sw      $v0, -0x2FC4($at)          ## 8011D03C
/* 86608 800976A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 8660C 800976AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 86610 800976B0 03E00008 */  jr      $ra
/* 86614 800976B4 00000000 */  nop

glabel PlayerCall_Init
/* 86618 800976B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 8661C 800976BC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 86620 800976C0 AFA40018 */  sw      $a0, 0x0018($sp)
/* 86624 800976C4 AFA5001C */  sw      $a1, 0x001C($sp)
/* 86628 800976C8 0C0267A4 */  jal     KaleidoScopeCall_LoadPlayer
/* 8662C 800976CC 00000000 */  nop
/* 86630 800976D0 0C025D94 */  jal     PlayerCall_InitFuncPtrs
/* 86634 800976D4 00000000 */  nop
/* 86638 800976D8 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 8663C 800976DC 8F39D030 */  lw      $t9, -0x2FD0($t9)          ## 8011D030
/* 86640 800976E0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 86644 800976E4 8FA5001C */  lw      $a1, 0x001C($sp)
/* 86648 800976E8 0320F809 */  jalr    $ra, $t9
/* 8664C 800976EC 00000000 */  nop
/* 86650 800976F0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 86654 800976F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 86658 800976F8 03E00008 */  jr      $ra
/* 8665C 800976FC 00000000 */  nop

glabel PlayerCall_Destroy
/* 86660 80097700 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 86664 80097704 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 86668 80097708 AFA40018 */  sw      $a0, 0x0018($sp)
/* 8666C 8009770C AFA5001C */  sw      $a1, 0x001C($sp)
/* 86670 80097710 0C0267A4 */  jal     KaleidoScopeCall_LoadPlayer
/* 86674 80097714 00000000 */  nop
/* 86678 80097718 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 8667C 8009771C 8F39D034 */  lw      $t9, -0x2FCC($t9)          ## 8011D034
/* 86680 80097720 8FA40018 */  lw      $a0, 0x0018($sp)
/* 86684 80097724 8FA5001C */  lw      $a1, 0x001C($sp)
/* 86688 80097728 0320F809 */  jalr    $ra, $t9
/* 8668C 8009772C 00000000 */  nop
/* 86690 80097730 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 86694 80097734 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 86698 80097738 03E00008 */  jr      $ra
/* 8669C 8009773C 00000000 */  nop

glabel PlayerCall_Update
/* 866A0 80097740 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 866A4 80097744 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 866A8 80097748 AFA40018 */  sw      $a0, 0x0018($sp)
/* 866AC 8009774C AFA5001C */  sw      $a1, 0x001C($sp)
/* 866B0 80097750 0C0267A4 */  jal     KaleidoScopeCall_LoadPlayer
/* 866B4 80097754 00000000 */  nop
/* 866B8 80097758 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 866BC 8009775C 8F39D038 */  lw      $t9, -0x2FC8($t9)          ## 8011D038
/* 866C0 80097760 8FA40018 */  lw      $a0, 0x0018($sp)
/* 866C4 80097764 8FA5001C */  lw      $a1, 0x001C($sp)
/* 866C8 80097768 0320F809 */  jalr    $ra, $t9
/* 866CC 8009776C 00000000 */  nop
/* 866D0 80097770 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 866D4 80097774 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 866D8 80097778 03E00008 */  jr      $ra
/* 866DC 8009777C 00000000 */  nop

glabel PlayerCall_Draw
/* 866E0 80097780 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 866E4 80097784 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 866E8 80097788 AFA40018 */  sw      $a0, 0x0018($sp)
/* 866EC 8009778C AFA5001C */  sw      $a1, 0x001C($sp)
/* 866F0 80097790 0C0267A4 */  jal     KaleidoScopeCall_LoadPlayer
/* 866F4 80097794 00000000 */  nop
/* 866F8 80097798 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 866FC 8009779C 8F39D03C */  lw      $t9, -0x2FC4($t9)          ## 8011D03C
/* 86700 800977A0 8FA40018 */  lw      $a0, 0x0018($sp)
/* 86704 800977A4 8FA5001C */  lw      $a1, 0x001C($sp)
/* 86708 800977A8 0320F809 */  jalr    $ra, $t9
/* 8670C 800977AC 00000000 */  nop
/* 86710 800977B0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 86714 800977B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 86718 800977B8 03E00008 */  jr      $ra
/* 8671C 800977BC 00000000 */  nop
