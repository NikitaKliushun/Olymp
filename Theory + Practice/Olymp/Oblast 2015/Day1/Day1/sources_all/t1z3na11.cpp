//Rudzko Jan Wiaczeslawowicz, MGOL, 10 klass, zadacza 3
#include <fstream>
#include <algorithm>
#include <vector>

typedef unsigned long word;

word* aFirst;
word* aSecond;
long m, n, x;

template<class T>
T GetMin(T a, T b)
{
	return a < b ? a : b;
}

template<class T>
T GetMax(T a, T b)
{
	return a > b ? a : b;
}

void ReadFirst(std::ifstream & f)
{
	aFirst = new word[n + 1];
	aFirst[0] = 0; 
	
	for(long i = 1; i <= n; i++)
	{
		f >> x;
		aFirst[i] = x;
	}
}

void ReadSecond(std::ifstream & f)
{
	aSecond = new word[m + 1];
	aSecond[0] = 0; 
	
	for(long i = 1; i <= m; i++)
	{
		f >> x;
		aSecond[i] = x;
	}
}

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	long x;
	fin >> n >> m;
	
	ReadFirst(fin);
	ReadSecond(fin);
	
	long fiPos = n;
	long sePos = m;
	
	long* a = new long[100007];
	for(int i = 0; i < 100007; i++)
	{
		a[i] = 0;
	}
	
	long pos = -1, bpos;
	char is1 = 0;
	long num;
	while(1)
	{
		is1 = 0;
		if(fiPos & 1)
			is1++;
		if(sePos & 1)
			is1++;
			
		num = GetMin(aFirst[fiPos], aSecond[sePos]);
		
		aFirst[fiPos] -= num;
		aSecond[sePos] -= num;
		
		if(is1 == 1)
		{
			if(pos == -1)
			{
				pos = 100005;
				bpos = 100005;
			}
			
			if((pos & 1) == 0)
				pos--;
			a[pos] += num;
			
			//std::cout << "Pos " << pos << " Value " << a[pos] << std::endl;
			//for(int i = 0; i < num; i++)
			//	fout << 1;
		}
		else
		{
			if(pos == -1)
			{
				pos = 100004;
				bpos = 100004;
			}
			if((pos & 1) != 0)
				pos--;
			a[pos] += num;
			
			//for(int i = 0; i < num; i++)
			//	fout << 0;
		}
		
		//std::cout << "Pos " << pos << " Value " << a[pos] << std::endl;
		//std::cout << "fiPos " << fiPos << std::endl;
		
		if(aFirst[fiPos] == 0) fiPos--;
		if(aSecond[sePos] == 0) sePos--;
		
		if(fiPos == 0) break;
		if(sePos == 0) break;
	}
	
	//std::cout << "LOOped\n";
	
	while(aFirst[1] != 0) 
	{
		num = aFirst[fiPos];
		aFirst[fiPos] = 0;
		//for(int i = 0; i < num; i++)
		//		fout << 1;
		//if((pos & 1) == 0)
		//	pos--;
		if(fiPos & 1)
		{
			if((pos & 1) == 0)
				pos--;
			a[pos] += num;
		}
		else
		{
			if((pos & 1) != 0)
				pos--;
			a[pos] += num;
		}
		
		fiPos--;
		
		
		//std::cout << "Pos " << pos << " Value " << a[pos] << std::endl;
	}
	while(aSecond[1] != 0)
	{
		num = aSecond[sePos];
		//for(int i = 0; i < num; i++)
		//		fout << 1;
		
		//if((pos & 1) == 0)
		//	pos--;
				
		//a[pos] += num;
		
		aSecond[sePos] = 0;
		if(sePos & 1)
		{
			if((pos & 1) == 0)
				pos--;
			a[pos] += num;
		}
		else
		{
			if((pos & 1) != 0)
				pos--;
			a[pos] += num;
		}
		
		sePos--;
		
		//std::cout << "Pos " << pos << " Value " << a[pos] << std::endl;
	}
	
	//std::cout << pos;
	
	if((pos & 1) == 0)
		pos++;
		
		
	for(int i = pos; i <= bpos; i++)
	{
		fout << a[i] << ' ';
	}
	/*std::string s1, s2;
	for(long i = 1; i <= n; i++)
	{
		fin >> x;
		if(i & 1)
		{
			for(int j = 0; j < x; j++)
			{
				s1.push_back('1');
			}
		}
		else
		{
			for(int j = 0; j < x; j++)
			{
				s1.push_back('0');
			}
		}
	}
	
	for(long i = 1; i <= m; i++)
	{
		fin >> x;
		if(i & 1)
		{
			for(int j = 0; j < x; j++)
			{
				s2.push_back('1');
			}
		}
		else
		{
			for(int j = 0; j < x; j++)
			{
				s2.push_back('0');
			}
		}
	}*/
	
	//fout << s1 << std::endl << s2;
	
	fin.close();
	fout.close();
	return 0;
}
