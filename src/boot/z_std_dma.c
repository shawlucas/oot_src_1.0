#include <libultra/ultra64.h>
#include <global.h>

extern u32 sDmaMgrDmaBuffSize;
extern OSMesgQueue sDmaMgrMsgQueue;
extern char D_800065D4[];
extern OSMesg sDmaMgrMsgs[];
extern StackEntry sDmaMgrStackInfo;
extern u8 sDmaMgrStack[1280];
extern char D_800065E4[];
extern OSThread sDmaMgrThread;

s32 DmaMgr_CompareName(const char* name1, const char* name2) {
    while (*name1 != 0u) {
        if (*name1 > *name2) {
            return 1;
        }

        if (*name1 < *name2) {
            return -1;
        }

        name1++;
        name2++;
    }

    if (*name2 > 0) {
        return -1;
    }

    return 0;
}

#ifdef NON_MATCHING
s32 DmaMgr_DMARomToRam(u32 rom, u32 ram, u32 size) {
    
    OSMesgQueue queue;
    OSIoMesg ioMsg;
    OSMesg msg;
    s32 ret;
    u32 buffSize;
    u32 pad[4];

    buffSize = sDmaMgrDmaBuffSize;
    if (buffSize == 0) {
        buffSize = 0x2000;
    }

    osInvalICache((void*)ram, size);
    osInvalDCache((void*)ram, size);
    osCreateMesgQueue(&queue, &msg, 1);

    
    while (buffSize < size) {

        ioMsg.hdr.pri = OS_MESG_PRI_NORMAL;
        ioMsg.hdr.retQueue = &queue;
        ioMsg.devAddr = rom;
        ioMsg.dramAddr = (void*)ram;
        ioMsg.size = buffSize;


        ret = osEPiStartDma(gCartHandle, &ioMsg, OS_READ);
        if (ret != 0) {
            goto DmaMgr_DMARomToRam_end;
        }


        osRecvMesg(&queue, NULL, 1);
        size -= buffSize;
        rom += buffSize;
        ram += buffSize;
    }



    ioMsg.hdr.pri = OS_MESG_PRI_NORMAL;
    ioMsg.hdr.retQueue = &queue;
    ioMsg.devAddr = rom;
    ioMsg.dramAddr = (void*)ram;
    ioMsg.size = size;

    ret = osEPiStartDma(gCartHandle, &ioMsg, OS_READ);
    if (ret != 0) {
        goto DmaMgr_DMARomToRam_end;
    }

    osRecvMesg(&queue, NULL, 1);
DmaMgr_DMARomToRam_end:
    osInvalICache((void*)ram, size);
    osInvalDCache((void*)ram, size);

    return ret;
}
#else 
#pragma GLOBAL_ASM("asm/non_matchings/boot/z_std_dma/DmaMgr_DMARomToRam.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/boot/z_std_dma/func_800009E0.s")    

void DmaMgr_DmaCallback1(u32 ram, u32 rom, u32 size) {
    s32 pad;
    OSPiHandle* handle;
    OSMesgQueue queue;
    OSMesg msg;
    OSIoMesg ioMsg;
    
    handle = osDriveRomInit();
    
    osInvalICache((void*)ram, size);
    osInvalDCache((void*)ram, size);
    osCreateMesgQueue(&queue, &msg, 1);
    
    ioMsg.hdr.retQueue = &queue;
    ioMsg.hdr.pri = OS_MESG_PRI_NORMAL;
    ioMsg.devAddr = rom;
    ioMsg.dramAddr = (void*)ram;
    ioMsg.size = size;
    handle->transferInfo.cmdType = 2;

    osEPiStartDma(handle, &ioMsg, 0);
    osRecvMesg(&queue, NULL, 1);
    return;
}

#pragma GLOBAL_ASM("asm/non_matchings/boot/z_std_dma/func_80000AF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/boot/z_std_dma/DmaMgr_ProcessMsg.s")

void DmaMgr_ThreadEntry(void* arg0) {
    OSMesg msg;
    DmaRequest* req;
    while (1) {
        osRecvMesg(&sDmaMgrMsgQueue, &msg, OS_MESG_BLOCK);
        req = (DmaRequest*)msg;
        if (!req) {
            break;
        }

        DmaMgr_ProcessMsg(req);
        if (req->notifyQueue) {
            osSendMesg(req->notifyQueue, req->notifyMsg, OS_MESG_NOBLOCK);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/boot/z_std_dma/DmaMgr_SendRequestImpl.s")

s32 DmaMgr_SendRequest0(u32 ram, u32 vrom, u32 size) {
    DmaRequest req;
    OSMesgQueue queue;
    OSMesg msg;
    s32 ret;

    osCreateMesgQueue(&queue, &msg, 1);
    ret = DmaMgr_SendRequestImpl(&req, ram, vrom, size, 0, &queue, NULL);
    if (ret == -1) {
        return ret;
    }

    osRecvMesg(&queue, NULL, 1);
    return 0;
}
#ifdef NON_MATCHING
void DmaMgr_Start(void)
{
    DmaMgr_DMARomToRam((u32)_dmadataSegmentRomStart, (u32)_dmadataSegmentStart,
                       (u32)_dmadataSegmentRomEnd - (u32)_dmadataSegmentRomStart);
    if (gDmaDataTable[0].vromEnd != (u32)_bootSegmentRomStart)
    {
        Fault_AddHungupAndCrash(D_800065D4, 837);
    }

    osCreateMesgQueue(&sDmaMgrMsgQueue, sDmaMgrMsgs, 0x20);
    StackCheck_Init(&sDmaMgrStackInfo, sDmaMgrStack, sDmaMgrStack + sizeof(sDmaMgrStack), 0, 0x100, D_800065E4);
    osCreateThread(&sDmaMgrThread, 0x12, &DmaMgr_ThreadEntry, 0, sDmaMgrStack + sizeof(sDmaMgrStack), 0x10);
    osStartThread(&sDmaMgrThread);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/z_std_dma/DmaMgr_Start.s")
#endif

