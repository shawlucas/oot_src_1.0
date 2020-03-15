.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .text

glabel func_80001BC0
/* 01760 80001BC0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 01764 80001BC4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01768 80001BC8 AFA40068 */  sw      $a0, 0x0068($sp)
/* 0176C 80001BCC AFA5006C */  sw      $a1, 0x006C($sp)
/* 01770 80001BD0 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFE4
/* 01774 80001BD4 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 01778 80001BD8 0C001088 */  jal     osCreateMesgQueue              ## osCreateMesgQueue
/* 0177C 80001BDC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01780 80001BE0 240E0000 */  addiu   $t6, $zero, 0x0000         ## $t6 = 00000000
/* 01784 80001BE4 240F0000 */  addiu   $t7, $zero, 0x0000         ## $t7 = 00000000
/* 01788 80001BE8 27B80050 */  addiu   $t8, $sp, 0x0050           ## $t8 = FFFFFFE8
/* 0178C 80001BEC AFB80018 */  sw      $t8, 0x0018($sp)
/* 01790 80001BF0 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 01794 80001BF4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 01798 80001BF8 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFC0
/* 0179C 80001BFC 8FA60068 */  lw      $a2, 0x0068($sp)
/* 017A0 80001C00 8FA7006C */  lw      $a3, 0x006C($sp)
/* 017A4 80001C04 0C00169C */  jal     func_80005A70
/* 017A8 80001C08 AFA0001C */  sw      $zero, 0x001C($sp)
/* 017AC 80001C0C 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 017B0 80001C10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 017B4 80001C14 0C00080C */  jal     osRecvMesg              ## osRecvMesg
/* 017B8 80001C18 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 017BC 80001C1C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 017C0 80001C20 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 017C4 80001C24 03E00008 */  jr      $ra
/* 017C8 80001C28 00000000 */  nop


glabel func_80001C2C
/* 017CC 80001C2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017D0 80001C30 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 017D4 80001C34 AFA40018 */  sw      $a0, 0x0018($sp)
/* 017D8 80001C38 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 017DC 80001C3C 24040000 */  addiu   $a0, $zero, 0x0000         ## $a0 = 00000000
/* 017E0 80001C40 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 017E4 80001C44 0C0008B6 */  jal     func_800022D8
/* 017E8 80001C48 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 017EC 80001C4C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 017F0 80001C50 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 017F4 80001C54 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 017F8 80001C58 0C000876 */  jal     func_800021D8
/* 017FC 80001C5C 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 01800 80001C60 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01804 80001C64 0C0006F0 */  jal     func_80001BC0
/* 01808 80001C68 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 0180C 80001C6C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01810 80001C70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01814 80001C74 03E00008 */  jr      $ra
/* 01818 80001C78 00000000 */  nop


glabel func_80001C7C
/* 0181C 80001C7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01820 80001C80 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01824 80001C84 AFA40018 */  sw      $a0, 0x0018($sp)
/* 01828 80001C88 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0182C 80001C8C 24040000 */  addiu   $a0, $zero, 0x0000         ## $a0 = 00000000
/* 01830 80001C90 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01834 80001C94 0C0008B6 */  jal     func_800022D8
/* 01838 80001C98 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 0183C 80001C9C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01840 80001CA0 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 01844 80001CA4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01848 80001CA8 0C000876 */  jal     func_800021D8
/* 0184C 80001CAC 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 01850 80001CB0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01854 80001CB4 0C0006F0 */  jal     func_80001BC0
/* 01858 80001CB8 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 0185C 80001CBC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01860 80001CC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01864 80001CC4 03E00008 */  jr      $ra
/* 01868 80001CC8 00000000 */  nop


glabel func_80001CCC
/* 0186C 80001CCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01870 80001CD0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01874 80001CD4 AFA40018 */  sw      $a0, 0x0018($sp)
/* 01878 80001CD8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 0187C 80001CDC 3C0702CB */  lui     $a3, 0x02CB                ## $a3 = 02CB0000
/* 01880 80001CE0 34E74178 */  ori     $a3, $a3, 0x4178           ## $a3 = 02CB4178
/* 01884 80001CE4 24040000 */  addiu   $a0, $zero, 0x0000         ## $a0 = 00000000
/* 01888 80001CE8 0C0008B6 */  jal     func_800022D8
/* 0188C 80001CEC 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01890 80001CF0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01894 80001CF4 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 01898 80001CF8 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 0189C 80001CFC 0C000876 */  jal     func_800021D8
/* 018A0 80001D00 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 018A4 80001D04 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 018A8 80001D08 0C0006F0 */  jal     func_80001BC0
/* 018AC 80001D0C 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 018B0 80001D10 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 018B4 80001D14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018B8 80001D18 03E00008 */  jr      $ra
/* 018BC 80001D1C 00000000 */  nop


