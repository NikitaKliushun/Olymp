#include <iostream>
#include <fstream>
using namespace std;

int k;

int main()
{
	int m, w;
	int *d = new int[100000];
	int s, b, t;
	int tm, td, tw;
	int i, j;
	ifstream fin("input.txt");
	ofstream fout("output.txt");
	fin >> m >> w;
	for (i = 0; i < m; i++)
	{
		fin >> d[i];
	}
	fin >> s >> b >> t;
	tm = 0;
	td = 1;
	tw = s;
	//ishchem 1j den
	while (tw != b && tm < m)
	{
		if (tw > td)
		{
			j = w - tw + b;
		}
		else
		{
			j = b - tw;
		}
		td += j;
		tw = b;
		while (td > d[tm] && tm < m)
		{
			td -= d[tm];
			tm++;
		}
	}
	// teper' progonyaem po mesyacam
	while (tm < m)
	{
		if (td == t) k++;
		td += w;
		while (td > d[tm] && tm < m)
		{
			td -= d[tm];
			tm++;
		}
	}
	fout << k << endl;
	fin.close();
	fout.close();
	return 0;
}
