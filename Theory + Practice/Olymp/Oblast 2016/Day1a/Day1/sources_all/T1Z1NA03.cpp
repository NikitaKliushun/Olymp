//Rudzko Jan Wiaczaslawawicz, Minski Dziarzauny Ablasny Licej, zadacza 1

#include <fstream>
#include <iostream>
#include <vector>
#include <string>

std::vector<std::string> field;
int used[10][10];
int ship[10][10];
int hodil[10][10];
int ship_hp[1007];
int k;

int CharToCoord(char c)
{
	//abcdefghijk
	switch(c)
	{
	case 'a': return 0;
	case 'b': return 1;
	case 'c': return 2;
	case 'd': return 3;
	case 'e': return 4;
	case 'f': return 5;
	case 'g': return 6;
	case 'h': return 7;
	case 'i': return 8;
	case 'k': return 9;
	default: return 10;
	}
}

const int dx[] = { 1, 0, -1, 0 };
const int dy[] = { 0, 1, 0, -1 };

void Dfs(int i, int j)
{
	used[i][j] = 1;
	ship[i][j] = k;
	ship_hp[k]++;
	//std::cout << "Dfs visit " << i << " " << j << "\n";
	int x, y;
	for(int q = 0; q < 4; q++)
	{
		x = i + dx[q];
		y = j + dy[q];
		
		if(x < 0 || x >= 10) goto l2;
		if(y < 0 || y >= 10) goto l2;
		if(!used[x][y] && field[x][y] == '#') Dfs(x, y);
		l2:;
	}
}

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	std::string str;
	for(int i = 0; i < 10; i++)
	{
		fin >> str;
		field.push_back(str);
	}
	
	k = 1;
	int total_hp = 0;
	
	for(int i = 0; i < 10; i++)
	{
		for(int j = 0; j < 10; j++)
		{
			if(field[i][j] == '#' && !used[i][j])
			{
				//std::cout << "Dfs begin\n";
				Dfs(i, j);
				//std::cout << "Dfs end\n";
				k++;
			}
			if(field[i][j] == '#') total_hp++;
		}
	}
	
	int n;
	fin >> n;
	
	int x, y, p;
	char c;
	for(int i = 0; i < n; i++)
	{
		fin >> x >> c;
		x--;
		y = CharToCoord(c);
		
		if(hodil[x][y]) 
		{
			fout << "MISS" << std::endl;
			continue;
		}
		
		hodil[x][y] = 1;
		
		if(field[x][y] == '.') 
		{
			fout << "MISS" << std::endl;
			continue;
		}
		
		p = ship[x][y];
		ship_hp[p]--;
		total_hp--;
		//std::cout << x << ' ' << y 
		//<< ' ' << p << " " << ship_hp[p] << "\n";
		if(total_hp == 0)
		{
			fout << "GAME OVER" << std::endl;
			goto l1;
		}
		else if(ship_hp[p] == 0)
		{
			fout << "DEAD" << std::endl;
		}
		else
		{
			fout << "HIT" << std::endl;
		}
	}
	
l1:
	fin.close();
	fout.close();
	
	return 0;
}
