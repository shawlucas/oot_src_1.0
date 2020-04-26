#include <libultra/ultra64.h>
#include <global.h>
#include "viint.h"

void __osViSwapContext() {
    register OSViMode* s0;
    register __OSViContext* s1;
    u32 origin;
    u32 hStart;
    u32 vstart;
    u32 sp34;
    u32 field;
    register u32 s2;

    field = 0;
    s1 = __osViNext;
    s0 = s1->modep;
    field = IO_READ(VI_V_CURRENT_LINE_REG) & 1;
    s2 = osVirtualToPhysical(s1->framep);
    origin = (s0->fldRegs[field].origin) + s2;
    if (s1->state & 2) {
        s1->x.scale |= s0->comRegs.xScale & ~0xfff;
    } else {
        s1->x.scale = s0->comRegs.xScale;
    }
    if (s1->state & 4) {
        sp34 = (u32)(s0->fldRegs[field].yScale & 0xfff);
        s1->y.scale = s1->y.factor * sp34;
        s1->y.scale |= s0->fldRegs[field].yScale & ~0xfff;
    } else {
        s1->y.scale = s0->fldRegs[field].yScale;
    }

    vstart = (s0->fldRegs[field].vStart - (__additional_scanline << 0x10)) + __additional_scanline;
    hStart = s0->comRegs.hStart;

    if (s1->state & 0x20) {
        hStart = 0;
    }
    if (s1->state & 0x40) {
        s1->y.scale = 0;
        origin = osVirtualToPhysical(s1->framep);
    }
    if (s1->state & 0x80) {
        s1->y.scale = (s1->y.offset << 0x10) & 0x3ff0000;
        origin = osVirtualToPhysical(s1->framep);
    }
    IO_WRITE(VI_ORIGIN_REG, origin);
    IO_WRITE(VI_WIDTH_REG, s0->comRegs.width);
    IO_WRITE(VI_BURST_REG, s0->comRegs.burst);
    IO_WRITE(VI_V_SYNC_REG, s0->comRegs.vSync);
    IO_WRITE(VI_H_SYNC_REG, s0->comRegs.hSync);
    IO_WRITE(VI_LEAP_REG, s0->comRegs.leap);
    IO_WRITE(VI_H_START_REG, hStart);
    IO_WRITE(VI_V_START_REG, vstart);
    IO_WRITE(VI_V_BURST_REG, s0->fldRegs[field].vBurst);
    IO_WRITE(VI_INTR_REG, s0->fldRegs[field].vIntr);
    IO_WRITE(VI_X_SCALE_REG, s1->x.scale);
    IO_WRITE(VI_Y_SCALE_REG, s1->y.scale);
    IO_WRITE(VI_CONTROL_REG, s1->control);
    __osViNext = __osViCurr;
    __osViCurr = s1;
    *__osViNext = *__osViCurr;
}