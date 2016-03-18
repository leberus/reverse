#include <stdio.h>
#include <stdint.h>

#define IS_SET(flag, bit) ((flag) & (bit))

int f(uint64_t a)
{
	uint64_t i;
	int rt=0;
	
	for (i=0; i<32; i++)
		if (IS_SET (a, 1<<i))
			rt++;

	return rt;
}

int main()
{
	f(0x12345678);
}
