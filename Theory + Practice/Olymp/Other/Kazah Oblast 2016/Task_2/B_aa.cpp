#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <set>
#include <map>
#include <vector>
#include <string>
#include <cmath>
#include <cstring>
#include <queue>
#include <stack>
#include <algorithm>
#include <sstream>
using namespace std; 

#define f first
#define s second
#define mp make_pair
#define sz(a) int((a).size()) 
#define pb push_back 
#define all(c) (c).begin(),(c).end() 
#define forit(it,S) for(__typeof(S.begin()) it = S.begin(); it != S.end(); ++it)
#ifdef WIN32
	#define I64d "%I64d"
#else
	#define I64d "%lld"
#endif

typedef pair <int, int> pi;
int deg[111111], n, from[111111];
int color[111111];

int main() {
	freopen("input.txt", "r", stdin);		
	freopen("output.txt", "w", stdout);
	int tests;
	scanf("%d", &tests);
	while (tests--) {
		scanf("%d", &n);
		for (int i = 0; i < n; ++i) {
			deg[i] = 0;
			color[i] = -1;			
		}

		for (int i = 0; i < n; ++i) {
			int j;
			scanf("%d", &j);
			--j;
			from[i] = j;
			++deg[i], ++deg[j];
		}
		int res = *max_element(deg, deg + n);
		
		int cn = 0;
		for (int i = 0; i < n; ++i) if (color[i] == -1) {
			++cn;
			bool cycle = false;
			int size = 0;
			for (int u = i; ; u = from[u]) {
				if (color[u] != -1) {
					if (color[u] == cn) cycle = true;
					break;
				}
				++size;
				color[u] = cn;
			}
			if (cycle && (size & 1))
				res = max(res, 3);	
		}

		printf("%d\n", res);
	}
	return 0;		
}
