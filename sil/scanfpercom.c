#include<stdio.h>

int factorial(int);


int main(void) {
	int n, r, nPr, nCr;
	while (1) {

		printf("Input n and r ");

		scanf("%d %d", &n, &r);

		nPr = factorial(n) / factorial(n - r);
		nCr = nPr / factorial(r);
		
		//printf("i is 0x%08x. \n", i);
		printf("nPr and nCr are %d and %d\n ", nPr, nCr);
	}

	return 0;
}


int factorial(int n) {

	int i, result = 1;
	for (i = 0; i <= n; i++)
	{
		result *= i;
	}
	
	return result;
}