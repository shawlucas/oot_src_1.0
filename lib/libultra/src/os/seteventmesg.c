#include <libultra/ultra64.h>
#include "osint.h"

extern __OSEventState __osEventStateTab[OS_NUM_EVENTS];
extern u32 __osShutdown;
extern u32 __osPreNMI;

void osSetEventMesg(OSEvent event, OSMesgQueue* mq, OSMesg msg) {
    register u32 saveMask = __osDisableInt();
    __OSEventState* es;

    es = &__osEventStateTab[event];  
    es->messageQueue = mq;
    es->message = msg;

    if (event == OS_EVENT_PRENMI) {
        if (__osShutdown && !__osPreNMI) {
            osSendMesg(mq, msg, 0);
        }

        __osPreNMI = 1;
    }
    __osRestoreInt(saveMask);
}