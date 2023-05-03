#include <time.h>

/* f2c extension that returns the time as a UNIX timestamp. */
long time_()
{
    return time(0);
}
