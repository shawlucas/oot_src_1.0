#ifndef _Z64_VARIABLES_H_
#define _Z64_VARIABLES_H_

#include <z64.h>
#include <segment_symbols.h>

extern u32 osMemSize;
extern OSThread sIdleThread;
extern u8 sIdleThreadStack[0x400];
extern StackEntry sBootThreadInfo;
extern OSThread sMainThread;
extern u8 sMainStack[0x800];
extern StackEntry sMainStackInfo;
extern u8 sBootThreadStack[0x400];
extern OSPiHandle* gCartHandle;
extern StackEntry sIdleThreadInfo;
#endif