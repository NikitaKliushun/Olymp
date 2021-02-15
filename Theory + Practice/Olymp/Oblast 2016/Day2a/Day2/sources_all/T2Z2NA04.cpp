//Baliuk Igor Alekseevich, Myadel, 8 A, zadacha - 2

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <fstream>

using namespace std;

int size_m, size_n;
bool isit = 1;
long long block[3010];
vector <long long> peds(1);
vector <long long> sum(1);
vector <long long> height(1);
vector <int> result(1);

ifstream fin;
ofstream fout;

int search(long long digit);

int main()
{
	int ii, jj;
	
	fin.open("input.txt");
	fout.open("output.txt");
	
	fin >> size_m >> size_n;
	
	height.resize(size_m + 10);
	result.resize(size_m + 10);
	peds.resize(size_n + 10);
	sum.resize(size_m + 10);
	
	for (ii = 1; ii <= size_m; ii++)
	{
		fin >> height[ii];
	}
		
	for (ii = 0; ii < size_n; ii++)
	{
		fin >> block[ii];
		
		peds[ii] = block[ii];
	}
	
	sort(block, block + size_n);
	
	sum[0] = block[0] + height[1];
	result[0] = search(block[0]);
	block[0] = -2;
	
	for (ii = 2; ii <= size_m; ii++)
	{
		for (jj = 1; jj < size_n; jj++)
		{
			if ((block[jj] > -2) && ((height[ii] + block[jj]) > sum[ii - 2]))
			{
				result[ii - 1] = search(block[jj]);
				sum[ii - 1] = block[jj] + height[ii];
				
				block[jj] = -2;
				
				break;
			}
		}
		
		if (result[ii - 1] == 0)
		{
			isit = 0;
			break;
		}
	}
	
	if (isit)
	{
		fout << result[0];
		
		for (ii = 1; ii < size_m; ii++)
			fout << " " << result[ii];
	}
	else
		fout << "-1";
		
	fin.close();
	fout.close();
}

int search(long long digit)
{
	int ii;
	
	for (ii = 0; ii < size_n; ii++)
	{
		if (peds[ii] == digit)
		{
			peds[ii] = -2;
			
			return (ii + 1);
		}
	}
}

