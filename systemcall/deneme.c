#include <linux/cprocessinf.h>
#include <stdio.h>

int printCPI(struct prcdata data, int falseOption)
{
	if(falseOption==-1)
		printf("\n!!!False Option Value!!!\n\n");
	else	
	{
		printf("\nPrinting current process data\n\n");
		printf("Prio is: %ld\n", data.prio);
		printf("Weight is: %ld\n", data.weight);
		printf("Rank is: %ld\n", data.rank);
		printf("Procces ID is: %ld\n", data.pid);
		printf("Parent Procces ID is: %ld\n", data.pidparent);
		printf("Process Counter is: %d\n", data.procescount);
	}
}

main()
{
	struct prcdata dataUser;
	printCPI(dataUser, cprocessinf(&dataUser,500,25));
	printCPI(dataUser, cprocessinf(&dataUser,600,43));
	printCPI(dataUser, cprocessinf(&dataUser,50,10));
}
