glabel func_80003318
/* 02EB8 80003318 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 02EBC 8000331C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02EC0 80003320 A02E8974 */  sb      $t6, -0x768C($at)          ## 80008974
/* 02EC4 80003324 3C0FA460 */  lui     $t7, 0xA460                ## $t7 = A4600000
/* 02EC8 80003328 8DF80014 */  lw      $t8, 0x0014($t7)           ## A4600014
/* 02ECC 8000332C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02ED0 80003330 3C19A460 */  lui     $t9, 0xA460                ## $t9 = A4600000
/* 02ED4 80003334 A0388975 */  sb      $t8, -0x768B($at)          ## 80008975
/* 02ED8 80003338 8F280018 */  lw      $t0, 0x0018($t9)           ## A4600018
/* 02EDC 8000333C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02EE0 80003340 3C09A460 */  lui     $t1, 0xA460                ## $t1 = A4600000
/* 02EE4 80003344 A0288978 */  sb      $t0, -0x7688($at)          ## 80008978
/* 02EE8 80003348 8D2A001C */  lw      $t2, 0x001C($t1)           ## A460001C
/* 02EEC 8000334C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02EF0 80003350 3C0BA460 */  lui     $t3, 0xA460                ## $t3 = A4600000
/* 02EF4 80003354 A02A8976 */  sb      $t2, -0x768A($at)          ## 80008976
/* 02EF8 80003358 8D6C0020 */  lw      $t4, 0x0020($t3)           ## A4600020
/* 02EFC 8000335C 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F00 80003360 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 02F04 80003364 A02C8977 */  sb      $t4, -0x7689($at)          ## 80008977
/* 02F08 80003368 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F0C 8000336C A02D89EC */  sb      $t5, -0x7614($at)          ## 800089EC
/* 02F10 80003370 3C0EA460 */  lui     $t6, 0xA460                ## $t6 = A4600000
/* 02F14 80003374 8DCF0024 */  lw      $t7, 0x0024($t6)           ## A4600024
/* 02F18 80003378 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F1C 8000337C 3C18A460 */  lui     $t8, 0xA460                ## $t8 = A4600000
/* 02F20 80003380 A02F89ED */  sb      $t7, -0x7613($at)          ## 800089ED
/* 02F24 80003384 8F190028 */  lw      $t9, 0x0028($t8)           ## A4600028
/* 02F28 80003388 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F2C 8000338C 3C08A460 */  lui     $t0, 0xA460                ## $t0 = A4600000
/* 02F30 80003390 A03989F0 */  sb      $t9, -0x7610($at)          ## 800089F0
/* 02F34 80003394 8D09002C */  lw      $t1, 0x002C($t0)           ## A460002C
/* 02F38 80003398 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F3C 8000339C 3C0AA460 */  lui     $t2, 0xA460                ## $t2 = A4600000
/* 02F40 800033A0 A02989EE */  sb      $t1, -0x7612($at)          ## 800089EE
/* 02F44 800033A4 8D4B0030 */  lw      $t3, 0x0030($t2)           ## A4600030
/* 02F48 800033A8 3C018001 */  lui     $at, 0x8001                ## $at = 80010000
/* 02F4C 800033AC 03E00008 */  jr      $ra
/* 02F50 800033B0 A02B89EF */  sb      $t3, -0x7611($at)          ## 800089EF
/* 02F54 800033B4 00000000 */  nop
/* 02F58 800033B8 00000000 */  nop
/* 02F5C 800033BC 00000000 */  nop
/* 02F60 800033C0 00000000 */  nop
/* 02F64 800033C4 00000000 */  nop
/* 02F68 800033C8 00000000 */  nop
/* 02F6C 800033CC 00000000 */  nop
/* 02F70 800033D0 00000000 */  nop
/* 02F74 800033D4 00000000 */  nop
/* 02F78 800033D8 00000000 */  nop
/* 02F7C 800033DC 00000000 */  nop
/* 02F80 800033E0 00000000 */  nop
/* 02F84 800033E4 00000000 */  nop
/* 02F88 800033E8 00000000 */  nop
/* 02F8C 800033EC 00000000 */  nop
/* 02F90 800033F0 00000000 */  nop
/* 02F94 800033F4 00000000 */  nop
/* 02F98 800033F8 00000000 */  nop
/* 02F9C 800033FC 00000000 */  nop
/* 02FA0 80003400 00000000 */  nop
/* 02FA4 80003404 00000000 */  nop
/* 02FA8 80003408 00000000 */  nop
/* 02FAC 8000340C 00000000 */  nop
/* 02FB0 80003410 00000000 */  nop
/* 02FB4 80003414 00000000 */  nop
/* 02FB8 80003418 00000000 */  nop
/* 02FBC 8000341C 00000000 */  nop


