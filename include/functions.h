#ifndef _Z64_FUNCTIONS_H_
#define _Z64_FUNCTIONS_H_
#include <libultra/ultra64.h>
#include <z64dma.h>
#include <z64.h>

typedef struct StackEntry;

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
s32 DmaMgr_DMARomToRam(u32 rom, u32 ram, u32 size);
void DmaMgr_ProcessMsg(DmaRequest* req);
s32 DmaMgr_SendRequestImpl(DmaRequest* req, u32 ram, u32 vrom, u32 size, u32 unk, OSMesgQueue* queue, OSMesg msg);
void Fault_AddHungupAndCrash(const char*, u32);
#endif
