#include <libultra/ultra64.h>
#include <global.h>

void osCreateMesgQueue(OSMesgQueue *mq, OSMesg *msg, s32 msgCount)
{
    mq->mtqueue = __osThreadTail;
    mq->fullqueue = __osThreadTail;
    mq->validCount = 0;
    mq->first = 0;
    mq->msgCount = msgCount;
    mq->msg = msg;
}