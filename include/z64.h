#ifndef _Z64_H_
#define _Z64_H_

#include <libultra/ultra64.h>
#include <libultra/PR/gbi.h>
#include <libultra/PR/gs2dex.h>
#include <global.h>
#include <stdarg.h>

typedef struct StackEntry
{
    /* 0x00 */ struct StackEntry* next;
    /* 0x04 */ struct StackEntry* prev;
} StackEntry;

#endif
