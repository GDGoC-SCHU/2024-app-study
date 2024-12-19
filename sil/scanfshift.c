#include<stdio.h>

int main(void) {
	
	int a, b;
	
	while (1) {
		printf("Input 10-base integer a, b: ");

		scanf("%d %d", &a, &b);

		//printf("i i0xs 0x%08x. \n", i);
		printf("i is 0x%08x. \n", a);
		printf("i is 0x%08x. \n", b);
		printf("i is 0x%08x. \n", a & b);
		printf("i is 0x%08x. \n", (a & b) << 4);
	}

	return 0;
}