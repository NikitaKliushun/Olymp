#include <iostream>
#include <fstream>

#include <memory.h>
#include <stdlib.h>

#include <algorithm>
using namespace std;

ifstream InF("input.txt");
ofstream OutF("output.txt");

#define MAXN 200000

int pos[MAXN],sum[MAXN];

int next(int x)
{
	return (x | (x-1)) + 1;
}

int prev(int x)
{
	return x & (x-1);
}

void add_sum(int pz,int value)
{
	while (pz < MAXN)
	{
		sum[pz] += value;
		pz = next(pz);
	}
}

int find_sum(int pz)
{
	int cur = 0;
	while (pz > 0)
	{
		cur += sum[pz];
		pz = prev(pz);
	}
	return cur;
}

int main()
{
	int n,k;
	InF >> n >> k;
	memset(sum, 0, sizeof(sum));
	for (int i=n+k;i>k;i--) 
	{
		pos[i-k-1] = i;
		add_sum(i, 1);
	}
	for (int i=k;i>0;i--)
	{
		int cur;
		InF >> cur;
		cur--;

		OutF << find_sum(pos[cur]) << " ";
		add_sum(pos[cur], -1);
		pos[cur] = i;
		add_sum(pos[cur], 1);
	}
	OutF << endl;
	return 0;
}
