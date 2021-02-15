//Скоморощенко Александр Игоревич, Борисов, 11, 2

#include<stdio.h>
FILE *in=fopen("input.txt","rt");
FILE *out=fopen("output.txt","wt");

int d,D;
int a[32000];
long long unsigned ans=1;

int main()
{
	fscanf(in,"%i",&D);
	d=D;
	for(int i=2;i*i<=D;i++)
		while(d%i==0)
		{
			d/=i;
			a[i]++;
		}
	
	for(int i=1;i<32000;i++)
		if(a[i]%3!=0) ans*=((3-a[i]%3)==1?i:i*i);
		
	ans=ans*d*d;
	
	fprintf(out,"%I64i",ans);
	
	fclose(in);
	fclose(out);
	return 0;
}
