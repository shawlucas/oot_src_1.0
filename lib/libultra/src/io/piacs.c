#include <libultra/ultra64.h>
#include <global.h>

extern u32 __osPiAccessQueueEnabled;
extern OSMesgQueue __osPiAccessQueue;
extern OSMesg piAccessBuf;

#pragma GLOBAL_ASM("asm/non_matchings/boot/piacs/func_80001BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/boot/piacs/func_80001C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/boot/piacs/func_80001C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/boot/piacs/func_80001CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/boot/piacs/func_80001D20.s")

void __osPiCreateAccessQueue(void) {
    __osPiAccessQueueEnabled = 1;
    osCreateMesgQueue(&__osPiAccessQueue, &piAccessBuf, 1);
    osSendMesg(&__osPiAccessQueue, NULL, OS_MESG_NOBLOCK);
}

void __osPiGetAccess(void) {
    OSMesg mesg;

    if (!__osPiAccessQueueEnabled) {
        __osPiCreateAccessQueue();
    }

    osRecvMesg(&__osPiAccessQueue, &mesg, OS_MESG_BLOCK);
}

void __osPiRelAccess(void) {
    osSendMesg(&__osPiAccessQueue, NULL, OS_MESG_NOBLOCK);
}


