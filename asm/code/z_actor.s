# "Actor" part of the code file
#
# Handles the constuction, destruction, allocation and monitoring of Actors.
#
# General Documentation about actors:
# https://wiki.cloudmodding.com/oot/Actors
#
# Starts at VRAM: 8001EC20 / VROM: A94B80
#

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text
