//Скоморощенко Александр Игоревич, Борисов, 11, 3
#include<stdio.h>
FILE *in=fopen("input.txt","rt");
FILE *out=fopen("output.txt","wt");

char m[10][11] = 
{
"0113212112",
"4033143254",
"3202334242",
"5220233152",
"4032032243",
"2222202222",
"3132120134",
"5232343054",
"0112101101",
"3211224230"
};
int n,k;
char a[200];
long long s=0;
int actions=0;
long long ans=0;

void rek(int pos)
{
	if(pos==n) 
	{
		if(s==0)
			ans=(ans+1)%1000000007;
	}
	else 
		for(int i=0;i<10;i++)
		{
			if(i==0&&pos==0) continue;
			actions=actions+m[i][a[pos]]+m[a[pos]][i];
			s=s+m[i][a[pos]]-m[a[pos]][i];
			if(actions<=k)
				rek(pos+1);
			actions=actions-m[i][a[pos]]-m[a[pos]][i];
			s=s-m[i][a[pos]]+m[a[pos]][i];
		}
}

int main()
{
	
	for(int i=0;i<10;i++)
		for(int j=0;j<10;j++)
			m[i][j]-='0';
	
	fscanf(in,"%i %i",&n,&k);
	fscanf(in,"%s",a);
	for(int i=0;a[i];i++) 
		a[i]-='0';
		
	k*=2;
	rek(0);
	fprintf(out,"%I64i",ans);
	
	fclose(in);
	fclose(out);
	return 0;
}
