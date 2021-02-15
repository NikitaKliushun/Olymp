//Baliuk Igor Alekseevich, Myadel, 8 A, zadacha - 3

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <fstream>

using namespace std;

int size_n, size_k;
vector <int> houses;
bool all = 1;

ifstream fin;
ofstream fout;

int main()
{
	int ii;
	
	fin.open("input.txt");
	fout.open("output.txt");
	
	fin >> size_n >> size_k;
	
	houses.resize(size_n);
	
	for (ii = 0; ii < size_n; ii++)
	{
		fin >> houses[ii];
		
		if (houses[ii] != (ii + 1))
			all = 0;
	}
	
	if (all)
		fout << size_n;
	else
		fout << "1";
		
	fin.close();
	fout.close();
}

