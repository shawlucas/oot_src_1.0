glabel func_80005300
/* 04EA0 80005300 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 04EA4 80005304 AFB00018 */  sw      $s0, 0x0018($sp)
/* 04EA8 80005308 AFBF001C */  sw      $ra, 0x001C($sp)
/* 04EAC 8000530C 3C108000 */  lui     $s0, 0x8000                ## $s0 = 80000000
/* 04EB0 80005310 3C0EA440 */  lui     $t6, 0xA440                ## $t6 = A4400000
/* 04EB4 80005314 8E1064C4 */  lw      $s0, 0x64C4($s0)           ## 800064C4
/* 04EB8 80005318 8DCF0010 */  lw      $t7, 0x0010($t6)           ## A4400010
/* 04EBC 8000531C 8E050008 */  lw      $a1, 0x0008($s0)           ## 80000008
/* 04EC0 80005320 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 04EC4 80005324 AFB8002C */  sw      $t8, 0x002C($sp)
/* 04EC8 80005328 8E040004 */  lw      $a0, 0x0004($s0)           ## 80000004
/* 04ECC 8000532C 0C000ED8 */  jal     func_80003B60              ## osVirtualToPhysical
/* 04ED0 80005330 AFA50044 */  sw      $a1, 0x0044($sp)
/* 04ED4 80005334 8FB9002C */  lw      $t9, 0x002C($sp)
/* 04ED8 80005338 8FA50044 */  lw      $a1, 0x0044($sp)
/* 04EDC 8000533C 960A0000 */  lhu     $t2, 0x0000($s0)           ## 80000000
/* 04EE0 80005340 00194080 */  sll     $t0, $t9,  2
/* 04EE4 80005344 01194021 */  addu    $t0, $t0, $t9
/* 04EE8 80005348 00084080 */  sll     $t0, $t0,  2
/* 04EEC 8000534C 00A83021 */  addu    $a2, $a1, $t0
/* 04EF0 80005350 8CC90028 */  lw      $t1, 0x0028($a2)           ## 00000028
/* 04EF4 80005354 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 04EF8 80005358 11600008 */  beq     $t3, $zero, .L8000537C
/* 04EFC 8000535C 01222021 */  addu    $a0, $t1, $v0
/* 04F00 80005360 8CAD0020 */  lw      $t5, 0x0020($a1)           ## 00000020
/* 04F04 80005364 8E0C0020 */  lw      $t4, 0x0020($s0)           ## 80000020
/* 04F08 80005368 2401F000 */  addiu   $at, $zero, 0xF000         ## $at = FFFFF000
/* 04F0C 8000536C 01A17024 */  and     $t6, $t5, $at
/* 04F10 80005370 018E7825 */  or      $t7, $t4, $t6              ## $t7 = 00000000
/* 04F14 80005374 10000003 */  beq     $zero, $zero, .L80005384
/* 04F18 80005378 AE0F0020 */  sw      $t7, 0x0020($s0)           ## 80000020
.L8000537C:
/* 04F1C 8000537C 8CB80020 */  lw      $t8, 0x0020($a1)           ## 00000020
/* 04F20 80005380 AE180020 */  sw      $t8, 0x0020($s0)           ## 80000020
.L80005384:
/* 04F24 80005384 96190000 */  lhu     $t9, 0x0000($s0)           ## 80000000
/* 04F28 80005388 33280004 */  andi    $t0, $t9, 0x0004           ## $t0 = 00000000
/* 04F2C 8000538C 51000035 */  beql    $t0, $zero, .L80005464
/* 04F30 80005390 8CCE002C */  lw      $t6, 0x002C($a2)           ## 0000002C
/* 04F34 80005394 8CC3002C */  lw      $v1, 0x002C($a2)           ## 0000002C
/* 04F38 80005398 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 80000024
/* 04F3C 8000539C 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 04F40 800053A0 30690FFF */  andi    $t1, $v1, 0x0FFF           ## $t1 = 00000000
/* 04F44 800053A4 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 04F48 800053A8 05210004 */  bgez    $t1, .L800053BC
/* 04F4C 800053AC 46803220 */  cvt.s.w $f8, $f6
/* 04F50 800053B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 04F54 800053B4 00000000 */  nop
/* 04F58 800053B8 460A4200 */  add.s   $f8, $f8, $f10
.L800053BC:
/* 04F5C 800053BC 46082402 */  mul.s   $f16, $f4, $f8
/* 04F60 800053C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 04F64 800053C4 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 04F68 800053C8 444AF800 */  cfc1    $t2, $f31
/* 04F6C 800053CC 44C2F800 */  ctc1    $v0, $f31
/* 04F70 800053D0 00000000 */  nop
/* 04F74 800053D4 460084A4 */  cvt.w.s $f18, $f16
/* 04F78 800053D8 4442F800 */  cfc1    $v0, $f31
/* 04F7C 800053DC 00000000 */  nop
/* 04F80 800053E0 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 04F84 800053E4 50400013 */  beql    $v0, $zero, .L80005434
/* 04F88 800053E8 44029000 */  mfc1    $v0, $f18
/* 04F8C 800053EC 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 04F90 800053F0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 04F94 800053F4 46128481 */  sub.s   $f18, $f16, $f18
/* 04F98 800053F8 44C2F800 */  ctc1    $v0, $f31
/* 04F9C 800053FC 00000000 */  nop
/* 04FA0 80005400 460094A4 */  cvt.w.s $f18, $f18
/* 04FA4 80005404 4442F800 */  cfc1    $v0, $f31
/* 04FA8 80005408 00000000 */  nop
/* 04FAC 8000540C 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 04FB0 80005410 14400005 */  bne     $v0, $zero, .L80005428
/* 04FB4 80005414 00000000 */  nop
/* 04FB8 80005418 44029000 */  mfc1    $v0, $f18
/* 04FBC 8000541C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 04FC0 80005420 10000007 */  beq     $zero, $zero, .L80005440
/* 04FC4 80005424 00411025 */  or      $v0, $v0, $at              ## $v0 = 80000000
.L80005428:
/* 04FC8 80005428 10000005 */  beq     $zero, $zero, .L80005440
/* 04FCC 8000542C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 04FD0 80005430 44029000 */  mfc1    $v0, $f18
.L80005434:
/* 04FD4 80005434 00000000 */  nop
/* 04FD8 80005438 0440FFFB */  bltz    $v0, .L80005428
/* 04FDC 8000543C 00000000 */  nop
.L80005440:
/* 04FE0 80005440 AE02002C */  sw      $v0, 0x002C($s0)           ## 8000002C
/* 04FE4 80005444 8CCB002C */  lw      $t3, 0x002C($a2)           ## 0000002C
/* 04FE8 80005448 2401F000 */  addiu   $at, $zero, 0xF000         ## $at = FFFFF000
/* 04FEC 8000544C 44CAF800 */  ctc1    $t2, $f31
/* 04FF0 80005450 01616824 */  and     $t5, $t3, $at
/* 04FF4 80005454 004D6025 */  or      $t4, $v0, $t5              ## $t4 = FFFFFFFF
/* 04FF8 80005458 10000003 */  beq     $zero, $zero, .L80005468
/* 04FFC 8000545C AE0C002C */  sw      $t4, 0x002C($s0)           ## 8000002C
/* 05000 80005460 8CCE002C */  lw      $t6, 0x002C($a2)           ## 0000002C
.L80005464:
/* 05004 80005464 AE0E002C */  sw      $t6, 0x002C($s0)           ## 8000002C
.L80005468:
/* 05008 80005468 3C028000 */  lui     $v0, 0x8000                ## $v0 = 80000000
/* 0500C 8000546C 8C42654C */  lw      $v0, 0x654C($v0)           ## 8000654C
/* 05010 80005470 8CCF0030 */  lw      $t7, 0x0030($a2)           ## 00000030
/* 05014 80005474 0002C400 */  sll     $t8, $v0, 16
/* 05018 80005478 01F8C823 */  subu    $t9, $t7, $t8
/* 0501C 8000547C 03224021 */  addu    $t0, $t9, $v0
/* 05020 80005480 AFA80034 */  sw      $t0, 0x0034($sp)
/* 05024 80005484 96030000 */  lhu     $v1, 0x0000($s0)           ## 80000000
/* 05028 80005488 8CA7001C */  lw      $a3, 0x001C($a1)           ## 0000001C
/* 0502C 8000548C 30690020 */  andi    $t1, $v1, 0x0020           ## $t1 = 00000000
/* 05030 80005490 11200002 */  beq     $t1, $zero, .L8000549C
/* 05034 80005494 306A0040 */  andi    $t2, $v1, 0x0040           ## $t2 = 00000000
/* 05038 80005498 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L8000549C:
/* 0503C 8000549C 5140000D */  beql    $t2, $zero, .L800054D4
/* 05040 800054A0 306B0080 */  andi    $t3, $v1, 0x0080           ## $t3 = 00000000
/* 05044 800054A4 AE00002C */  sw      $zero, 0x002C($s0)         ## 8000002C
/* 05048 800054A8 8E040004 */  lw      $a0, 0x0004($s0)           ## 80000004
/* 0504C 800054AC AFA70038 */  sw      $a3, 0x0038($sp)
/* 05050 800054B0 AFA60024 */  sw      $a2, 0x0024($sp)
/* 05054 800054B4 0C000ED8 */  jal     func_80003B60              ## osVirtualToPhysical
/* 05058 800054B8 AFA50044 */  sw      $a1, 0x0044($sp)
/* 0505C 800054BC 8FA50044 */  lw      $a1, 0x0044($sp)
/* 05060 800054C0 8FA60024 */  lw      $a2, 0x0024($sp)
/* 05064 800054C4 8FA70038 */  lw      $a3, 0x0038($sp)
/* 05068 800054C8 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 0506C 800054CC 96030000 */  lhu     $v1, 0x0000($s0)           ## 80000000
/* 05070 800054D0 306B0080 */  andi    $t3, $v1, 0x0080           ## $t3 = 00000000
.L800054D4:
/* 05074 800054D4 51600010 */  beql    $t3, $zero, .L80005518
/* 05078 800054D8 3C0FA440 */  lui     $t7, 0xA440                ## $t7 = A4400000
/* 0507C 800054DC 960D0028 */  lhu     $t5, 0x0028($s0)           ## 80000028
/* 05080 800054E0 3C0103FF */  lui     $at, 0x03FF                ## $at = 03FF0000
/* 05084 800054E4 8E040004 */  lw      $a0, 0x0004($s0)           ## 80000004
/* 05088 800054E8 000D6400 */  sll     $t4, $t5, 16
/* 0508C 800054EC 01817024 */  and     $t6, $t4, $at
/* 05090 800054F0 AE0E002C */  sw      $t6, 0x002C($s0)           ## 8000002C
/* 05094 800054F4 AFA70038 */  sw      $a3, 0x0038($sp)
/* 05098 800054F8 AFA60024 */  sw      $a2, 0x0024($sp)
/* 0509C 800054FC 0C000ED8 */  jal     func_80003B60              ## osVirtualToPhysical
/* 050A0 80005500 AFA50044 */  sw      $a1, 0x0044($sp)
/* 050A4 80005504 8FA50044 */  lw      $a1, 0x0044($sp)
/* 050A8 80005508 8FA60024 */  lw      $a2, 0x0024($sp)
/* 050AC 8000550C 8FA70038 */  lw      $a3, 0x0038($sp)
/* 050B0 80005510 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 050B4 80005514 3C0FA440 */  lui     $t7, 0xA440                ## $t7 = A4400000
.L80005518:
/* 050B8 80005518 ADE40004 */  sw      $a0, 0x0004($t7)           ## A4400004
/* 050BC 8000551C 8CB80008 */  lw      $t8, 0x0008($a1)           ## 00000008
/* 050C0 80005520 3C19A440 */  lui     $t9, 0xA440                ## $t9 = A4400000
/* 050C4 80005524 3C09A440 */  lui     $t1, 0xA440                ## $t1 = A4400000
/* 050C8 80005528 AF380008 */  sw      $t8, 0x0008($t9)           ## A4400008
/* 050CC 8000552C 8CA8000C */  lw      $t0, 0x000C($a1)           ## 0000000C
/* 050D0 80005530 3C0BA440 */  lui     $t3, 0xA440                ## $t3 = A4400000
/* 050D4 80005534 3C0CA440 */  lui     $t4, 0xA440                ## $t4 = A4400000
/* 050D8 80005538 AD280014 */  sw      $t0, 0x0014($t1)           ## A4400014
/* 050DC 8000553C 8CAA0010 */  lw      $t2, 0x0010($a1)           ## 00000010
/* 050E0 80005540 3C18A440 */  lui     $t8, 0xA440                ## $t8 = A4400000
/* 050E4 80005544 3C08A440 */  lui     $t0, 0xA440                ## $t0 = A4400000
/* 050E8 80005548 AD6A0018 */  sw      $t2, 0x0018($t3)           ## A4400018
/* 050EC 8000554C 8CAD0014 */  lw      $t5, 0x0014($a1)           ## 00000014
/* 050F0 80005550 3C0AA440 */  lui     $t2, 0xA440                ## $t2 = A4400000
/* 050F4 80005554 3C028000 */  lui     $v0, 0x8000                ## $v0 = 80000000
/* 050F8 80005558 AD8D001C */  sw      $t5, 0x001C($t4)           ## A440001C
/* 050FC 8000555C 8CAE0018 */  lw      $t6, 0x0018($a1)           ## 00000018
/* 05100 80005560 3C0DA440 */  lui     $t5, 0xA440                ## $t5 = A4400000
/* 05104 80005564 244264C0 */  addiu   $v0, $v0, 0x64C0           ## $v0 = 800064C0
/* 05108 80005568 ADEE0020 */  sw      $t6, 0x0020($t7)           ## A4400020
/* 0510C 8000556C AF070024 */  sw      $a3, 0x0024($t8)           ## A4400024
/* 05110 80005570 8FB90034 */  lw      $t9, 0x0034($sp)
/* 05114 80005574 3C0EA440 */  lui     $t6, 0xA440                ## $t6 = A4400000
/* 05118 80005578 3C038000 */  lui     $v1, 0x8000                ## $v1 = 80000000
/* 0511C 8000557C AD190028 */  sw      $t9, 0x0028($t0)           ## A4400028
/* 05120 80005580 8CC90034 */  lw      $t1, 0x0034($a2)           ## 00000034
/* 05124 80005584 246364C4 */  addiu   $v1, $v1, 0x64C4           ## $v1 = 800064C4
/* 05128 80005588 AD49002C */  sw      $t1, 0x002C($t2)           ## A440002C
/* 0512C 8000558C 8CCB0038 */  lw      $t3, 0x0038($a2)           ## 00000038
/* 05130 80005590 ADAB000C */  sw      $t3, 0x000C($t5)           ## A440000C
/* 05134 80005594 8E0C0020 */  lw      $t4, 0x0020($s0)           ## 80000020
/* 05138 80005598 02005825 */  or      $t3, $s0, $zero            ## $t3 = 80000000
/* 0513C 8000559C ADCC0030 */  sw      $t4, 0x0030($t6)           ## A4400030
/* 05140 800055A0 8E0F002C */  lw      $t7, 0x002C($s0)           ## 8000002C
/* 05144 800055A4 260C0030 */  addiu   $t4, $s0, 0x0030           ## $t4 = 80000030
/* 05148 800055A8 AF0F0034 */  sw      $t7, 0x0034($t8)           ## A4400034
/* 0514C 800055AC 8E19000C */  lw      $t9, 0x000C($s0)           ## 8000000C
/* 05150 800055B0 AD190000 */  sw      $t9, 0x0000($t0)           ## A4400000
/* 05154 800055B4 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 800064C0
/* 05158 800055B8 AC500000 */  sw      $s0, 0x0000($v0)           ## 800064C0
/* 0515C 800055BC AC6A0000 */  sw      $t2, 0x0000($v1)           ## 800064C4
.L800055C0:
/* 05160 800055C0 8D610000 */  lw      $at, 0x0000($t3)           ## 80000000
/* 05164 800055C4 256B000C */  addiu   $t3, $t3, 0x000C           ## $t3 = 8000000C
/* 05168 800055C8 254A000C */  addiu   $t2, $t2, 0x000C           ## $t2 = A440000C
/* 0516C 800055CC AD41FFF4 */  sw      $at, -0x000C($t2)          ## A4400000
/* 05170 800055D0 8D61FFF8 */  lw      $at, -0x0008($t3)          ## 80000004
/* 05174 800055D4 AD41FFF8 */  sw      $at, -0x0008($t2)          ## A4400004
/* 05178 800055D8 8D61FFFC */  lw      $at, -0x0004($t3)          ## 80000008
/* 0517C 800055DC 156CFFF8 */  bne     $t3, $t4, .L800055C0
/* 05180 800055E0 AD41FFFC */  sw      $at, -0x0004($t2)          ## A4400008
/* 05184 800055E4 8FBF001C */  lw      $ra, 0x001C($sp)
/* 05188 800055E8 8FB00018 */  lw      $s0, 0x0018($sp)
/* 0518C 800055EC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 05190 800055F0 03E00008 */  jr      $ra
/* 05194 800055F4 00000000 */  nop
/* 05198 800055F8 00000000 */  nop
/* 0519C 800055FC 00000000 */  nop


