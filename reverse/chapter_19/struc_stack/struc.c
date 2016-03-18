#include <stdio.h>
#include <stdint.h>

struct my_struct {
	uint64_t a;
	uint64_t b;
	uint64_t c;
};

int main(void)
{
	struct my_struct my_s;
	struct my_struct my_t;

	my_s.a = 10;
	my_s.b = 20;
	my_s.c = 30;

	return 0;
}
