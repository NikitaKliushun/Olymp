/**
Nikita Sazanovich's solution for tour 2 problem 3
**/
#include <iostream>
#include <cstdio>
#include <algorithm>
#include <vector>
#include <set>
#include <map>
#include <iomanip>
#include <cstring>
#include <string>
#include <ctime>
#include <cstdlib>
#include <memory.h>

using namespace std;
typedef long long ll;
typedef pair <int, int> pii;
const int NUM = 10;
const int MOD = 1e9 + 7;
const int N = 100 + 5;
const int SUM = 700 + 5;
const int DIF = 800 + 5;

int g[NUM][NUM], codes[NUM], cnt[NUM], a[N];
int old[SUM][DIF], fresh[SUM][DIF];

int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    ios_base::sync_with_stdio(false);
    int n, k;
    cin >> n >> k;
    string s;
    cin >> s;
    for (int i = 1; i <= n; i++)
        a[i] = static_cast <int> (s[i - 1] - '0');
    codes[0] = (1 << 0) + (1 << 1) + (1 << 3) + (1 << 5) + (1 << 7) + (1 << 8);
    codes[1] = (1 << 2) + (1 << 3) + (1 << 7);
    codes[2] = (1 << 0) + (1 << 3) + (1 << 6) + (1 << 8);
    codes[3] = (1 << 0) + (1 << 2) + (1 << 4) + (1 << 6);
    codes[4] = (1 << 2) + (1 << 3) + (1 << 4) + (1 << 7);
    codes[5] = (1 << 0) + (1 << 1) + (1 << 4) + (1 << 7) + (1 << 8);
    codes[6] = (1 << 2) + (1 << 4) + (1 << 5) + (1 << 7) + (1 << 8);
    codes[7] = (1 << 0) + (1 << 2) + (1 << 5);
    codes[8] = (1 << 0) + (1 << 1) + (1 << 3) + (1 << 4) + (1 << 5) + (1 << 7) + (1 << 8);
    codes[9] = (1 << 0) + (1 << 1) + (1 << 3) + (1 << 4) + (1 << 6);
    cnt[0] = 6;
    cnt[1] = 3;
    cnt[2] = 4;
    cnt[3] = 4;
    cnt[4] = 4;
    cnt[5] = 5;
    cnt[6] = 5;
    cnt[7] = 3;
    cnt[8] = 7;
    cnt[9] = 5;
    for (int i = 0; i < NUM; i++)
        for (int j = 0; j < NUM; j++)
            for (int x = 0; x < 9; x++) {
                bool ok = false;
                if ((codes[i] & (1 << x)) != 0 && (codes[j] & (1 << x)) == 0)
                    ok = true;
                if ((codes[i] & (1 << x)) == 0 && (codes[j] & (1 << x)) != 0)
                    ok = true;
                if (ok)
                    g[i][j]++;
            }
    fresh[0][0] = 1;
    for (int cur = 1; cur <= n; cur++) {
        int start = (cur == 1 ? 1 : 0);
        int min_i = 3 * (cur - 1);
        int max_i = 7 * (cur - 1);
        int min_j = 0;
        int max_j = 8 * (cur - 1);
        for (int i = min_i; i <= max_i; i++)
            for (int j = min_j; j <= max_j; j++)
                old[i][j] = fresh[i][j];
        memset(fresh, 0, sizeof(fresh));
        for (int i = min_i; i <= max_i; i++)
            for (int j = min_j; j <= max_j; j++) {
                if (old[i][j] == 0)
                    continue;
                for (int x = start; x < NUM; x++) {
                    int ni = i + cnt[x];
                    int nj = j + g[a[cur]][x];
                    fresh[ni][nj] += old[i][j];
                    if (fresh[ni][nj] >= MOD)
                        fresh[ni][nj] -= MOD;
                }
            }
    }
    int sum = 0;
    for (int i = 1; i <= n; i++)
        sum += cnt[a[i]];
    int ans = 0;
    int limit = min(DIF - 1, 2 * k);
    for (int j = 0; j <= limit; j++) {
        ans += fresh[sum][j];
        if (ans >= MOD)
            ans -= MOD;
    }
    cout << ans;
    return 0;
}