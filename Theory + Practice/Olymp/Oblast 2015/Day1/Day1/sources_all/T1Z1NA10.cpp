//Скоморощенко Александр Игоревич, Борисов, 11, 1
#include<stdio.h>
FILE *in=fopen("input.txt","rt");
FILE *out=fopen("output.txt","wt");

int a[101];
int n,m,k;

int main()
{
	int q;
	
	fscanf(in,"%i %i",&n,&k);
	for(int i=0;i<n;i++)
	{
		fscanf(in,"%i",&q);
		a[q]++;
	}
	
	for(int i=1;i<=100;i++)
		m+=(a[i]/k);
	
	fprintf(out,"%i\n",m);
	for(int i=1;i<=100;i++)
	{
		q=a[i]/k;
		for(int j=1;j<=q;j++)
			fprintf(out,"%i ",i);
	}
	
	fclose(in);
	fclose(out);
	return 0;
}
