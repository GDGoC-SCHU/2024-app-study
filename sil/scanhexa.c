#include<stdio.h>

int main(void) {
	int i;
	while (1) {

		printf("Input 10-base integer i: ");

		scanf("%d", &i);

		//printf("i is 0x%08x. \n", i);
		printf("i is %#08x. \n", i);
	}

	return 0;
}