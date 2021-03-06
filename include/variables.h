#ifndef _Z64_VARIABLES_H_
#define _Z64_VARIABLES_H_

#include "z64.h"
#include <segment_symbols.h>
#include <../lib/libultra/src/io/viint.h>
#include <../lib/libultra/src/os/exceptasm.h>

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
extern OSThread* __osRunningThread;
extern OSThread* __osRunQueue;
extern OSPiHandle* __osPiTable;
extern OSPiHandle* __osCurrentHandle[];
extern OSThread* __osActiveQueue;
extern s32 osAppNMIBuffer[];
extern s32 osViClock;
extern s32 osResetType;
extern OSTime osClockRate;
extern u32 __osFinalrom;
extern OSPiHandle __Dom1SpeedParam;
extern OSPiHandle __Dom2SpeedParam;
extern __OSViContext* __osViNext;
extern OSThread piThread;
extern OSMesgQueue piEventQueue;
extern OSMesg piEventBuf[1];
extern OSMesgQueue __osPiAccessQueue;
extern u8 piStackThread[0x1000];
extern void* osRomBase;
extern u32 __osPreNMI;
extern u32 __osShutdown;
extern OSTime __osCurrentTime;
extern u32 __osBaseCounter;
extern u32 __osViIntrCount;
extern OSViMode osViModeMpalLan1;
extern OSViMode osViModePalLan1;
extern OSViMode osViModeNtscLan1;
extern u32 __additional_scanline;
extern __osHwInt __osHwIntTable[];
#endif
