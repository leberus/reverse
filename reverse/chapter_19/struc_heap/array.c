#include <stdio.h>
#include <stdlib.h>


void fill_s(int *s)
{
	*(s+0) = 10;
	*(s+8) = 20;
	*(s+16) = 30;
}

int main(void)
{
	int *my_s = malloc(3*sizeof(int *));


	fill_s(my_s);

	printf("%d %d %d\n", my_s[0], my_s[8], my_s[16]);

	return 0;
}
