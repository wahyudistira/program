#include <stdio.h>
#include <conio.h>

int faktorial (int a);

main()
{
	int n;
	
	printf ("masukkan bilangan; ");
	scanf("%d", &n);
	printf("faktorial %d = %d", n, faktorial(n));
	getch();
}

int faktorial (int a)
{
	if(a==0) {
		return 1;
	}else {
		return a * faktorial (a - 1);
	}
}