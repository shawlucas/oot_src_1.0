#include <libultra/ultra64.h>
#include "piint.h"
#include <global.h>

#ifdef NON_MATCHING
void osCreatePiManager(OSPri pri, OSMesgQueue *cmdQ, OSMesg *cmdBuf, s32 cmdMsgCnt)
{
	u32 savedMask;
	OSPri newPri;
	OSPri currentPri;
	if (!__osPiDevMgr.active)
	{
		osCreateMesgQueue(cmdQ, cmdBuf, cmdMsgCnt);
		osCreateMesgQueue(&piEventQueue, piEventBuf, 1);
		if (!__osPiAccessQueueEnabled)
			__osPiCreateAccessQueue();
		osSetEventMesg(OS_EVENT_PI, &piEventQueue, (OSMesg)0x22222222);
		newPri = -1;
		currentPri = osGetThreadPri(NULL);
		if (currentPri < pri)
		{
			newPri = currentPri;
			osSetThreadPri(NULL, pri);
		}
		savedMask = __osDisableInt();
		__osPiDevMgr.active = 1;
		__osPiDevMgr.cmdQueue = cmdQ;
		__osPiDevMgr.thread = &piThread;
		__osPiDevMgr.evtQueue = &piEventQueue;
		__osPiDevMgr.acsQueue = &__osPiAccessQueue;
		__osPiDevMgr.dma = osPiRawStartDma;
		__osPiDevMgr.edma = osEPiRawStartDma;
		osCreateThread(&piThread, 0, __osDevMgrMain, (void *)&__osPiDevMgr, piStackThread + sizeof(piStackThread), pri);
		osStartThread(&piThread);
		__osRestoreInt(savedMask);
		if (newPri != -1)
		{
			osSetThreadPri(NULL, newPri);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/pimgr/pimgr.s")
#endif