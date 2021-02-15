//Rudzko Jan Wiaczeslawowicz, MGOL, 10 klass, zadacza 2
#include <fstream>
#include <iostream>
#include <algorithm>
#include <vector>

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

long long UseEvristic(long long x, long long y)
{
	if(x == 1 && y == 1)
			return 2;
	if(GetMin(x, y) == 1 && GetMax(x, y) == 2)
			return 3;
	if(GetMin(x, y) == 1 && GetMax(x, y) >= 3)
			return 3;
	if(x == y)
			return 2 + UseEvristic(x, y - 1) * (y - 1);
	else
			return 1 + UseEvristic(x, y - 1) * GetMax(x, y) / GetMin(x, y);
}

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	long long a, b;
	fin >> a >> b;
	
	if(GetMin(a, b) == 1)
	{
		if(a == 1 && b == 1)
			fout << 2;
		if(GetMin(a, b) == 1 && GetMax(a, b) == 2)
			fout << 3;
		if(GetMin(a, b) == 1 && GetMax(a, b) >= 3)
			fout << 3;
		goto l1;
	}
	
	fout << UseEvristic(a, b);
	
	l1:
	fin.close();
	fout.close();
	return 0;
}
