//Балюк Игорь Алексеевич, Мядель, 8 А, задача - 4.

#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <string>
#include <cmath>

using namespace std;

int size_n, size_k, sec = 0;
int ball[101][101];
int res[101];

ofstream fout;
ifstream fin;

bool check();

int main()
{
	int ii, jj, kk = 0;
	
	fout.open("output.txt");
	fin.open("input.txt");

	fin >> size_n >> size_k;
	
	res[0] = -1;
	
	if ((size_n > 100) | (size_k > 100))
		fout << "-1";
	else
	{
		for (ii = 0; ii < size_n; ii++)
		{
			for (jj = 0; jj < size_k; jj++)
			{
				fin >> ball[ii][jj];	
			}
			
			cout << endl;
		}
		
		if (check())
			fout << "0";
		else
		{
			if (size_n <= 2)
			{
				for (ii = 0; ii < size_k; ii++)
				{
					for (jj = 0; jj < size_k; jj++)
					{
						if (ball[0][ii] == ball[1][jj])
						{
							if ((size_k - abs(ii - jj)) < (abs(ii - jj)))
							{
								res[kk] = size_k - abs(ii - jj);
							}
							else
								res[kk] = abs(ii - jj);
								
							kk++;
						}
					}
				}
				
				sort(res, (res + kk));
			}
			
			fout << res[0];	
		}
	}
	
	fin.close();
	fout.close();
}

bool check()
{
	int ii, jj;
	bool result = 0;
	
	for (ii = 0; (ii < size_k) && (result == 0); ii++)
	{
		for (jj = 0; (jj < (size_n - 1)) && (result == 0); jj++)
		{
			if (ball[jj][ii] != ball[jj + 1][ii])
				break;
				
			if (jj == (size_n - 2))
				result = 1;
		}
	}
	
	if (size_k == 1)
		result = 1;
	
	return result;
}
