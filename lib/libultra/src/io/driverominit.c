#include <libultra/ultra64.h>
#include <global.h>

extern OSPiHandle __DriveRomHandle;

#ifdef NON_MATCHING
// weird data stuff
OSPiHandle* osDriveRomInit() {
    register s32 status;
    register u32 a;
    register s32 prevInt;
    static u32 D_800062D0 = 1;

    __osPiGetAccess();

    if (!D_800062D0) {
        __osPiRelAccess();
        return &__DriveRomHandle;
    }

    D_800062D0 = 0;
    __DriveRomHandle.type = DEVICE_TYPE_BULK;
    __DriveRomHandle.baseAddress = PHYS_TO_K1(PI_DOM1_ADDR1);
    __DriveRomHandle.domain = 0;
    __DriveRomHandle.speed = 0;
    bzero(&__DriveRomHandle.transferInfo, sizeof(__OSTranxInfo));

    while (status = IO_READ(PI_STATUS_REG), status & PI_STATUS_ERROR) {
        ;
    }

    IO_WRITE(PI_BSD_DOM1_LAT_REG, 0xFF);
    IO_WRITE(PI_BSD_DOM1_PGS_REG, 0);
    IO_WRITE(PI_BSD_DOM1_RLS_REG, 3);
    IO_WRITE(PI_BSD_DOM1_PWD_REG, 0xFF);

    a = IO_READ(__DriveRomHandle.baseAddress);
    __DriveRomHandle.latency = a & 0xFF;
    __DriveRomHandle.pulse = (a >> 8) & 0xFF;
    __DriveRomHandle.pageSize = (a >> 0x10) & 0xF;
    __DriveRomHandle.relDuration = (a >> 0x14) & 0xF;

    IO_WRITE(PI_BSD_DOM1_LAT_REG, (u8)a);
    IO_WRITE(PI_BSD_DOM1_PGS_REG, __DriveRomHandle.pageSize);
    IO_WRITE(PI_BSD_DOM1_RLS_REG, __DriveRomHandle.relDuration);
    IO_WRITE(PI_BSD_DOM1_PWD_REG,  __DriveRomHandle.pulse);

    __osCurrentHandle[__DriveRomHandle.domain]->type = __DriveRomHandle.type;
    __osCurrentHandle[__DriveRomHandle.domain]->latency = __DriveRomHandle.latency;
    __osCurrentHandle[__DriveRomHandle.domain]->pageSize = __DriveRomHandle.pageSize;
    __osCurrentHandle[__DriveRomHandle.domain]->relDuration = __DriveRomHandle.relDuration;
    __osCurrentHandle[__DriveRomHandle.domain]->pulse = __DriveRomHandle.pulse;

    prevInt = __osDisableInt();
    __DriveRomHandle.next = __osPiTable;
    __osPiTable = &__DriveRomHandle;
    __osRestoreInt(prevInt);
    __osPiRelAccess();

    return &__DriveRomHandle;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/osDriveRomInit/osDriveRomInit.s")
#endif