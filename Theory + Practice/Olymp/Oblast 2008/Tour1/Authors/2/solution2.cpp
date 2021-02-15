#include <iostream>
#include <fstream>

#include <stdlib.h>
#include <memory.h>

#include <algorithm>
using namespace std;

ifstream InF("input.txt");
ofstream OutF("output.txt");

#define MAXN 60
#define MAXSUM 60*10000

int a[MAXN];
int sum[MAXN];

long long f[2][MAXSUM];

int main()
{
	int n,k;
	InF >> n >> k;
	for (int i=1;i<=n;i++) 
	{
		InF >> a[i];
		if (a[i] > k) a[i] = k;
	}
	
	sum[0] = 0;
	for (int i=1;i<=n;i++) sum[i] = sum[i-1] + a[i];

	memset(f[0], 0, sizeof(f[0]));
	f[0][0] = 1;
	for (int i=1;i<=n;i++)
	{
		for (int j=0;j<=sum[i];j++) f[1][j] = 0;

		for (int j=0;j<=sum[i-1];j++)
		{
			f[1][j+a[i]] += f[0][j];
			f[1][j] += f[0][j];
		}

		for (int j=0;j<=sum[i];j++) f[0][j] = f[1][j];
	}

	long long ans = 0;
	for (int i=k;i<=sum[n];i++)
	{
		if (sum[n] - i >= k) ans += f[1][i];
	}
	OutF << ans << endl;
	return 0;
}
