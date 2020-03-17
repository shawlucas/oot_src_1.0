#ifndef _Z64EFFECT_H_
#define _Z64EFFECT_H_
#include <color.h>

/* this is most likely not complete accurate */

typedef struct
{
    /* 0x0000 */ s32 	     state;
    /* 0x0004 */ s32         elapsedTime;
    /* 0x0008 */ Vec3s       p1;
    /* 0x000E */ Vec3s       p2;
    /* 0x0014 */ u16         flags;
    /* 0x0016 */ char        unk_16[0x2];
} TrailControlPoints;

typedef enum
{
     /* 0x00 */ TRAIL_SIMPLE,
     /* 0x01 */ TRAIL_ALTERNATE, // simple with alternate colors
     /* 0x02 */ TRAIL_SMOOTH
} Trail_RenderMode;

typedef struct
{
    /* 0x0000 */ TrailControlPoints	p[16];
    /* 0x0180 */ u32			interpolationMode;
    /* 0x0184 */ f32 			unk_184;
    /* 0x0188 */ u16			unk_188;
    /* 0x018A */ s16			unk_18A;
    /* 0x018C */ s16			unk_18C;
    /* 0x018E */ Color_RGBA8		p1InitialColor;
    /* 0x0192 */ Color_RGBA8		p2InitialColor;
    /* 0x0196 */ Color_RGBA8            p1EndingColor;
    /* 0x019A */ Color_RGBA8		p2EndingColor;
    /* 0x019E */ u8                     pCount; // Number of active control points
    /* 0x019F */ u8                     pDuration; // Control Point duration
    /* 0x01A0 */ u8                     unk_1A0;
    /* 0x01A1 */ u8                     renderMode;
    /* 0x01A2 */ Color_RGBA8            alternateInnerColor;
    /* 0x01A6 */ Color_RGBA8            alternateOuterColor;
    /* 0x01AA */ char                   unk_1AA[0x2];
} TrailEffect;

typedef struct
{
    /* 0x0000 */ u8          activelyDrawn; // Indicates whether the actor is currently being drawn
    /* 0x0001 */ char        unk_01[0x3];
    /* 0x0004 */ TrailEffect effect;
} Trail; //size = 0x01B0

#endif
