//Rudzko Jan Wiaczeslawowicz, MGOL, 10 klass, zadacza 1
#include <fstream>
#include <algorithm>
#include <vector>

typedef unsigned long ulong;

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	long n, k, x;
	fin >> n >> k;
	
	ulong aKonf[101];
	for(int i = 0; i < 101; i++)
	{
		aKonf[i] = 0;
	}
	
	for(int i = 0; i < n; i++)
	{
		fin >> x;
		aKonf[x]++;
	}
	
	/*int minIndex = 0;
	
	for(int i = 1; i < 101; i++)
	{
		if(aKonf[i] != 0)
			minIndex = i;
	}
	
	for(int i = minIndex; i < 101; i++)
	{
		if(aKonf[i] != 0)
		{
			if(aKonf[i] < aKonf[minIndex])
			{
				minIndex = i;
			}
		}
	}
	
	long iNumK_Type = aKonf[minIndex] / k;
	long iNumK = 0;
	
	for(int i = 1; i < 101; i++)
	{
		if(aKonf[i] != 0)
			iNumK += iNumK_Type;
	}*/
	long iNumK = 0;
	for(int i = 1; i < 101; i++)
	{
		if(aKonf[i] != 0)
			iNumK += aKonf[i] / k;
	}
	
	fout << iNumK << std::endl;
	
	if(iNumK == 0)
		goto l1;
	
	for(int i = 1; i < 101; i++)
	{
		if(aKonf[i] != 0)
		{
			x = aKonf[i] / k;
			for(long j = 0; j < x ; j++)
			{
				fout << i << ' ';
			}
		}
	}
	
	l1:
	fin.close();
	fout.close();
	return 0;
}
