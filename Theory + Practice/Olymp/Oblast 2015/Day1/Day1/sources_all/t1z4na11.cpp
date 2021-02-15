//Rudzko Jan Wiaczeslawowicz, MGOL, 10 klass, zadacza 4
#include <fstream>
#include <iostream>
#include <algorithm>
#include <vector>
#include <set>
#include <map>
#include <climits>

long N;

std::ofstream fout("output.txt");
	
std::vector<std::pair<int, unsigned long long> > graf[100005];

unsigned long long aDist[100005];

struct Comparator
{
	bool operator () (const int & a, const int & b)
	{
		unsigned long long d1 = aDist[a];
		unsigned long long d2 = aDist[b];
		return d1 < d2;
	}
};

unsigned long long Dijkstra()
{
	std::set<int, Comparator> s;
	for(int i = 0; i <= N; i++)
	{
		aDist[i] = ULONG_LONG_MAX;
	}
	aDist[1] = 0;
	
	for(int i = 1; i <= N; i++)
	{
		s.insert(i);
	}
	
	while(!s.empty())
	{
		int f = *s.begin();
		s.erase(s.begin());
		//std::cout << f;
		
		for(size_t i = 0; i < graf[f].size(); i++)
		{
			int to = graf[f][i].first, di = graf[f][i].second;
			if(di + aDist[f] < aDist[to])
			{
				s.erase(to);
				aDist[to] = di + aDist[f];
				s.insert(to);
			}
		}
	}
	/*for(int i = 0; i <= N; i++)
	{
		aDist[i] = 0x7FFFFFF;
	}
	aDist[1] = 0;
	
	bool* aV = new bool[N + 1];
	for(int i = 0; i <= N; i++)
	{
		aV[i] = false;
	}
	
	for(int i = 1; i <= N; i++)
	{
		fout << aDist[i] << ' ';
	}
	
	while(true)
	{
		int iCurV = 0;
		for(int i = 1; i <= N; i++)
		{
			if(aDist[i] < aDist[iCurV] && !aV[i])
				iCurV = i;
		}
		
		if(iCurV == 0)
			break;
		
		aV[iCurV] = true;
		
		for(size_t i = 0; i < graf[iCurV].size(); i++)
		{
			int to = graf[iCurV][i].first, di = graf[iCurV][i].second;
			if(di + aDist[iCurV] < aDist[to] && !aV[to])
			{
				aDist[to] = di + aDist[iCurV];
			}
		}
	}*/
	
	int ix = 1;
	for(int i = 2; i <= N; i++)
	{
		if(aDist[ix] < aDist[i])
			ix = i;
		//fout << aDist[i] << ' ';
	}
	return aDist[ix];
}

template<class T>
T GetMin(T a, T b)
{
	return a < b ? a : b;
}

template<class T>
T GetMax(T a, T b)
{
	return a > b ? a : b;
}

int main()
{
	//std::cout << 128*1024*1024;
	
	std::ifstream fin("input.txt");
	
	fin >> N;
	
	long x, y, z;
	
	std::map<int, std::vector<std::pair<unsigned long long, long> > > m;
	
	for(int i = 0; i < N - 1; i++)
	{
		fin >> x >> y >> z;
		m[x].push_back(std::make_pair(z, y));
	}
	
	std::map<int, std::vector<std::pair<unsigned long long, long> > >::iterator it;
	
	for(it = m.begin(); it != m.end(); it++)
	{
		std::vector<std::pair<unsigned long long, long> > v = it->second;
		
		int ixMax = 0;
		for(int i = 1; i < v.size(); i++)
		{
			if(v[i] > v[ixMax])
			{
				ixMax = i;
			}
		}
		
		v[ixMax].first = 0ULL;
		//v.erase(v.begin() + ixMax);
		
		for(int i = 0; i < v.size(); i++)
		{
			graf[it->first].push_back(std::make_pair(v[i].second, v[i].first));
			graf[v[i].second].push_back(std::make_pair(it->first, v[i].first));
		}
	}
	
	//int max = 0;
	//for(int i = 1; i <= N; i++)
		//for(int j = 1; j <= N; j++)
		//{
			//if(j != i)
			//{
				//max = GetMax(max, Dijkstra(i));
			//}
		//}
		
	/*for(int j = 1; j <= N; j++)	
	{
		fout << j << ' ';
		for(int i = 0; i < graf[j].size(); i++)
		{
			int to = graf[j][i].first, di = graf[j][i].second;
			fout << '(' << to << " , " << di << ") "; 
		}
		fout << std::endl;
	}*/
	
	fout << Dijkstra();
	
	//for(int i = 1; i <= N; i++)
	//{
	//	fout << aDist[i] << ' ';
	//}
	
	fin.close();
	fout.close();
	return 0;
}
