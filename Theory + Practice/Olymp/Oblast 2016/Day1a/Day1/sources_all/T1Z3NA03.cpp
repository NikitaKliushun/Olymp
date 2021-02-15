//Rudzko Jan Wiaczaslawawicz, Minski Dziarzauny Ablasny Licej, zadacza 3

#include <fstream>
#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

#define MAXN 100007

int number_begin[107], number_end[107];

int Get(int d)
{
	for(int i = 1; i <= 100; i++)
	{
		if(number_begin[i] == d) return i;
	}
	return 0;
}

std::vector<std::pair<int, int> > g[1007];
//long long mat[107][107];
const long long inf = 1000000000000000000ll;

int dist[1007];

void Dfs(int x)
{
	int to, len;
	for(size_t i = 0; i < g[x].size(); i++)
	{
		to = g[x][i].first;
		len = g[x][i].second;
		
		if(dist[to] < dist[x] + len)
		{
			dist[to] = dist[x] + len;
			Dfs(to);
		}
	}
}

struct Otrezok
{
	int l, r, size;
	
	Otrezok()
	{
		l = r = size = 0;
	}
	
	Otrezok(int _l, int _r, int _size)
	{
		l = _l;
		r = _r;
		size = _size;
	}
};

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	int n, x;
	fin >> n;
	
	int * sizea = new int[1007];
	for(int a = 1; a <= 100; a++) sizea[a] = 0;
	
	for(int i = 1; i <= n; i++)
	{
		fin >> x;
		sizea[x]++;
		if(number_begin[x] == 0) number_begin[x] = i;
		else number_end[x] = i;
	}
	
	//for(int i = 0; i < 107; i++)
	//	for(int j = 0; j < 107; j++)
	//		mat[i][j] = inf;
	
	std::vector<Otrezok> otr;
	int li, ri, lj, rj;
	for(int a = 1; a <= 100; a++)
	{
		if(number_begin[a] == 0) continue;
		li = number_begin[a];
		ri = number_end[a];
		if(ri == 0) ri = li;
		
		otr.push_back(Otrezok(li, ri, sizea[a]));
	}
	
	for(size_t i = 0; i < otr.size(); i++)
	{
		li = otr[i].l;
		ri = otr[i].r;
		g[0].push_back(std::make_pair((int)i + 1, otr[i].size));
		//std::cout << "Have " << li << " " << ri << std::endl;
		//mat[0][(int)i + 1] = -(ri - li + 1);
		for(size_t j = 0; j < otr.size(); j++)
		{
			lj = otr[j].l;
			rj = otr[j].r;
			//std::cout << " Have " << lj << " " << rj << std::endl;
			
			if(ri < lj)
			{
				//mat[(int)i + 1][(int)j + 1] = -(rj - lj + 1);
				
				//std::cout << "From " << Get(li) << " -> " << Get(lj) 
				//<< " " << rj - lj + 1 << std::endl;
				g[(int)i + 1].push_back(std::make_pair((int)j + 1, otr[j].size));
			}
		}
	}
	
	Dfs(0);
	
	int num = otr.size();
	int ans = 0;
	for(int i = 1; i <= num; i++)
	{
		if(dist[i] > ans) ans = dist[i];
	}
	
	fout << ans << std::endl;
	/*
	int num = otr.size();
	
	for(int k = 0; k <= num; k++)
		for(int i = 0; i <= num; i++)
			for(int j = 0; j <= num; j++)
				mat[i][j] = std::min(mat[i][k], mat[k][j]);
			
	for(int i = 0; i <= num; i++)
	{
		for(int j = 0; j <= num; j++)
			std::cout << mat[i][j] << ' ';
		std::cout << "\n";
	}*/
	
	fin.close();
	fout.close();
	
	return 0;
}
