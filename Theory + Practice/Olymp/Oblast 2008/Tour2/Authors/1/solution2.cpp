
// O( n^2 ) solution
// Author: Nikita Lesnikov

#include <iostream>
#include <fstream>
#include <algorithm>

using namespace std;

ifstream fin( "input.txt" );
ofstream fout( "output.txt" );

const	int	maxn = 128;
const	int maxv = 1001000;

int n;
int a[ maxn ];

int r[ maxn ][ maxn/2 ];

int main()
{
    fin >> n;
	for (int i = 0; i < n; ++i)
		fin >> a[ i ];

	for (int i = 1; i <= n/2; ++i)
		r[ 0 ][ i ] = (n+1) * -maxv;	

	r[ 0 ][ 0 ] = 0;

	for (int i = 1; i <= n; ++i)
		for (int j = 0; j <= n/2; ++j)
			r[ i ][ j ] = (n+1) * -maxv,
			r[ i ][ j ] = max( r[ i ][ j ], max( (j) ? r[ i-1 ][ j-1 ] + a[ i-1 ] : r[ i ][ j ], r[ i-1 ][ j ] - a[ i-1 ] ) );

	fout << r[ n ][ n/2 ] << endl;

	return 0;
}