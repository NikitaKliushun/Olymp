#include<fstream>
#include<cmath>
using namespace std;

int main()
{
	ifstream in("input.txt");
	ofstream out("output.txt");
	long a,d,i=1;
	long c1,c2;
	in >> a;
	d=a;
	c1 = cbrt(a)*1000000;
	c2 = cbrt(a);
	c2 *=1000000;
	if( c1==c2)
	{
		out << i;
		return 0; 
	}
	while(true){
		a+=d;
		i++;
		c1 = cbrt(a)*1000000;
		c2 = cbrt(a);
		c2 *=1000000;
		if( c1==c2)
		{
			out << i;
			return 0; 
		}
	}
	return 0;
}
