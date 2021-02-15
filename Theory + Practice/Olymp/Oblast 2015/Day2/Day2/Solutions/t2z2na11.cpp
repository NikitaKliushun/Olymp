//Rudzko Jan Wiaczaslawawicz, MGOL, 10 klass, zadacza 2
#include <fstream>
#include <algorithm>
#include <cmath>

template<class T>
T GetMin(T a, T b)
{
	return a < b ? a : b;
}

bool IsCub(unsigned long long x)
{
	unsigned long long r = (unsigned long long)(powl(x, 1.0/3.0) + 0.5);
	
	return ((r * r * r) == x);
}

bool IsPrime(unsigned long long x)
{
	unsigned long long y = x;
	for(unsigned long long j = 2; j * j <= x; j++)
	{
		if(y % j == 0)
		{
			return false;
		}
	}
	return true;
}

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	unsigned long long d, a;
	fin >> d;
	
	a = d;
	
	unsigned long long i = 1;
	bool bIsPrime = true;
	
	if(IsCub(d))
	{
		fout << '1';
		goto l2;
	}
	
	unsigned long long z, p, o;
	for(unsigned long long j = 2; j * j <= a; j++)
	{
		//std::cout << "j = " << j << ',' << ' ';
		if(d % j == 0)
		{
			bIsPrime = false;
			z = d / j;
			p = 0;
			while(d % j == 0)
			{
				d /= j;
				p++;
			}
			
			o = 0;
			for(; o < 3 - (p % 3); o++)
			{
				i *= j;
			}
			
			//std::cout << "p = " << p << ", ";
			if(z != 1 && IsPrime(z) && z != j)
			{
				//std::cout << "z = " << z << ' ';
				p = 0;
				while(d % z == 0)
				{
					d /= z;
					p++;
				}
				//std::cout << "p = " << p;
				o = 0;
				for(; o < 3 - (p % 3); o++)
				{	
					i *= z;
				}
			}
			//std::cout << z << ' ';
		}
	}
	
	/*while(true)
	{
		if(IsCub(d))
		{
			goto l1;
		}
		
		d += a;
		i++;
	}*/
	
	l1:
	
	if(bIsPrime)
		fout << a * a;
	else	
		fout << i;
	
	l2:	
	fin.close();
	fout.close();
	return 0;
}
