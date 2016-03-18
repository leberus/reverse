#include <stdio.h>

void f_signed (int a, int b, int c, int d, int e)
{
	if (a>b)
		printf ("a>b\n");
	if (a==b)
		printf ("a==b\n");
	if (a<b)
		printf ("a<b\n");
	if(a<c)
		printf ("a<c\n");
}

void f_unsigned (unsigned int a, unsigned int b)
{
	if (a>b)
		printf ("a>b\n");
	if (a==b)
		printf ("a==b\n");
	if (a<b)
		printf ("a<b\n");
}

int main()
{
	f_signed(1, 2, 3, 4, 5);
	f_unsigned(1, 2);

	return 0;
}
