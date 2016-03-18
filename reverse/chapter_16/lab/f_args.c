#include <stdio.h>

void f(void)
{
	int a;
	a=5;
}

int main(int argc, char **argv)
{
	char *a = argv[1];
	f();
	return 0;
}
