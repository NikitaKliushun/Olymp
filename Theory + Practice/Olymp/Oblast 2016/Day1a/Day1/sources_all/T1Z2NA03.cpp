//Rudzko Jan Wiaczaslawawicz, Minski Dziarzauny Ablasny Licej, zadacza 2

#include <fstream>
#include <iostream>
#include <cstdio>
#include <vector>
#include <set>
//#include <bitset>

int main()
{
	//std::ifstream fin("input.txt");
	//std::ofstream fout("output.txt");
	freopen("input.txt", "rt", stdin);
	freopen("output.txt", "wt", stdout);
	
	int k, y;
	//std::set<int> set;
	//fin >> k >> y; 
	//std::cerr << (1 & 3 & 5 & 7 & 9 & 11 & 13 )<< std::endl;
	//std::cerr << std::bitset<10>(22) << std::endl;
	
	scanf("%d%d", &k, &y);
	
	int bin[100];
	for(int i = 0; i < 100; i++) bin[i] = 0;
	
	int base_number = 0, mask, cur, bit, u;
	std::vector<int> ans;
	std::vector<int> pos;
	
	if(y == 1 && k <= 3)
	{
		if(k == 1) printf("1\n");
		else if(k == 2) printf("3 5\n"); 
		else if(k == 3) printf("3 5 13\n"); 
		goto l_exit;
	}
	
	
	for(int t = 0; t < 30; t++)
	{
		mask = 1 << t;
		if(mask & y)
		{
			//base_number |= mask;
			//bin[t] = 1;
		}
		else
		{
			pos.push_back(t);
		}
	}
	
	//pos[i] = v i-yj bit maski nuzno pisac na pozicijy v
	base_number = y;
	ans.push_back(base_number);
	mask = 0;
	
	for(int i = 1; i < k; i++)
	{
		mask++;
		cur = base_number;
		
		//pos[i] = v i-yj bit maski nuzno pisac na pozicijy v
		for(int t = 0; t < 30; t++)
		{
			//bit = ((1 << t) & mask) ? 1 : 0;
			
			if((1 << t) & mask)
			{
				if(t >= (int)pos.size())
				{
					printf("-1\n");
					goto l_exit;
				}
				u = pos[t];
				cur |= (1 << u);
			}
		}
		ans.push_back(cur);
	}
	
	for(size_t i = 0; i < ans.size(); i++)
	{
		printf("%d ", ans[i]);
	}
	
l_exit:
	//fin.close();
	//fout.close();
	
	return 0;
}
