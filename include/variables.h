#ifndef _Z64_VARIABLES_H_
#define _Z64_VARIABLES_H_

#include "z64.h"
#include <segment_symbols.h>

extern u32 osMemSize;
extern OSThread sIdleThread;
extern u8 sIdleThreadStack[0x400];
extern OSThread sMainThread;
extern u8 sMainStack[0x800];
extern u8 sBootThreadStack[0x400];
extern OSPiHandle* gCartHandle;
extern u8 D_8012BE30[]; // _codeSegmentBssEnd ?
extern OSViMode osViModeNtscLan1;
extern OSViMode osViModeMpalLan1;
extern s32 osTvType;
extern DmaEntry gDmaDataTable[0x5F6];
#endif
