#include <iostream>
#include <fstream>
#include <algorithm>
using namespace std;

bool isp[3000];
int rh[3000];

int main()
{
	int m , n;
	ifstream fin("input.txt");
	ofstream fout("output.txt");
	fin >> m >> n;
	int *h = new int [m];
	int *b = new int [n];
	int *b2 = new int [n];
	int *p = new int [n];
	int i, j, k = 0;
	for (i = 0; i < m; i++)
	{
		fin >> h[i];
	}
	for (i = 0; i < n; i++)
	{
		fin >> b[i];
		b2[i] = b[i];
	}
	sort(b2, b2 + n);
	//cout << endl;
	for (i = 0; i < n; i++)
	{
		for (j = 0; j < n; j++)
		if (isp[j] == 0)
		{
			if (b[i] == b2[j])
			{
				isp[j] = 1;
				p[j] = i + 1;
				goto l1;
			}
		}
	l1: k++;
	}
	for (i = 1; i < n; i++)
		isp[i] = 0;
	rh[0] = h[0] + b2[0];
	isp[0] = 1;
	fout << p[0] << ' ';
	for (i = 1; i < m; i++)
	{
		if (rh[i] < rh[i - 1])
			j = 1;
		while (true)
		{
			if (rh[i] <= rh[i - 1])
			{
				//cout << j << endl;
				//system("pause");
				if (j >= n)
				{
					fout.close();
					ofstream fileout("output.txt");
					fileout << -1 << endl;
					fileout.close();
					goto l2;
				}
				if (isp[j] == 0)
				{
					rh[i] = h[i] + b2[j];
					//cout << rh[i] << endl;
				}
				j++;
			}
			else
			{
				isp[j - 1] = 1;
				//cout << '!' << endl;
				goto l3;
			}
		}
	l3: 
		fout << p[j - 1] << ' ';
		//k--;
		//cout << j << endl;
		//system("pause");
	}
l2:
	fin.close();
	fout.close();
	return 0;
}
