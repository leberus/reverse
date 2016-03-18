#include <stdio.h>

#define R  1
#define W  2
#define RW 3


void f(int type)
{
	int read = 0;
	int write = 0;

	switch(type) {
	
		case RW:
			read = 1;
		case W:
			write = 1;
			break;
		case R:
			read = 1;
			break;
		default:
			break;
	}

	printf("read= %d, write= %d\n", read, write);
}


int main(void)
{
	f(1);
	return 0;
}
