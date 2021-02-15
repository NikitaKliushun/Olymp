#include <stdio.h>

#include <vector>
#include <algorithm>
using namespace std;

struct Edge {
	int destin;
	int next;
	int len;

	Edge( int _destin = 0, int _next = 0, int _len = 0 ) {
		destin = _destin;
		next = _next;
		len = _len;
	}
};

struct CTree {
	int n;
	vector <int> startEdge;
	vector <Edge> edgeList;
	vector <int> longestPath;//самый длинный путь до листа, в поддереве с корнем в вершине i

	CTree() {
		startEdge.clear();
		edgeList.clear();
		longestPath.clear();
	}

	void SetN( int _n ) {
		n = _n;
		for( int i = 0; i < n; i++ ) {
			startEdge.push_back( -1 );
			longestPath.push_back( 0 );
		}
	}

	void AddEdge( int v1, int v2, int len ) {
		edgeList.push_back( Edge( v2, startEdge[v1], len ) );
		startEdge[v1] = edgeList.size() - 1;

		edgeList.push_back( Edge( v1, startEdge[v2], len ) );
		startEdge[v2] = edgeList.size() - 1;
	};

	int FindMaxPath( int curV, int prevV ) {//в параметрах текущая вершина и предок в дереве
		int sonMaxPath = 0, max1 = 0, max2 = 0;

		int curEdge = startEdge[ curV ];
		while( curEdge != -1 ) {
			if( edgeList[curEdge].destin != prevV ) {
				sonMaxPath = max( sonMaxPath, FindMaxPath( edgeList[curEdge].destin, curV ) );

				int curLen = edgeList[curEdge].len + longestPath[edgeList[curEdge].destin];
				if( curLen > max1 ) {
					max2 = max1;
					max1 = curLen;
				} else {
					if( curLen > max2 ) {
						max2 = curLen;
					}
				}
			}
			curEdge = edgeList[curEdge].next;
		}
		longestPath[curV] = max1;

		return max( sonMaxPath, max1 + max2 );
	}
} railroad;

int main() {
	FILE *input_file = fopen( "input.txt", "r" );
	FILE *output_file = fopen( "output.txt", "w" );

	int n;
	fscanf( input_file, "%d", &n );
	railroad.SetN( n );

	for( int i = 0; i < n - 1; i++ ) {
		int v1, v2, len;
		fscanf( input_file, "%d%d%d", &v1, &v2, &len );
		v1--; v2--;

		railroad.AddEdge( v1, v2, len );
	}

	int ans;
	ans = railroad.FindMaxPath( 0, -1 );

	fprintf( output_file, "%d\n", ans );
	fclose( input_file );
	fclose( output_file );
	return 0;
}
