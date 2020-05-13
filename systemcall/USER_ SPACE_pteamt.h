#include <linux/unistd.h>
#include <linux/types.h>
#include <errno.h>
extern int errno;


_syscall1(int, pteamt, int, enablegticket);
