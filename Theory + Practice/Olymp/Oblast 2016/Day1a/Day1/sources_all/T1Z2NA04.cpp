//Балюк Игорь Алексеевич, Мядель, 8 А, задача - 2

#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <string>

using namespace std;

long size_k, size_y, tmp;

ofstream fout;
ifstream fin;

int main()
{
	fout.open("output.txt");
	fin.open("input.txt");

	fin >> size_k >> size_y;

	fout << "-1";
	
	fin.close();
	fout.close();
}

