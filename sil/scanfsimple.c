#include<stdio.h>

int main(void) {
	int a, b;
	while (1) {

		printf("Input a and b: ");

		scanf("%d %d", &a, &b);

		printf("%d - %d = %d\n", a, b, a - b);
		printf("%d * %d = %d\n", a, b, a * b);
	}

	return 0;
}