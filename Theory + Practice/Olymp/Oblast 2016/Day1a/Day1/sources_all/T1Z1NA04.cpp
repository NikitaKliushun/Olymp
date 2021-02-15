//Балюк Игорь Алексеевич, Мядель, 8 А, задача - 1.

#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <string>

using namespace std;

char map[10][10];
bool att[10][10];
int size_n, ships = 0;
vector <pair <int , int > > hits(110);

ofstream fout;
ifstream fin;

bool islast(int x, int y);
int main()
{
	int ii, jj;
	string tmp;
	char c;
	
	fin.open("input.txt");
	fout.open("output.txt");

	for (ii = 0; ii < 10; ii++)
	{
		for (jj = 0; jj < 10; jj++)
		{
			fin >> map[ii][jj];
			
			if (map[ii][jj] == '#')
			{
				att[ii][jj] = 1;
				ships++;
			}
			else
				att[ii][jj] = 0;
		}
	}

	tmp = "abcdefghik";
	
	fin >> size_n;
	
	for (ii = 0; ii < size_n; ii++)
	{
		fin >> hits[ii].first >> c;
		
		for (jj = 0; jj < 10; jj++)
		{
			if (c == tmp[jj])
				hits[ii].second = jj + 1;	
		}
	}
	
	for (ii = 0; (ii < size_n) && (ships > 0); ii++)
	{
		if (att[hits[ii].first - 1][hits[ii].second - 1] == 0)
			fout << "MISS" << endl;
		else
		{	
			if (islast((hits[ii].first - 1), (hits[ii].second - 1)))
			{
				ships--;
				
				if (ships > 0)
					fout << "DEAD" << endl;
				else
					fout << "GAME OVER";
			}
			else
			{
				fout << "HIT" << endl;
				ships--;	
			}
			
			att[hits[ii].first - 1][hits[ii].second - 1] = 0;
		}
	}

	fin.close();
	fout.close();
}

bool islast(int x, int y)
{
	bool result = 1;
	int ii;
	
	for (ii = (x - 1); (ii > 0) && (result); ii--)
	{
		if (map[ii][y] == '.')
			break;
			
		if (att[ii][y])
			result = 0;
	}
		
	for (ii = (x + 1); (ii < 10) && (result); ii++)
	{
		if (map[ii][y] == '.')
			break;
			
		if (att[ii][y])
			result = 0;
	}
	
	for (ii = (y - 1); (ii > 0) && (result); ii--)
	{
		if (map[x][ii] == '.')
			break;
			
		if (att[x][ii])
			result = 0;
	}

	for (ii = (y + 1); (ii < 10) && (result); ii++)
	{
		if (map[x][ii] == '.')
			break;
			
		if (att[x][ii])
			result = 0;
	}
	
	return result;
}

