#include <iostream>
#include <fstream>
using namespace std;

int main()
{
	ifstream fin("input.txt");
	ofstream fout("output.txt");
	int k, y;
	int p = 0;
	int m[30];
	char c[30], d[30];
	int s[30];
	int i, j, l, o, q;
	bool b;
	fin >> k >> y;
	o = 0;
	s[0] = 1;
	for (i = 1; i < 30; i++) s[i] = s[i - 1] * 2;
	for (i = 29; i >= 0; i--)
	{
		d [i] = 1;
		c[i] = y / s[i] % 2;
		if (d[i] != c[i])
		{
			m[p] = i;
			p++;
		}
		//cout << int(c[i]) << endl;
	}
	//for (i = 0; i < p; i++)
	//	cout << m[i] << ' ';
	//cout << endl;
	if (p + 1 < k)
	{
		fout << - 1 << endl;
		goto l1;
	}
	if (k - 1)
	{
		fout << 1073741823 << ' ';
		k--;
	}
	while (k)
	{
		b = 0;
		k--;
		//cout << k << endl;
		if (k)
		{
			if (o < p)
			{
				d[m[o]] = 0;
				o++;
			}
		}
		else
		{
			fout << y;
			fout << ' ';
			b = 1;
		}
		q = 0;
		for (i = 0; i < 29; i++)
		{
			q += d[i] * s[i];
		}
		if (b == 0)
			fout << q << ' ';
	}
l1:
	fin.close();
	fout.close();
	return 0;
}
