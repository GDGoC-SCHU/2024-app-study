#include<stdio.h>

int main(void) {

	printf("%.2f, % .0f\n", 1.141, 1.141);
	printf("%.2e, % .0e\n", 1.141,100.00);
	
	printf("%.4s\n", "hello");
	printf("%.1s\n", "hello");

	return 0;
}