#include <iostream>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
#include <algorithm>
#include <map>
#include <set>

using namespace std;

vector <int> g[200200];
bool used[200200] = {}, used2[200200] = {};
int p[200200];
int n, m, k, t, f, ans = 0;
vector <int> s;

void w(int v) {
    if (p[v] == -1) return; else {
        used[p[v]] = true;
       // cout << p[v] << " ";
        v = p[v];
        w(v);
    }
}

int bfs (int v) {
    queue <int> q;
    q.push(v);
    int res = 0, cur = 0;
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        used2[u] = true;
        for (int i = 0; i < g[u].size(); i++) {
            int to = g[u][i];
            if (!used2[to] && !used[to]) {
                q.push(to);
                p[to] = u;
            }
            if (to == f) return true;
        }
    }
    return false;
}

int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    cin >> n >> m >> k;
    for (int i = 0; i < m; i++) {
        cin >> t;
        t--;
        s.push_back(t);
    }
    for (int i = 0; i < n; i++) {
        cin >> t;
        t--;
        g[i].push_back(t);
    }
    cin >> f; f--;
    for (int i = 0; i < s.size(); i++) {
        for (int j = 0; j < n; j++) used2[j] = false;
        p[s[i]] = -1;
        if (bfs(s[i])) ans++;
        w(f);
    }
    cout << ans << endl;
}
