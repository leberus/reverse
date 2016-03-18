#include <stdio.h>

int f(void)
{
	rand();
	rand();
	rand();
	return rand();
}

int main(void)
{
	int a;
	
	a = f();

	return a;
}
