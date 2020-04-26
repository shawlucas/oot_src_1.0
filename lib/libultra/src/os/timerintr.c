#include <libultra/ultra64.h>
#include <global.h>


extern u32 __osTimerCounter;
extern OSTimer __osBaseTimer;
extern OSTimer* __osTimerList;

#ifdef NON_MATCHING
void __osTimerServicesInit(void)
{
	__osCurrentTime = 0;
	__osBaseCounter = 0;
	__osViIntrCount = 0;
	__osTimerList->prev = __osTimerList;
	__osTimerList->next = __osTimerList->prev;
	__osTimerList->value = 0;
	__osTimerList->interval = __osTimerList->value;
	__osTimerList->mq = NULL;
	__osTimerList->msg = NULL;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/boot/timerintr/__osTimerServicesInit.s")
#endif

void __osTimerInterrupt(void)
{
	OSTimer *t;
	u32 count;
	u32 elapsed_cycles;

	if (__osTimerList->next == __osTimerList)
		return;
	while (1)
	{
		t = __osTimerList->next;
		if (t == __osTimerList)
		{
			__osSetCompare(0);
			__osTimerCounter = 0;
			break;
		}
		count = osGetCount();
		elapsed_cycles = count - __osTimerCounter;
		__osTimerCounter = count;
		if (elapsed_cycles < t->value)
		{
			t->value -= elapsed_cycles;
			__osSetTimerIntr(t->value);
			return;
		}
		else
		{
			t->prev->next = t->next;
			t->next->prev = t->prev;
			t->next = NULL;
			t->prev = NULL;
			if (t->mq != NULL)
			{
				osSendMesg(t->mq, t->msg, OS_MESG_NOBLOCK);
			}
			if (t->interval != 0)
			{
				t->value = t->interval;
				__osInsertTimer(t);
			}
		}
	}
}

void __osSetTimerIntr(OSTime tim)
{
	OSTime NewTime;
	u32 savedMask;
	savedMask = __osDisableInt();
	__osTimerCounter = osGetCount();
	NewTime = tim + __osTimerCounter;
	__osSetCompare(NewTime);
	__osRestoreInt(savedMask);
}

OSTime __osInsertTimer(OSTimer* t)
{
	OSTimer* timep;
	OSTime tim;
	u32 savedMask;
	savedMask = __osDisableInt();
	for (timep = __osTimerList->next, tim = t->value;
		 timep != __osTimerList && tim > timep->value;
		 tim -= timep->value, timep = timep->next)
	{
		;
	}
	t->value = tim;
	if (timep != __osTimerList)
		timep->value -= tim;
	t->next = timep;
	t->prev = timep->prev;
	timep->prev->next = t;
	timep->prev = t;
	__osRestoreInt(savedMask);
	return tim;
}
