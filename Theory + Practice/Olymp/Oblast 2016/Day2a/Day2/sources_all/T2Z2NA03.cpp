//Rudzko Jan Wiaczaslawawicz, Minski Dziarzauny Ablasny Licej, zadacza 2

#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <queue>

//std::vector<int> g[3007];

const int inf = 2000000011;

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	int m, n, cur;
	fin >> m >> n;
	
	int *h = new int[m + 7];
	int *b = new int[n + 7];
	for(int i = 0; i < m; i++) fin >> h[i];
	for(int i = 0; i < n; i++) fin >> b[i];
	
	//std::cout << 128 * 1024 * 1025 << std::endl;
	//std::cout << sizeof(int) * 2 * 3007 * 3007 << std::endl;
	//dp[i][j] = u - i-yj czelovek na bloke j s obszcim rostom u
	//dop[i][j] = k - i-yj czelovek na bloke j dopolnil (i-1)-ogo, kotoryj stoit na posicii k
	
	int ** dp = new int*[m];
	int ** dop = new int*[m];
	int *  min = new int[n];
	int *  minpos = new int[n];
	
	dp[0] = new int[n];
	dop[0] = new int[n];
	for(int j = 0; j < n; j++) //baza dinamiki
		dp[0][j] = h[0] + b[j];
	for(int j = 0; j < n; j++) //baza dinamiki
		dop[0][j] = -1;
	min[0] = dp[0][0];
	minpos[0] = 0;
	
	for(int j = 1; j < n; j++) //baza dinamiki
		if(dp[0][j] < min[j - 1])
		{
			min[j] = dp[0][j];
			minpos[j] = j;
		}
		else
		{
			min[j] = min[j - 1];
			minpos[j] = minpos[j - 1];
		}
	
	int u;
	for(int i = 1; i < m; i++)
	{
		dp[i] = new int[n];
		dop[i] = new int[n];
		for(int j = i; j < n; j++)
		{
			u = min[j - 1];
			if(h[i] + b[j] > u)
			{
				dp[i][j] = h[i] + b[j];
				dop[i][j] = minpos[j - 1];
			}
			else 
			{
				dp[i][j] = inf;
				dop[i][j] = -1;
			}
		}
		
		min[i] = dp[i][i];
		minpos[i] = i;
		
		for(int j = i + 1; j < n; j++) //baza dinamiki
			if(dp[i][j] < min[j - 1])
			{
				min[j] = dp[i][j];
				minpos[j] = j;
			}
			else
			{
				min[j] = min[j - 1];
				minpos[j] = minpos[j - 1];
			}
	}
	
	/*for(int i = 0; i < m; i++) 
	{
		for(int j = 0; j < n; j++)
		{
			if(dp[i][j] != inf && j >= i)
				std::cout << dp[i][j] << ' ';
			else
				std::cout << "00 ";
		}
		std::cout << std::endl;
	}*/
	
	std::vector<int> ans;
	
	int i = m - 1, j = n - 1;
	while(j >= i && i >= 0)
	{
		if(dp[i][j] != inf)
		{
			ans.push_back(j + 1);
			j = dop[i][j];
			i--;
		}
		else j--;
	}
	
	if((int)ans.size() == m)
	{
		std::reverse(ans.begin(), ans.end());
		for(size_t i = 0; i < ans.size(); i++)
		{
			fout << ans[i] << ' ';
		}
	}
	else
	{
		fout << -1 << std::endl;
	}
	
	
	fin.close();
	fout.close();
	
	return 0;
}
