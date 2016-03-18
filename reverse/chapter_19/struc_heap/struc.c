#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

struct my_struct {
	uint64_t a;
	uint64_t b;
	uint64_t c;
};

void fill_s(struct my_struct *s)
{
	s->a = 10;
	s->b = 20;
	s->c = 30;
}

int main(void)
{
	struct my_struct *my_s;

	my_s = (struct my_struct *)malloc(sizeof(struct my_struct));

	fill_s(my_s);

	printf("%d %d %d\n", my_s->a, my_s->b, my_s->c);

	return 0;
}
