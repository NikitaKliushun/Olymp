#include <iostream>
#include <fstream>

#include <algorithm>
using namespace std;

ifstream InF("input.txt");
ofstream OutF("output.txt");

#define MAXN 110

int a[MAXN];

int main()
{
	int n;
	
	InF >> n;
	for (int i=0;i<n;i++) InF >> a[i];

	sort(a,a+n);
	int ans = 0;
	for (int i=0;i<n;i++)
	{
		if (i < n / 2)
			ans -= a[i];
		else ans += a[i];
	}

	OutF << ans << endl;
	return 0;
}
