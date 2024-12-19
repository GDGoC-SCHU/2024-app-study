#include<stdio.h>

int main(void) {
	int i;
	float f;

	while (1) {

		printf("Input interger i and flock f:");

		scanf("%d  %f", &i, &f);

		printf("i is %06d\n", i);
		printf("f is %03.3f\n", f);
	}

	return 0;
}