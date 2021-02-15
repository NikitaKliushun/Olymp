#include<fstream>
#include<cmath>

using namespace std;

int main()
{
	ifstream in("input.txt");
	ofstream out("output.txt");
	long a,a2;
	long b,b2;
	long answer = 0;
	bool sw = true;
	in >> a >> b;
	if (b>a)
	{
		swap(a,b);
	}
	a2=a;
	b2=b;
	int x=0;
	int y=0;
	bool map[(int)sqrt(a+b)+2][(int)sqrt(a+b)+2];
	int x2 = x;
	int y2 = y;
	while(b2>0)
	{
		map[x][y]=sw;
		x++;
		if(sw==true)
		{
			a2--;
			sw=false;
		}
		else
		{
			b2--;
			sw=true;
		}
		answer++;
	}
	if(a2!=0)
	{
		map[x][y]=sw;
		x++;
		if(sw==true)
		{
			a2--;
			sw=false;
		}
		else
		{
			b2--;
			sw=true;
		}
		answer++;
	}
	
	x2=x;
	y2=y+1;
	while(x2/2>=y2*2)
	{
		x2/=2;
		y2*=2;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/3>=y2*3) //  �� ������� ��) 
	{
		x2/=3;
		y2*=3;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/5>=y2*5) //  �� ������� ��) 
	{
		x2/=5;
		y2*=5;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/7>=y2*7) //  �� ������� ��) 
	{
		x2/=7;
		y2*=7;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/11>=y2*11) //   �� ������� ��) 
	{
		x2/=11;
		y2*=11;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/13>=y2*13) //   �� ������� ��) 
	{
		x2/=13;
		y2*=13;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/17>=y2*17) //   �� ������� ��) 
	{
		x2/=17;
		y2*=17;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/19>=y2*19) //  �� ������� ��) 
	{
		x2/=19;
		y2*=19;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/23>=y2*23) //  �� ������� ��) 
	{
		x2/=23;
		y2*=23;
		answer++;
	}
	x2 = x;
	y2 = y+1;
	while(x2/29>=y2*29) //  �� ������� ��) 
	{
		x2/=29;
		y2*=29;
		answer++;
	}
	while(x2/47>=y2*47) //  �� ������� ��) 
	{
		x2/=47;
		y2*=47;
		answer++;
	}
	
	out << answer;
	
	return 0;
}

