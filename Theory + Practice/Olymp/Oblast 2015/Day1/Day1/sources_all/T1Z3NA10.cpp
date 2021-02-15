//Скоморощенко Александр Игоревич, Борисов, 11, 3
#include<stdio.h>
FILE *in=fopen("input.txt","rt");
FILE *out=fopen("output.txt","wt");

int a[100001];
int b[100001];
int c[1000000];
int left1,left2,bp,b1,b2,n,m,p1,p2,pos;
long long len1,len2;

void step(int& left1,int& left2,int& b1,int b2, int& p, int *ar)
{
	if((b1^b2)!=bp)
	{
		bp=b1^b2;
		pos++;
	}
	c[pos]+=left1;
	p--;
	left2-=left1;
	left1=ar[p];
	b1=1-b1;
}

int main()
{
	fscanf(in,"%i %i",&n,&m);
	
	for(int i=1;i<=n;i++)
	{
		fscanf(in,"%i",&a[i]);
		len1+=a[i];
	}
		
	for(int i=1;i<=m;i++)
	{
		fscanf(in,"%i",&b[i]);
		len2+=b[i];
	}
	
	a[0]=b[0]=10000000;
	
	p1=n;
	p2=m;
	left1=a[n];
	left2=b[m];
	b1=int(n%2);
	b2=int(m%2);
	bp=-1;
	pos=0;
	while(p1||p2)
	{
		if(p2==0||left1<left2)
			step(left1,left2,b1,b2,p1,a);
		else
			if(p1==0||left1>left2)
				step(left2,left1,b2,b1,p2,b);
			else
			{
				if(b1^b2!=bp)
				{
					pos++;
					bp=b1^b2;
				}
				c[pos]+=left1;
				p1--;
				p2--;
				left1=a[p1];
				left2=b[p2];
				b1=1-b1;
				b2=1-b2;
			}
	}
		
	if(bp==0) pos--;
	for(;pos;pos--) fprintf(out,"%i ",c[pos]);
	
	fclose(in);
	fclose(out);
	return 0;
}
