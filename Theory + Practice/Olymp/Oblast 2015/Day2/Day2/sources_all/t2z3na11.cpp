//Rudzko Jan Wiaczaslawawicz, MGOL, 10 klass, zadacza 3
#include <fstream>
#include <iostream>
#include <algorithm>

int GetNmb1(int a, int b)
{
	if(a > b)
	{
		std::swap(a, b);
		//return GetNmb1(a, b);
	}
	
	if(a == b)
		return 0;
		
	if(a == 0 || b == 0)
		return -1;
		
	if(a == 1 && b == 7)
		return 2;
		
	if(a == 1 || b == 1)
		return -1;
		
	if(a == 2 && b == 3)
		return 2;	
	if(a == 3 && b == 2)
		return 2;
			
	if(a == 2 && b == 4)
		return 3;
	if(a == 2)
		return -1;	
			
	if(a == 3 && b == 4)
		return 2;
		
	if(a == 5 && b == 6)
		return 2;
	if(a == 5 && b == 9)
		return 2;
	if(a == 6 && b == 9)
		return 4;
		
	return -1;
}

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	int n, k, x;
	fin >> n >> k;
	fin >> x;
	
	long l = 0;
	
	for(int i = 0; i < 10; i++)	
	{
		if(GetNmb1(x, i) != -1 && GetNmb1(x, i) <= k)
			l++;
	}
	
	fout << l;
		
	fin.close();
	fout.close();
	return 0;
}
