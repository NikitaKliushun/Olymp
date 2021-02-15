#include <iostream>
#include <fstream>
using namespace std;

int k;

int main()
{
	char c[10][10];
	char st[10];
	int n;
	int t, r;
	char a;
	int i, j;
	ifstream fin("input.txt");
	ofstream fout("output.txt");
	for (i = 0; i < 10; i++)
	{
		fin >> st;
		for (j = 0; j < 10; j++)
		{
			c[i][j] = st[j];
			if (st[j] == '#') k++;
		}
	}
	fin >> n;
	for (i = 0; i < n; i++)
	{
		fin >> t >> a;
		t--;
		if (a < 'j')
		r = int(a) - 97;
		else r = 9;
		if (c[t][r] == '0')
		{
			fout << "HIT" << endl;
			goto l2;
		}
		if (c[t][r] == '#')
		{
			k--;
			c[t][r] = '0';
			if (k == 0) 
			{
				fout << "GAME OVER" << endl;
				goto l1;
			}
			else
			{
				if ((c[t-1][r] == '#') || (c[t+1][r] == '#') || (c[t][r-1] == '#') || (c[t][r+1] == '#'))
					fout << "HIT" << endl;
				else
					fout << "DEAD" << endl;
			}
		}
		else fout << "MISS" << endl;
	l2: t = 0;
	}
l1:
	fin.close();
	fout.close();
	return 0;
}
