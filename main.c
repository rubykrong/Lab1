/* main.c */
#include <stdio.h>
#include "world.h"


int main()
{
	char b[30], c[30];
	h_world(b);
	g_world(c);
	printf("%s\n%s\n", b,c);

	return 0;
}
