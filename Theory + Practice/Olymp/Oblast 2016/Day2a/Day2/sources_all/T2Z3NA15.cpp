#include <iostream>
#include <fstream>
using namespace std;
int d;

int main()
{
	int n, k;
	ifstream fin("input.txt");
	ofstream fout("output.txt");
	fin >> n >> k;
	int *a = new int[n];
	int i, j, l, o, max, mi, ma;
	for (i = 0; i < n; i++)
	{
		fin >> a[i];
	}
	max = 0;
	for (i = 0; i < n; i++)
	{
		if (max < a[i])
		{
			l = 1;//berem
			o = n - i - 1;//ne berem
			//schitaem o
			mi = 0;
			ma = 0;
			for (j = i; j < n - 1; j++)
			{
				if (a[j] < a[j + 1])
				{
					mi++;
				}
				else
				{
					if (ma < mi)
					{
						ma = mi;
					}
					mi = 0;
				}
			}
			//o = ma;
			for (j = i; j < n; j++)
			{
				if (a[j] > a[i])
				{
					l++;
					//cout << a[j] << ' ' << a[i] << ' - ' << l << endl;
				}
			}
			o -= l;
			//cout << l << ' ' << o << ' ' << max << endl;
			if (l > o) //vsetaki berem
			{
				//cout << a[i] << endl;
				max = a[i];
				d++;
			}
		}
		//system("pause");
	}
	fout << d << endl;
	//fout << n << endl;
	fin.close();
	fout.close();
	return 0;
}
