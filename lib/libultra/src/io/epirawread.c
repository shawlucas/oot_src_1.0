#include <libultra/ultra64.h>
#include <global.h>
#include "piint.h"

#define UPDATE_REG(reg, var)           \
    if (cHandle->var != pihandle->var) \
        IO_WRITE(reg, pihandle->var);

s32 osEPiRawReadIo(OSPiHandle* pihandle, u32 devAddr, u32* data) {
    register u32 stat;
    OSPiHandle* cHandle;

    WAIT_ON_IOBUSY(stat);

    if (__osCurrentHandle[pihandle->domain]->type != pihandle->type) {
        cHandle = __osCurrentHandle[pihandle->domain];

        if (pihandle->domain == 0) {
            UPDATE_REG(PI_BSD_DOM1_LAT_REG, latency);
            UPDATE_REG(PI_BSD_DOM1_PGS_REG, pageSize);   
            UPDATE_REG(PI_BSD_DOM1_RLS_REG, relDuration); 
            UPDATE_REG(PI_BSD_DOM1_PWD_REG, pulse);  
        } else {
            UPDATE_REG(PI_BSD_DOM2_LAT_REG, latency);
            UPDATE_REG(PI_BSD_DOM2_PGS_REG, pageSize);
            UPDATE_REG(PI_BSD_DOM2_RLS_REG, relDuration);
            if (cHandle->pulse != pihandle->pulse) {
                IO_WRITE(PI_BSD_DOM2_PWD_REG, pihandle->pulse); // macro doesn't work for this for some reason
            }
        }

        cHandle->type = pihandle->type;
        cHandle->latency = pihandle->latency;
        cHandle->pageSize = pihandle->pageSize;
        cHandle->relDuration = pihandle->relDuration;
        cHandle->pulse = pihandle->pulse;
    }

    *data = IO_READ(pihandle->baseAddress | devAddr | 0);
    return 0;
}
