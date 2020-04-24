#include <libultra/ultra64.h>
#include <global.h>

extern OSThread gMainThread;
extern u8 sMainStack[];
extern StackEntry sMainStackInfo;
extern OSMesg sPiMgrCmdBuff[];
extern OSMesgQueue gPiMgrCmdQ;
extern OSViMode gViConfigMode;
extern u8 D_80006230;

void Main_ThreadEntry(void* arg0) {
    OSTime var1;

    DmaMgr_Start();
    var1 = osGetTime();
    DmaMgr_SendRequest0(_codeSegmentStart, (u32)_codeSegmentRomStart, _codeSegmentRomEnd - _codeSegmentRomStart);
    var1 -= osGetTime();        // _codeSegmentBssEnd ?
    bzero(_codeSegmentBssStart, D_8012BE30 - _codeSegmentBssStart);
    Main(arg0);

}

void Idle_ThreadEntry(void* a0) {

    osCreateViManager(OS_PRIORITY_VIMGR);

    switch (osTvType) {
        case 0:
        case 1:
            D_80006230 = 2;
            gViConfigMode = osViModeNtscLan1;
            break;

        case 2:
            D_80006230 = 0x1E;
            gViConfigMode = osViModeMpalLan1;
            break;

    }

    osViSetMode(&gViConfigMode);
    osViBlack(1);
    osCreatePiManager(150, &gPiMgrCmdQ, sPiMgrCmdBuff, 50);
    StackCheck_Init(&sMainStackInfo, sMainStack, sMainStack + sizeof(sMainStack), 0, 0x400, "main");
    osCreateThread(&gMainThread, THREAD_MAIN, Main_ThreadEntry, a0, sMainStack + sizeof(sMainStack), 10);
    osStartThread(&gMainThread);
    osSetThreadPri(NULL, 0);

    do {

    } while (1);
}
