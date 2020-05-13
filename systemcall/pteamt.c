#include <linux/pteamt.h>
#include <linux/unistd.h>
#include <linux/types.h> 
#include <linux/kernel.h>
#include <linux/sched.h>
#include <asm/uaccess.h>
#include <asm/system.h>
int gticket_policy=0;
asmlinkage int sys_pteamt(int enablegticket)
{
	gticket_policy=enablegticket;
}
