//Балюк Игорь Алексеевич, Мядель, 8 А, задача - 3.

#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <string>

using namespace std;

vector <int> a(101);
int size_n;
int count1 = 0;

ofstream fout;
ifstream fin;

bool srt();

int main()
{
	int ii;
	
	fout.open("output.txt");
	fin.open("input.txt");
	
	fin >> size_n;
	
	if (size_n > 100)
		fout << size_n;
	else
	{
		for (ii = 0; ii < size_n; ii++)
		{
			fin >> a[ii];
			
			if (a[ii] == 1)
				count1++;
		}
		

		if (srt())
			fout << size_n;
		else
		{
			if (count1 > (size_n - count1))
				fout << count1;
			else
				fout << (size_n - count1);
		}
	}
	
	fin.close();
	fout.close();
}

bool srt()
{
	int ii;
	bool is1 = 0, is2 = 0;
	
	if (a[0] == 1)
		is1 = 1;
	else
		is2 = 1;
		
	for (ii = 1; ii < size_n; ii++)
	{
		if (a[ii] != a[ii - 1])
		{
			if (is1 && is2)
				return 0;
			else
			{
				if (a[ii] == 1)
					is1 = 1;
				else
					is2 = 1;
			}
		}
	}
}
