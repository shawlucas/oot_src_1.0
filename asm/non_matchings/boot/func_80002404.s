glabel func_80002404
/* 01FA4 80002404 AFA40000 */  sw      $a0, 0x0000($sp)
/* 01FA8 80002408 AFA50004 */  sw      $a1, 0x0004($sp)
/* 01FAC 8000240C AFA60008 */  sw      $a2, 0x0008($sp)
/* 01FB0 80002410 AFA7000C */  sw      $a3, 0x000C($sp)
/* 01FB4 80002414 DFAF0008 */  ld      $t7, 0x0008($sp)
/* 01FB8 80002418 DFAE0000 */  ld      $t6, 0x0000($sp)
/* 01FBC 8000241C 01EE1017 */  dsrav   $v0, $t6, $t7
/* 01FC0 80002420 0002183C */  dsll32  $v1, $v0,  0
/* 01FC4 80002424 0003183F */  dsra32  $v1, $v1,  0
/* 01FC8 80002428 03E00008 */  jr      $ra
/* 01FCC 8000242C 0002103F */  dsra32  $v0, $v0,  0

