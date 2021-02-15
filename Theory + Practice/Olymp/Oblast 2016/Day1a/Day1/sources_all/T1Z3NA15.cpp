#include <iostream>
#include <fstream>
using namespace std;

int c[101];
int k[101];
int vs; //vs = vsego

int main()
{
	ifstream fin("input.txt");
	ofstream fout("output.txt");
	int n;
	int max = 0, rs = 0; // rs = raznyh summa
	int *a = new int[100000];
	int *m[101];
	bool ch[101];
	int i, j, l;
	fin >> n;
	for (i = 0; i < n; i++)
	{
		fin >> a[i];
		c[a[i]]++;
	}
	for (i = 0; i < 101; i++)
	{
		m[i] = new int[c[i]];
		//cout << c[i] << endl;
	}
	for (i = 0; i < n; i++)
	{
		m[a[i]][k[a[i]]] = i;
		k[a[i]]++;
	}
	for (i = 0; i < 101; i++)
	{
		if (c[i] == 1) rs++;
	}
	//vse dannye est' reshaem
	max = rs;
	for (i = 1; i < 101; i++)
	{
		if (c[i] > 1)
		{
			//cout << i << endl;
			for (j = 0; j < 101; j++) ch[j] = 0;//chistim
			l = n;//l gotova
			//cout << m[i][0] +1 << endl;
			//cout << m[i][c[i] - 1] << endl;
			for (j = m[i][0] + 1; j < m[i][c[i] - 1]; j++)
			{
				if (a[j] != i)
				ch[a[j]] = 1;
				//cout << a[j] << endl;
			}
			for (j = 0; j < 101; j++)
			{
				if (ch[j]) l -= c[j];
			}
			if (l > max) max = l;
			//cout << l << endl;
			//system("pause");
		}
	}
	//cout << rs << endl;
	fout << max << endl;
	fin.close();
	fout.close();
	return 0;
}
