#include <stdio.h>

char a[3][4];

int main()
{
	int x, y;
	// clear array
	for (x=0; x<3; x++)
		for (y=0; y<4; y++)
		a[x][y]=0;

	// fill third column by 0..2:
	for (x=0; x<3; x++)
		a[x][2]=x;
}
