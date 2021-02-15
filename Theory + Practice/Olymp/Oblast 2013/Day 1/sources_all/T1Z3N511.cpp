#include <iostream>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
#include <algorithm>
#include <map>
#include <set>


using namespace std;

int n, m;
char a[444][444];

bool check(int i, int j, int k) {
   vector <int> v;
    for (int ii = i; ii <= j; ii++ )
        v.push_back(int(a[ii][k]) - 48);
    for (int p = 0; p < v.size() / 2; p++ ) {
       // cout << v[p] << " " << v[v.size() - p - 1] << endl;
        if (v[p] != v[v.size() - p - 1]) return false;
    }
    return true;
}


int main() {
    ios_base::sync_with_stdio(0);
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    cin >> n >> m;
    int res = 0, ans = 0;
     for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < m; j++) cin >> a[i][j];
        }
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            for (int k = 0; k < m; k++) {
              //  cout << i << " " << j << " " << k << endl;
                if (check(i, j, k)) res++; else {
                    //cout << res << endl;
                   // for (int p = 1; p <= res; p++) ans += p;
                    if (res & 1) ans += (res + 1) * (res / 2) + (res + 1) / 2; else
                                ans += (res + 1) * (res / 2);
                    res = 0;
                }
            }
        }
    }
    if (res & 1) ans += (res + 1) * (res / 2) + (res + 1) / 2; else
                                ans += (res + 1) * (res / 2);
    cout << ans << endl;
}
