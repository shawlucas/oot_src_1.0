#include <libultra/ultra64.h>
#include <global.h>

void cleararena(void) {
    bzero(_dmadataSegmentStart, (u8*)osMemSize - OS_K0_TO_PHYSICAL(_dmadataSegmentStart));
}

void bootproc(void) {
    StackCheck_Init(&sBootThreadInfo, sBootThreadStack, sBootThreadStack + sizeof(sBootThreadStack), 0, -1, "boot");

    osMemSize = osGetMemSize();
    __osInitialize_autodetect();
    cleararena();
    __osInitialize_common();
    
    gCartHandle = osCartRomInit();
    osDriveRomInit();
    Locale_Init();

    StackCheck_Init(&sIdleThreadInfo, sIdleThreadStack, sIdleThreadStack + sizeof(sIdleThreadStack), 0, 256, "idle");
    osCreateThread(&sIdleThread, 1, Idle_ThreadEntry, 0, sIdleThreadStack + sizeof(sIdleThreadStack), 10);
    osStartThread(&sIdleThread);
}
