#include <stdio.h>
#include <string.h>
//using namespace std;

const int MAXN = 260;
int park[MAXN][MAXN];

int main() {
	memset( park, 0, sizeof(park) );

	FILE *input_file = fopen( "input.txt", "r" );
	FILE *output_file = fopen( "output.txt", "w" );

	int n, m, s;
	fscanf( input_file, "%d%d%d", &n, &m, &s );
	for( int i = 0; i < n; i++ ) {
		char buff[MAXN];
		fscanf( input_file, "%s", buff );
		while( strlen(buff) == 0 ) {
			fscanf( input_file, "%s", buff );
		}

		for( int j = 0; j < m; j++ ) {
			if( buff[j] == '#' ) {
				park[i][j] = 1;
			}
		}

	}

	int ans = 0;
	for( int i = 0; i < n; i++ ) {
		for( int j = 0; j < m; j++) {
			//обработка вертикальной дорожки
			if( i + s - 1 < n ) {
				bool flag = true;
				for( int k = i; k < i + s; k++ ) {
					if( park[k][j] == 1 ) {
						flag = false;
						break;
					}
				}
				
				if ( flag ) {
					ans++;
				}
			}

			//обработка горизонтальной дорожки
			if( j + s - 1 < m ) {
				bool flag = true;
				for( int k = j; k < j + s; k++ ) {
					if( park[i][k] == 1 ) {
						flag = false;
						break;
					}
				}
				
				if ( flag ) {
					ans++;
				}
			}
		}
	}

	fprintf( output_file, "%d\n", ans );
	fclose( input_file );
	fclose( output_file );
	return 0;
}
