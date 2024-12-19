#include<stdio.h>
#define _USE_MATH_DEFINES
#include <math.h>
float circum(float);
float area(float);


int main(void) {
	float rd;
	
	while (1) {

		printf("Input radius rd: ");

		scanf("%f", &rd);

		printf("Circumference is %f.\n", circum(rd));
		printf("Area is %f.\n", area(rd));
	}

	return 0;
}


float circum(float r) {

	return 2 * M_PI * r;
}


float area(float r) {

	return M_PI * r * r;
}