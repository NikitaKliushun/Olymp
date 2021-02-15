//Скоморощенко Александр Игоревич, Борисов, 11, 2
#include<stdio.h>
#define min(a,b) ((a)<(b)?(a):(b))

FILE *in=fopen("input.txt","rt");
FILE *out=fopen("output.txt","wt");

long long a,b,sum,x,add,ans;

int main()
{
	fscanf(in,"%I64i %I64i",&a,&b);
	if(a<b)
	{
		long long c=b;
		b=a;
		a=c;
	}
	
	sum=a+b;
	
	for(long long r=1;r*r<=sum;r++)
	{
		add=2*min(a/r,b/r);
		x=(add/2)*r;
		if(r%2)
		{
			if(a-x>=r/2+1&&b-x>=r/2) add++;
		}
		else
			if(a-x>=r/2&&b-x>=r/2) add++;
			
		add=add-r+1;
		if(add>0) ans+=add;
	}
	
	fprintf(out,"%I64i",ans);
	
	fclose(in);
	fclose(out);
	return 0;
}
