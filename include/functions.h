#ifndef _Z64_FUNCTIONS_H_
#define _Z64_FUNCTIONS_H_
#include "z64.h"

void Idle_ThreadEntry(void* a0);
void Main_ThreadEntry(void* arg0);
void DmaMgr_Start(void);
s32 DmaMgr_SendRequest0(u32 ram, u32 vrom, u32 size);
void Main(void* arg0);
OSTime osGetTime(void);
void Locale_Init(void);
void StackCheck_Init(StackEntry* entry, void* stackTop, void* stackBottom, u32 initValue, s32 minSpace, const char* name);
void __osInitialize_common(void);
void __osInitialize_autodetect(void);
#endif
