#include <stdio.h>

int f(void)
{
	return 1;
//	return rand();
}

int main(void)
{
	int a;
	
	a = f();

	return a;
}
