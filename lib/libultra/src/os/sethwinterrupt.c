#include <libultra/ultra64.h>
#include "exceptasm.h" 

void __osSetHWIntrRoutine(s32 idx, OSMesgQueue* queue, OSMesg msg) {
    register int prevInt;

    prevInt = __osDisableInt();

    __osHwIntTable[idx].queue = queue;
    __osHwIntTable[idx].msg = msg;

    __osRestoreInt(prevInt);
}
