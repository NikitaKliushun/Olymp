//Baliuk Igor Alekseevich, Myadel, 8 A, zadacha - 1

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <fstream>
#include <cmath>

using namespace std;

int size_m, size_w, curday, piw, pim;
int result = 0;
vector <int> dim(100001);

ifstream fin;
ofstream fout;

int main()
{
	int ii, jj;
	
	fin.open("input.txt");
	fout.open("output.txt");
	
	fin >> size_m >> size_w;
	
	for (ii = 0; ii < size_m; ii++)
	{
		fin >> dim[ii];
		cout << dim[ii] << " ";
	}
		
	fin >> curday >> piw >> pim;
	
	for (ii = 0; ii < size_m; ii++)
	{
		for (jj = 1; jj <= dim[ii]; (jj++) && (curday++))
		{
			if (curday > size_w)
				curday = abs(size_w - curday);
					
			if ((curday == piw) && (jj == pim))
			{
				result++;
			}
		}
	}
	
	fout << result;
	
	fin.close();
	fout.close();
}
