#include<fstream>
#include<string>
using namespace std;


int main()
{
	ifstream in ("input.txt");
	ofstream out ("output.txt");
	long n;
	long m;
	in >> n;
	in >> m;
	long as[n];
	long bs[m];
	string a = "";
	string b = "";
	char c = '1';
	long i;
	long k;
	bool k2 = true;
	long l = 0;
	int s = 0;
	
	

	
	
	for ( i=0 ; i<n ; i++)
	{
		in >> as[i];
	}
	
	for ( i=0 ; i<m ; i++)
	{
		in >> bs[i];
	}
	
	for ( i=0 ; i<n ; i++)
	{
		for ( k=0 ; k<as[i] ; k++)
		{
			a += c;
		}
		if  ( c == '0' )
		{
			c = '1';
		}
		else
		{
			c = '0';
		}
	}
	
	c = '1';
	
	for ( i=0 ; i<m ; i++)
	{
		for ( k=0 ; k<bs[i] ; k++)
		{
			b += c;
		}
		if  ( c == '0' )
		{
			c = '1';
		}
		else
		{
			c = '0';
		}
	}
	
	if (a.size() > b.size())
	{
		for ( i=a.size()-1, k=b.size()-1; k>=0; i--, k--)
		{
			if((a[i] == '0' && b[k]=='0') || (a[i] == '1' && b[k]=='1'))
			{
				a[i] = '0';
			}
			else
			{
				a[i] = '1';
			}
			if((a[i] == '0' && b[k]=='0') || (a[i] == '1' && b[k]=='1'))
			{
				b[i] = '0';
				c = '0';
			}
			else
			{
				b[i] = '1';
				c = '1';
			}

		}
		
		
		// не пинайте пж за дублирование
		k = 0;
		k2 = true;
		for( i=0; i<a.size(); i++)
		{
			if (( a[i]=='1' && k2==true) || (a[i]=='0' && k2==false))
			{
				l++;
			}
			else
			{
				if (l!=0)
				{
					s++;
					l=1;
				}
			}
			if ( a[i]=='1')
			{
				k2 = true;
			}
			else
			{
				if (l!=0)
				{
					k2 = false;
				}
				
			} 
		}
		
		
		// зжатие // не пинайте пж за дублирование
		s++;
		l=0;
		int m[s];
		k = 0;
		k2 = true;
		for( i=0; i<a.size(); i++)
		{
			if (( a[i]=='1' && k2==true) || (a[i]=='0' && k2==false))
			{
				l++;
			}
			else
			{
				if (l!=0)
				{
					m[k] = l;
					k++;
					l=1;
				}
			}
			if ( a[i]=='1')
			{
				k2 = true;
			}
			else
			{
				if (l!=0)
				{
					k2 = false;
				}
				
			} 
		}
		m[s-1] = l;
		l=0;
		for ( i  = 0; i < s; i++)
		{
			out << m[i] << " ";
		}
		
	}
	else
	{
		for ( i=a.size()-1, k=b.size()-1; i>=0; i--, k--)
		{
			if((a[i] == '0' && b[k]=='0') || (a[i] == '1' && b[k]=='1'))
			{
				b[k] = '0';
				c = '0';
			}
			else
			{
				b[k] = '1';
				c = '1';
			}

		}
		
		// не пинайте пж за дублирование
		for( i=0; i<b.size(); i++)
		{
			if (( b[i]=='1' && k2==true) || (b[i]=='0' && k2==false))
			{
				l++;
			}
			else
			{
				if (l!=0)
				{
					s++;
					l=1;
				}
			}
			if ( b[i]=='1')
			{
				k2 = true;
			}
			else
			{
				if (l!=0)
				{
					k2 = false;
				}
				
			} 
		}
		
		
		s++;
		l=0;
		int m[s];
		k = 0;
		k2 = true;
		
		// сжатие // не пинайте пж за дублирование
		for( i=0; i<b.size(); i++)
		{
			if (( b[i]=='1' && k2==true) || (b[i]=='0' && k2==false))
			{
				l++;
			}
			else
			{
				if (l!=0)
				{
					m[k] = l;
					k++;
					l=1;
				}
			}
			if ( b[i]=='1')
			{
				k2 = true;
			}
			else
			{
				if (l!=0)
				{
					k2 = false;
				}
				
			} 
		}
		
		
		m[s-1] = l;
		l=0;
		for ( i  = 0; i < s; i++)
		{
			out << m[i] << " ";
		}

	} 
	

	return 0;
}
