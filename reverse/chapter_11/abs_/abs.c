#include <stdio.h>

int my_abs (int i)
{
	if (i<0)
		return -i;
	else
		return i;
}

int main(void)
{
	printf("%d\n", my_abs(-2));
	printf("%d\n", my_abs(2));

	return 0;
}
