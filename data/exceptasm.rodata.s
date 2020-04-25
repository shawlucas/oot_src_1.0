.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.align 4

.section .rodata
glabel __osIntOffTable
	.byte 0x00 /* redispatch */
	.byte 0x14 /* prenmi */
	.byte 0x18 /* IP6_Hdlr */
	.byte 0x18 /* IP6_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x1c /* IP7_Hdlr */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x20 /* counter */
	.byte 0x00 /* redispatch */
	.byte 0x04 /* sw1 */
	.byte 0x08 /* sw2 */
	.byte 0x08 /* sw2 */
	.byte 0x0c /* rcp */
	.byte 0x0c /* rcp */
	.byte 0x0c /* rcp */
	.byte 0x0c /* rcp */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */
	.byte 0x10 /* cart */

glabel __osIntTable
    .word 0x800028E8 /* redispatch */
    .word 0x800028B0 /* sw1 */
    .word 0x80002890 /* sw2 */
    .word 0x800026F4 /* rcp */
    .word 0x800026B0 /* cart */
    .word 0x80002834 /* prenmi */
    .word 0x80002678 /* IP6_Hdlr */
    .word 0x80002684 /* IP7_Hdlr */
    .word 0x80002690 /* counter */
    .balign 16



