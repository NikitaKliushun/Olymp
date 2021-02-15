#include <iostream>
#include <cstdio>
#include <vector>
#include <algorithm>
#include <cstring>

using namespace std;

vector <int> g[10010], gn[10010];
int n, m, s, ans = 0, k = 0;
bool used[10010] = {};

void dfs(int v) {
    used[v] = true;
    for (int i = 0; i < g[v].size(); i++) {
        int to = g[v][i];
        if (!used[to]) {
           // cout <<  v << " ----> " << to << endl;
           // cout << k << endl;
            if (k % 2 != 0 && k >= 2) { ans++;
                                g[s].push_back(to);
                                g[to].push_back(s);
                                }
            k++;
            dfs(to);
        }
    }
}

int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    cin >> n >> m;
    if (m == 0) {
        cout << n << endl;
        return 0;
    }
    int u, v;
    for (int i = 0; i < m; i++) {
        cin >> u >> v;
        u--; v--;
        g[u].push_back(v);
        g[v].push_back(u);
    }
    for (int i = 0; i < n; i++) {
        memset(used, false, sizeof(used));
        s = i;
        k = 1;
      //  dfs(i);
    }
    cout << 0 << endl;
}
