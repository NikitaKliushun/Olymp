// O( N log N ) solution
// Author: Nikita Lesnikov

#include <cstdio>
#include <cstdlib>
#include <cstring>

const	int	maxn		= 100 * 1000;

int		n, m;

int		last[ maxn+1 ];
int		mark[ maxn+1 ];
int		summ[ maxn+1 ];

inline int leftsumm( int *a, int cur )
{
 	int accum = 0;
	
	while (cur) accum += a[ cur ], cur &= cur-1;
	return accum;
}

inline int range_query( int *a, int l, int r )
{
 	return leftsumm( a, r ) - leftsumm( a, l-1 );
}

inline int increment( int *a, int n, int cur, int amount )
{
	while (cur <= n)
		a[ cur ] += amount,
		cur += ((cur ^ (cur-1)) & cur);
}

int main()
{
	memset( last, 0, sizeof( last ) );
	memset( mark, 0, sizeof( mark ) );
	memset( summ, 0, sizeof( summ ) );

	FILE *fi = fopen( "input.txt",  "rt" );
	FILE *fo = fopen( "output.txt", "wt" );

	fscanf( fi, "%d%d", &n, &m );

	bool f = true;
	for (int pos = 1; pos <= m; ++pos)
	{
	 	int cur, out; fscanf( fi, "%d", &cur );

		if (!last[ cur ])
		{
			out = cur + range_query( mark, cur+1, n );
			increment( mark, n, cur, +1 );
			increment( summ, m, pos, +1 );

		} else
		{
			out = range_query( summ, last[ cur ]+1, pos ) + 1;
			increment( summ, m, last[ cur ], -1 );
			increment( summ, m, pos,         +1 );

		}

		fprintf( fo, "%s%d", (f) ? "" : " ", out );
		last[ cur ] = pos;
		f = false;
	}

	fprintf( fo, "\n" );

	fclose( fi );
	fclose( fo );

	return 0;
}
