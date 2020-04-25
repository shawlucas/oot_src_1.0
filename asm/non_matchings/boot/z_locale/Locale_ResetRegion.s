glabel Locale_ResetRegion
/* 00EB0 80001310 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00EB4 80001314 AC206280 */  sw      $zero, 0x6280($at)         ## 80006280
/* 00EB8 80001318 03E00008 */  jr      $ra
/* 00EBC 8000131C 00000000 */  nop

