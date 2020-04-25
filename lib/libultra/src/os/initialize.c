#include <libultra/ultra64.h>
#include <global.h>

#define DEVICE_TYPE_INIT 7;

typedef struct
{
   /* 0x0 */ unsigned int inst1;
   /* 0x4 */ unsigned int inst2;
   /* 0x8 */ unsigned int inst3;
   /* 0xC */ unsigned int inst4;
} __osExceptionVector;
extern __osExceptionVector __osExceptionPreamble;

#ifdef NON_MATCHING
// regalloc
void __osInitialize_common(void) {
    u32 pifdata;
    u32 clock = 0;
    __osFinalrom = 1;
    __osSetSR(__osGetSR() | SR_CU1);
    __osSetFpcCsr(FPCSR_FS | FPCSR_EV);

    while (__osSiRawReadIo(PIF_RAM_END - 3, &pifdata)) {
        ;
    }

    while (__osSiRawWriteIo(PIF_RAM_END - 3, pifdata | 8)) {
        ;
    }

    *(__osExceptionVector*)UT_VEC = __osExceptionPreamble; // TLB miss
    *(__osExceptionVector*)XUT_VEC = __osExceptionPreamble; // XTLB miss
    *(__osExceptionVector*)ECC_VEC = __osExceptionPreamble; // cache errors
    *(__osExceptionVector*)E_VEC = __osExceptionPreamble; // general exceptions

    osWritebackDCache((void *)UT_VEC, E_VEC - UT_VEC + sizeof(__osExceptionVector));
    osInvalICache((void *)UT_VEC, E_VEC - UT_VEC + sizeof(__osExceptionVector));
    __createSpeedParam();
    osUnmapTLBAll();
    osMapTLBRdb();

    osClockRate = osClockRate * 3 / 4;

    if (osResetType == 0) {
        bzero(osAppNMIBuffer, OS_APP_NMI_BUFSIZE);
    }

    if (osTvType == OS_TV_PAL) {
        osViClock = VI_PAL_CLOCK;
    } else if (osTvType == OS_TV_MPAL) {
        osViClock = VI_MPAL_CLOCK;
    } else {
        osViClock = VI_NTSC_CLOCK;
    }

    if (__osGetCause() & 0x1000) {
        while (1) {
            ;
        }
    }

    IO_WRITE(AI_CONTROL_REG, 1);
    IO_WRITE(AI_DACRATE_REG, 0x3FFF);
    IO_WRITE(AI_BITRATE_REG, 0xF);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/initialize/__osInitialize_common.s")
#endif

void __createSpeedParam(void) {
    __Dom1SpeedParam.type = DEVICE_TYPE_INIT;
    __Dom1SpeedParam.latency = IO_READ(PI_BSD_DOM1_LAT_REG);
    __Dom1SpeedParam.pulse = IO_READ(PI_BSD_DOM1_PWD_REG);
    __Dom1SpeedParam.pageSize = IO_READ(PI_BSD_DOM1_PGS_REG);
    __Dom1SpeedParam.relDuration = IO_READ(PI_BSD_DOM1_RLS_REG);

    __Dom2SpeedParam.type = DEVICE_TYPE_INIT;
    __Dom2SpeedParam.latency = IO_READ(PI_BSD_DOM2_LAT_REG);
    __Dom2SpeedParam.pulse = IO_READ(PI_BSD_DOM2_PWD_REG);
    __Dom2SpeedParam.pageSize = IO_READ(PI_BSD_DOM2_PGS_REG);
    __Dom2SpeedParam.relDuration = IO_READ(PI_BSD_DOM2_RLS_REG);
}

#pragma GLOBAL_ASM("asm/non_matchings/boot/initialize/pad_800033B4.s")

