#include <stdio.h>

int a[10][20][30];

void insert(int x, int y, int z, int value)
{
	a[x][y][z]=value;
	printf("%d\n", a[x][y][z]);
	printf("%d\n", a[5040]);
	
}

int main(void)
{
	insert(1, 1, 2, 5);
	return 0;
}
