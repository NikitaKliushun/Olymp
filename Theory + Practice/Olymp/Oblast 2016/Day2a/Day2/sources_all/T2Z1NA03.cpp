//Rudzko Jan Wiaczaslawawicz, Minski Dziarzauny Ablasny Licej, zadacza 1

#include <iostream>
#include <fstream>

/*

12 7
31 29 31 30 31 30 31 31 30 31 30 31
5 5 13

*/

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	int m, w, s, b, t, days, cur_b;
	fin >> m >> w;
	
	int *d = new int[m + 7];
	for(int i = 0; i < m; i++)
	{
		fin >> d[i];
	}
	
	fin >> s >> b >> t;
	int ans = 0;
	
	s--; b--; //zero indexed
	
	for(int i = 0; i < m; i++)
	{
		days = d[i];
		if(t <= days)
		{
			cur_b = (s + t - 1) % w;
			//std::cout << "In monate " << i + 1 << t 
			if(cur_b == b) ans++;
		}
		//s = (s + days - 1) % w;
		s = (s + days) % w;
	}
	
	fout << ans << std::endl;
	
	fin.close();
	fout.close();
	
	return 0;
}
