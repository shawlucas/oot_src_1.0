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

