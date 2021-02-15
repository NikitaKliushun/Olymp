//Скоморощенко Александр Игоревич, Борисов, 11, 4
#include<stdio.h>
FILE *in=fopen("input.txt","rt");
FILE *out=fopen("output.txt","wt");

struct edge
{
	int to;
	int prev;
	int cost;
	bool b;
	int an;
} a[200010];
int last[100001];
bool l[100001];
int e=1;
int n;
long long max,min;


void dfs(int v, int cc)
{
	l[v]=true;
	if(cc>max) max=cc;
	for(int i=last[v];i;i=a[i].prev)
		if(!l[a[i].to])
			dfs(a[i].to,cc+a[i].cost);
}

void add(int f, int t, int c, bool b,int an)
{
	a[e].to=t;
	a[e].cost=c;
	a[e].an=an;
	a[e].b=b;
	a[e].prev=last[f];
	last[f]=e;
	e++;
}

void rek(int pos)
{
	int mem=-1;
	if(pos==n+1)
	{
		max=0;
		for(int i=1;i<=n;i++) l[i]=false;
		dfs(1,0);
		if(max<min) min=max;
	}
	else
	{
		for(int i=last[pos];i;i=a[i].prev)
			if(a[i].b)
			{
				mem=a[i].cost;
				a[i].cost=0;
				a[a[i].an].cost=0;
				rek(pos+1);
				a[i].cost=mem;
				a[a[i].an].cost=mem;
			}
		if(mem==-1) rek(pos+1);
	}
}

int main()
{
	int q,w,r;
	fscanf(in,"%i",&n);
	for(int i=1;i<n;i++)
	{
		fscanf(in,"%i %i %i",&q,&w,&r);
		add(q,w,r,true,e+1);
		add(w,q,r,false,e-1);
	}

	max=0;
	dfs(1,0);
	min=max;
	rek(1);
	
	fprintf(out,"%I64i",min);
	
	fclose(in);
	fclose(out);
	return 0;
}
