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
int n, m, pay[2222][2222];
int dp[2222][2222];

int calc(int i, int j) {
	if (i + j == n) 
		return 0;
	int &res = dp[i][j];
	if (res != -1) return res;
	res = 0;
	int num = i + j;
	if (i < m)
		res = max(res, calc(i + 1, j) + pay[num][i]);
	if (j < n - m)
		res = max(res, calc(i, j + 1) + pay[num][m + j]);
	return res;
}

int main() {
	freopen("input.txt", "r", stdin);
	freopen("output.txt", "w", stdout);

	scanf("%d%d", &n, &m);		
	for (int i = 0; i < n; ++i)
		for (int j = 0; j < n; ++j)
			scanf("%d", &pay[i][j]);
	memset(dp, -1, sizeof(dp));

	int res = calc(0, 0);
	printf("%d\n", res);
	return 0;		
}
