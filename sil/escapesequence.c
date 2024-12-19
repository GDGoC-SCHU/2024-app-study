#include<stdio.h>

int main(void) {
	int i;
	printf("hello, World! %#x\n", &i);

	printf("hello, World! \n");
	printf("hello, \t World! \n");
	printf("hello, World! \\/\\/\n");
	printf("hello, World!\?\n");
	printf("hello, \'W\'orld! \n");
	printf("he said, \"hello, World!\"\n");
	printf("\110\145\154\154\157\041 \n");
	printf("\x48\x65\6c\x6f\x21 \n");
	return 0;
}