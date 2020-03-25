.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

glabel MsgEvent_SendNullTask
/* 56460 80067500 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 56464 80067504 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 56468 80067508 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFF80
/* 5646C 8006750C 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 56470 80067510 AFA00038 */  sw      $zero, 0x0038($sp)
/* 56474 80067514 AFAE0040 */  sw      $t6, 0x0040($sp)
/* 56478 80067518 AFA40088 */  sw      $a0, 0x0088($sp)
/* 5647C 8006751C AFA0008C */  sw      $zero, 0x008C($sp)
/* 56480 80067520 AFA00044 */  sw      $zero, 0x0044($sp)
/* 56484 80067524 AFA00048 */  sw      $zero, 0x0048($sp)
/* 56488 80067528 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFF7C
/* 5648C 8006752C 0C001088 */  jal     osCreateMesgQueue              ## osCreateMesgQueue
/* 56490 80067530 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 56494 80067534 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 56498 80067538 2484D2E0 */  addiu   $a0, $a0, 0xD2E0           ## $a0 = 8011D2E0
/* 5649C 8006753C 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFF98
/* 564A0 80067540 0C000788 */  jal     osSendMesg              ## osSendMesg
/* 564A4 80067544 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 564A8 80067548 3C048012 */  lui     $a0, 0x8012                ## $a0 = 80120000
/* 564AC 8006754C 0C028D91 */  jal     func_800A3644
/* 564B0 80067550 2484D2A8 */  addiu   $a0, $a0, 0xD2A8           ## $a0 = 8011D2A8
/* 564B4 80067554 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFF80
/* 564B8 80067558 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 564BC 8006755C 0C00080C */  jal     osRecvMesg              ## osRecvMesg
/* 564C0 80067560 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 564C4 80067564 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 564C8 80067568 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 564CC 8006756C 03E00008 */  jr      $ra
/* 564D0 80067570 00000000 */  nop
/* 564D4 80067574 00000000 */  nop
/* 564D8 80067578 00000000 */  nop
/* 564DC 8006757C 00000000 */  nop