glabel func_80001D20
/* 018C0 80001D20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018C4 80001D24 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 018C8 80001D28 AFA40018 */  sw      $a0, 0x0018($sp)
/* 018CC 80001D2C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 018D0 80001D30 3C0702CB */  lui     $a3, 0x02CB                ## $a3 = 02CB0000
/* 018D4 80001D34 34E74178 */  ori     $a3, $a3, 0x4178           ## $a3 = 02CB4178
/* 018D8 80001D38 24040000 */  addiu   $a0, $zero, 0x0000         ## $a0 = 00000000
/* 018DC 80001D3C 0C0008B6 */  jal     func_800022D8
/* 018E0 80001D40 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 018E4 80001D44 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 018E8 80001D48 0C0006F0 */  jal     func_80001BC0
/* 018EC 80001D4C 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 018F0 80001D50 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 018F4 80001D54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018F8 80001D58 03E00008 */  jr      $ra
/* 018FC 80001D5C 00000000 */  nop


glabel __osPiCreateAccessQueue
/* 01900 80001D60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01904 80001D64 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01908 80001D68 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0190C 80001D6C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01910 80001D70 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 01914 80001D74 3C058001 */  lui     $a1, 0x8001                ## $a1 = 80010000
/* 01918 80001D78 AC2E62F0 */  sw      $t6, 0x62F0($at)           ## 800062F0
/* 0191C 80001D7C 24A58940 */  addiu   $a1, $a1, 0x8940           ## $a1 = 80008940
/* 01920 80001D80 24848948 */  addiu   $a0, $a0, 0x8948           ## $a0 = 80008948
/* 01924 80001D84 0C001088 */  jal     osCreateMesgQueue              ## osCreateMesgQueue
/* 01928 80001D88 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0192C 80001D8C 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 01930 80001D90 24848948 */  addiu   $a0, $a0, 0x8948           ## $a0 = 80008948
/* 01934 80001D94 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01938 80001D98 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 0193C 80001D9C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01940 80001DA0 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01944 80001DA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01948 80001DA8 03E00008 */  jr      $ra
/* 0194C 80001DAC 00000000 */  nop

glabel __osPiGetAccess
/* 01950 80001DB0 3C0E8000 */  lui     $t6, 0x8000                ## $t6 = 80000000
/* 01954 80001DB4 8DCE62F0 */  lw      $t6, 0x62F0($t6)           ## 800062F0
/* 01958 80001DB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0195C 80001DBC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01960 80001DC0 15C00003 */  bne     $t6, $zero, .L80001DD0
/* 01964 80001DC4 00000000 */  nop
/* 01968 80001DC8 0C000758 */  jal     __osPiCreateAccessQueue
/* 0196C 80001DCC 00000000 */  nop
.L80001DD0:
/* 01970 80001DD0 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 01974 80001DD4 24848948 */  addiu   $a0, $a0, 0x8948           ## $a0 = 80008948
/* 01978 80001DD8 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFFC
/* 0197C 80001DDC 0C00080C */  jal     osRecvMesg              ## osRecvMesg
/* 01980 80001DE0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01984 80001DE4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01988 80001DE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0198C 80001DEC 03E00008 */  jr      $ra
/* 01990 80001DF0 00000000 */  nop

glabel __osPiRelAccess
/* 01994 80001DF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01998 80001DF8 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0199C 80001DFC 3C048001 */  lui     $a0, 0x8001                ## $a0 = 80010000
/* 019A0 80001E00 24848948 */  addiu   $a0, $a0, 0x8948           ## $a0 = 80008948
/* 019A4 80001E04 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 019A8 80001E08 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 019AC 80001E0C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 019B0 80001E10 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 019B4 80001E14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 019B8 80001E18 03E00008 */  jr      $ra
/* 019BC 80001E1C 00000000 */  nop
