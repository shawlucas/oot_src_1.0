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
/* 017A4 80001C04 0C00169C */  jal     osSetTimer
/* 017A8 80001C08 AFA0001C */  sw      $zero, 0x001C($sp)
/* 017AC 80001C0C 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 017B0 80001C10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 017B4 80001C14 0C00080C */  jal     osRecvMesg              ## osRecvMesg
/* 017B8 80001C18 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 017BC 80001C1C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 017C0 80001C20 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 017C4 80001C24 03E00008 */  jr      $ra
/* 017C8 80001C28 00000000 */  nop


