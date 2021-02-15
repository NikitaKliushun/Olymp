// O( n ) solution
// Author: Nikita Lesnikov

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <algorithm>
#include <iostream>
#include <fstream>

using namespace std;

const	int	maxn			= 1001000;

int  n, k;
char s[ maxn ];

int	 mx;
int	 f[ maxn ];
int  c[ 256  ];

int main()
{
	FILE *fi = fopen( "input.txt", "rt" );
	fscanf( fi, "%d%d", &n, &k );
	fscanf( fi, "%s", s );
	fclose( fi );

	memset( f, 0, sizeof( f ) );
	memset( c, 0, sizeof( c ) );

	f[ 0 ] = 256, mx = 0;
	
	int j = 0;
	long long accum = 0;
	for (int i = 0; i < n; ++i) 
	{
		c[ s[ i ] ]++;
		f[ c[ s[ i ] ]   ]++;
		f[ c[ s[ i ] ]-1 ]--;

		mx = max( mx, c[ s[ i ] ] );

		while (mx > k)
		{
		 	c[ s[ j ] ]--;
			f[ c[ s[ j ] ]   ]++;
			f[ c[ s[ j ] ]+1 ]--;

			while (!f[ mx ]) --mx;
			++j;
		}

		accum += i+1-j;

	}

	fclose( fi );

	ofstream fout( "output.txt" ); fout << accum << endl;

	return 0;
}