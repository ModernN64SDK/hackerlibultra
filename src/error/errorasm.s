#include "PR/os_version.h"

#if !defined(_FINALROM) || BUILD_VERSION < VERSION_J
#include "sys/asm.h"
#include "sys/regdef.h"
#include "PR/os_version.h"

LEAF(__osError)
    lw      t0, __osCommonHandler
    beqz    t0, 1f
    jr      t0
1:
    j       ra
END(__osError)

#endif
