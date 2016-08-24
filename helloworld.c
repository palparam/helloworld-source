/* Pre Definition*/
#define PRINT_MESSAGE "Welcome to the Docker World"

#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

int main()
{
	int a=10, b=1073741824;
	int i,j;
	for(i=0;i<a;i++)
	{
		time_t now = time (NULL);
		printf("\n"PRINT_MESSAGE"\n");
		printf("Actual Date & Time : %s\n",asctime (localtime (&now)));
		for(j=0;j<b;j++)
		{
		}
	}
 return 0;
}

