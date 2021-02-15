//Rudzko Jan Wiaczaslawawicz, Minski Dziarzauny Ablasny Licej, zadacza 3

#include <iostream>
#include <fstream>
#include <cstdio>
#include <vector>
#include <algorithm>
#include <process.h>

#define MAXN (int(1e5)+7)

const int inf = 1000000000;

std::vector<std::pair<int, int> > a; //first - value, second - used

void SolveForOne()
{
	std::vector<int> d;
	d.resize(MAXN, inf);
	d[0] = -inf;
	
	int x, p, ans = 1;
	for(size_t i = 0; i < a.size(); i++)
	{
		x = a[i].first;
		p = std::upper_bound(d.begin(), d.end(), x) - d.begin();
		if(d[p] > x) 
		{
			d[p] = x;
			ans = std::max(ans, p);
		}
	}
	
	printf("%d\n", ans);
	
	exit(0);
}

int SolveVozrPodposl()
{
	std::vector<int> d;
	d.resize(MAXN, inf);
	d[0] = -inf;
	
	int x, p, ans = 0;
	for(size_t i = 0; i < a.size(); i++)
	{
		if(a[i].second) continue;
		x = a[i].first;
		//std::cerr << x << ' ';
		p = std::upper_bound(d.begin(), d.end(), x) - d.begin();
		if(d[p] > x) 
		{
			d[p] = x;
			ans = std::max(ans, p);
		}
	}
	
	return ans;
}

int main()
{
	freopen("input.txt", "rt", stdin);
	freopen("output.txt", "wt", stdout);
	
	int n, k, x;
	scanf("%d%d", &n, &k);
	
	for(int i = 0; i < n; i++)
	{
		scanf("%d", &x);
		a.push_back(std::make_pair(x, 0));
	}
	
	if(k == 1)
		SolveForOne();
	else
	{
		//k - 1 raz hodim, potom vozrast podposl
		int cur_house = 1;
		int tuda = 1;
		int ans = 0;
		
		for(int g = 1; g < k; g++)
		{
			if(tuda) // ->
			{
				for(int i = 0; i < n; i++)
				{
					x = a[i].first;
					if(x == cur_house) 
					{
						cur_house++;
						ans++;
						a[i].second = 1;
					}
				}
			}
			else // <-
			{
				for(int i = n - 1; i >= 0; i--)
				{
					x = a[i].first;
					if(x == cur_house) 
					{
						cur_house++;
						ans++;
						a[i].second = 1;
					}
				}
			}
			
			tuda ^= 1;
		}
		
		if(!tuda)
		{
			std::reverse(a.begin(), a.end());
		}
		ans += SolveVozrPodposl();
		printf("%d\n", ans);
	}
	
	return 0;
}
