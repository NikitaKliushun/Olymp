//Rudzko Jan Wiaczaslawawicz, Minski Dziarzauny Ablasny Licej, zadacza 4

#include <iostream>
#include <fstream>
#include <vector>
#include <fstream>

std::vector<int> disk[2007];

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	int n, k, u;
	fin >> n >> k;
	
	
	for(int i = 0; i < n; i++)
	{
		for(int j = 0; j < k; j++)
		{
			fin >> u;
			disk[i].push_back(u);
		}
	}
	
	int t1 = 10000000, t2 = 10000000;
	
	if(n > 2)
	{
		fout << "-1" << std::endl;
		goto l_exit;
	}
	
	for(int i = 0; i < k; i++)
	{
		for(int j = 0; j < k; j++)
		{
			if(disk[0][j] == disk[1][j]) t1 = std::min(t1, i);
		}
		
		u = disk[0][k - 1];
		disk[0].pop_back();
		disk[0].insert(disk[0].begin(), u);
	}
	
	for(int i = 0; i < k; i++)
	{
		for(int j = 0; j < k; j++)
		{
			if(disk[0][j] == disk[1][j]) t2 = std::min(t2, i);
		}
		
		u = disk[0][0];
		disk[0].erase(disk[0].begin());
		disk[0].push_back(u);
	}
	
	if(t1 == 10000000 && t2 == 10000000)
		fout << "-1" << std::endl;
	else
		fout << std::min(t1, t2) << std::endl;

l_exit:
	fin.close();
	fout.close();
	
	return 0;
}
