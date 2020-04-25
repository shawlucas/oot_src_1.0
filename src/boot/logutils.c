#include <libultra/ultra64.h>
#include <global.h>

float LogUtils_CheckFloatRange(const char* exp, s32 arg1, const char* var1Name, float var1, const char* var2Name,
                               float var2, const char* var3Name, float var3) {
    if (var1 < var2 || var3 < var1) {
        DEBUG_LOG("%s %d: range error %s(%f) < %s(%f) < %s(%f)\n", exp, arg1, var2Name, var2, var1Name, var1,
                     var3Name, var3); // unsure about this function name...confused 
    }
    return var1;
}

void LogUtils_HungupThread(const char* name, s32 line) {
    DEBUG_LOG("*** HungUp in thread %d, [%s:%d] ***\n", osGetThreadId(NULL), name, line);
    Fault_AddHungupAndCrash(name, line);
}

void LogUtils_ResetHungup() {
    DEBUG_LOG("*** Reset ***\n");
    Fault_AddHungupAndCrash("Reset", 0);
}

