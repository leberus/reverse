#include <stdio.h>

int my_strlen(const char *str)
{
	const char *eos = str;
	
	while( *eos++ )
		;

	return(eos - str - 1);
}

int main()
{
	return my_strlen("hello!");
}
