#include <libultra/ultra64.h>
#include <global.h>

extern OSPiHandle CartRomHandle;

#ifdef NON_MATCHING
// reloc because static
OSPiHandle* osCartRomInit() {
    register u32 a;
    register s32 status;
    register u32 prevInt;
    register u32 lastLatency;
    register u32 lastPageSize;
    register u32 lastRelDuration;
    register u32 lastPulse;

    static u32 D_80006520 = 1;

    __osPiGetAccess();

    if (!D_80006520) {
        __osPiRelAccess();
        return &CartRomHandle;
    }

    D_80006520 = 0;
    CartRomHandle.type = DEVICE_TYPE_CART;
    CartRomHandle.baseAddress = 0xb0000000;
    CartRomHandle.domain = 0;
    CartRomHandle.speed = 0;
    bzero(&CartRomHandle.transferInfo, sizeof(__OSTranxInfo));

    while (status = IO_READ(PI_STATUS_REG), status & PI_STATUS_ERROR) {
        ;
    }

    lastLatency = IO_READ(PI_BSD_DOM1_LAT_REG);
    lastPageSize = IO_READ(PI_BSD_DOM1_PGS_REG);
    lastRelDuration = IO_READ(PI_BSD_DOM1_RLS_REG);
    lastPulse = IO_READ(PI_BSD_DOM1_PWD_REG);

    IO_WRITE(PI_BSD_DOM1_LAT_REG, 0xFF);
    IO_WRITE(PI_BSD_DOM1_PGS_REG, 0);
    IO_WRITE(PI_BSD_DOM1_RLS_REG, 3);
    IO_WRITE(PI_BSD_DOM1_PWD_REG, 0xFF);

    a = IO_READ(CartRomHandle.baseAddress);
    CartRomHandle.latency = a & 0xFF;
    CartRomHandle.pageSize = (a >> 0x10) & 0xF;
    CartRomHandle.relDuration = (a >> 0x14) & 0xF;
    CartRomHandle.pulse = (a >> 8) & 0xFF;

    IO_WRITE(PI_BSD_DOM1_LAT_REG, lastLatency);
    IO_WRITE(PI_BSD_DOM1_PGS_REG, lastPageSize);
    IO_WRITE(PI_BSD_DOM1_RLS_REG, lastRelDuration);
    IO_WRITE(PI_BSD_DOM1_PWD_REG, lastPulse);

    prevInt = __osDisableInt();
    CartRomHandle.next = __osPiTable;
    __osPiTable = &CartRomHandle;
    __osRestoreInt(prevInt);
    __osPiRelAccess();

    return &CartRomHandle;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/cartrominit/osCartRomInit.s")
#endif