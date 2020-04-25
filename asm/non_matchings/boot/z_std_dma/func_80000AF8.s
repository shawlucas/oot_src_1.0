.rdata

glabel D_80006570
    .asciz "??"
    .balign 4

    .word 0x00000000 # pad

.text
glabel func_80000AF8
/* 00698 80000AF8 AFA40000 */  sw      $a0, 0x0000($sp)
/* 0069C 80000AFC 3C028000 */  lui     $v0, %hi(D_80006570)               ## $v0 = 80000000
/* 006A0 80000B00 24426570 */  addiu   $v0, $v0, %lo(D_80006570)           ## $v0 = 80006570
/* 006A4 80000B04 03E00008 */  jr      $ra
/* 006A8 80000B08 00000000 */  nop

