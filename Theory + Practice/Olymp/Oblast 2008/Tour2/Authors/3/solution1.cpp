#include <iostream>
#include <fstream>

#include <queue>
#include <vector>
#include <algorithm>
using namespace std;

ifstream InF("input.txt");
ofstream OutF("output.txt");

#define MAXV 100010

vector <int> gr[MAXV];
bool was[MAXV];
queue <int> que;

void add2que(int ve,int &kv)
{
	was[ve] = true; 
	que.push(ve);
	kv++;
}

long long getSum(int num)
{
	return (long long)(num+1)*num / 2;
}

long long getCircle(int kv)
{
	long long cur = getSum((kv-1) / 2) * 2;
	if (kv % 2 == 0) cur += kv / 2;
	return cur * kv;
}

long long getChain(int kv)
{
	long long cur=0;
	for (int i=0;i<kv;i++) cur += getSum(i) + getSum(kv-i-1);
	return cur;
}

int main()
{
	int n, m;
	InF >> n >> m;

	memset(was, false, sizeof(was));
	for (int i=0;i<n;i++) gr[i].clear();

	for (int i=0;i<m;i++)
	{
		int v1,v2;
		InF >> v1 >> v2;
		v1--; v2--;

		gr[v1].push_back(v2);
		gr[v2].push_back(v1);
	}

	long long ans = 0;
	for (int i=0;i<n;i++)
	{
		if (!was[i])
		{
			while (!que.empty()) que.pop();
			int ke = 0, kv = 0;

			add2que(i,kv);
			while (!que.empty())
			{
				int curV = que.front();
				que.pop();

				for (int j=0;j<gr[curV].size();j++)
				{
					ke++;
					if (!was[gr[curV][j]])
						add2que(gr[curV][j],kv);
				}
			}

			if (kv == ke / 2)
				ans += getCircle(kv);
			else ans += getChain(kv);
			ans -= (long long)(kv)*(kv-1);
		}
	}
	OutF << ans << endl;
	return 0;
}
