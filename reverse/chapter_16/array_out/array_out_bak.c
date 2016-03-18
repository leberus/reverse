#include <stdio.h>

int main()
{
	int a[20];
	int i;

	for (i=0; i<20; i++)
		a[i]=i*2;

	for (i=0; i<20; i++)
		printf ("a[%d]=%d\n", i, a[i]);
	
	printf ("a[20]=%d\n", a[20]);

	return 0;
}
