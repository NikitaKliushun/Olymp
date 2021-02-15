
// O( n ) solution
// Author: Nikita Lesnikov

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <iostream>
#include <fstream>

using namespace std;

typedef long long ll;

const	int	maxv		= 1001000;

int  n, m;
int  adj[ maxv ][ 2 ];
bool mark[ maxv ];
ll   sums[ maxv ];

void add_edge( int a, int b )
{
 	if (adj[ a ][ 0 ] == -1) adj[ a ][ 0 ] = b;
	else adj[ a ][ 1 ] = b;
}

int main()
{
	FILE *fi = fopen( "input.txt", "rt" );

	fscanf( fi, "%d%d", &n, &m );
	for (int i = 0; i < n; ++i)
		adj[ i ][ 0 ] = adj[ i ][ 1 ] = -1;

	while (m--)
	{
	 	int a, b; fscanf( fi, "%d%d", &a, &b ); a--, b--;
		add_edge( a, b );
		add_edge( b, a );
	}

	ll accum = 0;
	memset( mark, false, sizeof( mark ) );

	sums[ 0 ] = 0;
	for (ll i = 1; i <= n; ++i)
		sums[ i ] = sums[ i-1 ] + (i - 1) * (i - 2);

	for (int i = 0; i < n; ++i)
		if (!mark[ i ])
		{
		 	int prev  = -2;
			int cur   = i;
			int start = i;
			int cnt   = 0;

			for (;;) {

				++cnt;

				mark[ cur ] = true;

				int next = -2;
				for (int j = 0; j < 2; ++j)
					if (adj[ cur ][ j ] != prev && adj[ cur ][ j ] != -1)
						next = adj[ cur ][ j ];

				prev		= cur;

				ll oa = accum;
				if (next == -2)
				{
					accum += sums[ cnt ];

				 	break;
				}

				if (next == start)
				{
				    accum += ll( cnt ) * ll( cnt/2 ) * ll( cnt/2 - 1 ) / 2;

					break;         
				}

				cur = next;

			}
								

		}

	fclose( fi );

	ofstream fout( "output.txt" ); fout << accum << endl;

	return 0;
}
