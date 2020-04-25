#ifndef _Z64_H_
#define _Z64_H_

#include <libultra/ultra64.h>
#include <libultra/PR/gbi.h>
#include <libultra/PR/gs2dex.h>
#include <global.h>
#include <stdarg.h>
#include <z64dma.h>

typedef struct StackEntry
{
    /* 0x00 */ struct StackEntry* next;
    /* 0x04 */ struct StackEntry* prev;
} StackEntry;

typedef struct {
    /* 0x00 */ char magic[4]; // Yaz0
    /* 0x04 */ u32 decSize;
    /* 0x08 */ u32 compInfoOffset; // only used in yaz0_old.c
    /* 0x0C */ u32 uncompDataOffset; // only used in yaz0_old.c
    /* 0x10 */ u32 data[1];
} Yaz0Header; // size = 0x10 ("data" is not part of the header)

#endif
