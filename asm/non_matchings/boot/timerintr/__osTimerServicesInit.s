glabel __osTimerServicesInit
/* 044F0 80004950 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 044F4 80004954 240E0000 */  addiu   $t6, $zero, 0x0000         ## $t6 = 00000000
/* 044F8 80004958 240F0000 */  addiu   $t7, $zero, 0x0000         ## $t7 = 00000000
/* 044FC 8000495C AC2F9E84 */  sw      $t7, -0x617C($at)          ## 80009E84
/* 04500 80004960 AC2E9E80 */  sw      $t6, -0x6180($at)          ## 80009E80
/* 04504 80004964 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 04508 80004968 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 0450C 8000496C 8F1863B0 */  lw      $t8, 0x63B0($t8)           ## 800063B0
/* 04510 80004970 AC209E88 */  sw      $zero, -0x6178($at)        ## 80009E88
/* 04514 80004974 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 04518 80004978 AC209E8C */  sw      $zero, -0x6174($at)        ## 80009E8C
/* 0451C 8000497C 3C198000 */  lui     $t9, 0x8000                ## $t9 = 80000000
/* 04520 80004980 AF180004 */  sw      $t8, 0x0004($t8)           ## 80000004
/* 04524 80004984 8F3963B0 */  lw      $t9, 0x63B0($t9)           ## 800063B0
/* 04528 80004988 3C098000 */  lui     $t1, 0x8000                ## $t1 = 80000000
/* 0452C 8000498C 240A0000 */  addiu   $t2, $zero, 0x0000         ## $t2 = 00000000
/* 04530 80004990 8F280004 */  lw      $t0, 0x0004($t9)           ## 80000004
/* 04534 80004994 240B0000 */  addiu   $t3, $zero, 0x0000         ## $t3 = 00000000
/* 04538 80004998 3C0C8000 */  lui     $t4, 0x8000                ## $t4 = 80000000
/* 0453C 8000499C AF280000 */  sw      $t0, 0x0000($t9)           ## 80000000
/* 04540 800049A0 8D2963B0 */  lw      $t1, 0x63B0($t1)           ## 800063B0
/* 04544 800049A4 3C0D8000 */  lui     $t5, 0x8000                ## $t5 = 80000000
/* 04548 800049A8 3C188000 */  lui     $t8, 0x8000                ## $t8 = 80000000
/* 0454C 800049AC AD2A0010 */  sw      $t2, 0x0010($t1)           ## 80000010
/* 04550 800049B0 AD2B0014 */  sw      $t3, 0x0014($t1)           ## 80000014
/* 04554 800049B4 8D8C63B0 */  lw      $t4, 0x63B0($t4)           ## 800063B0
/* 04558 800049B8 8D8E0010 */  lw      $t6, 0x0010($t4)           ## 80000010
/* 0455C 800049BC 8D8F0014 */  lw      $t7, 0x0014($t4)           ## 80000014
/* 04560 800049C0 AD8E0008 */  sw      $t6, 0x0008($t4)           ## 80000008
/* 04564 800049C4 AD8F000C */  sw      $t7, 0x000C($t4)           ## 8000000C
/* 04568 800049C8 8DAD63B0 */  lw      $t5, 0x63B0($t5)           ## 800063B0
/* 0456C 800049CC ADA00018 */  sw      $zero, 0x0018($t5)         ## 80000018
/* 04570 800049D0 8F1863B0 */  lw      $t8, 0x63B0($t8)           ## 800063B0
/* 04574 800049D4 03E00008 */  jr      $ra
/* 04578 800049D8 AF00001C */  sw      $zero, 0x001C($t8)         ## 8000001C

