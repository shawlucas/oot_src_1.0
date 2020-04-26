#include <libultra/ultra64.h>

s32 osEPiReadIo(OSPiHandle* pihandle, u32 devAddr, u32 *data)
{
    register s32 ret;
    __osPiGetAccess();
    ret = osEPiRawReadIo(pihandle, devAddr, data);
    __osPiRelAccess();
    return ret;
}
