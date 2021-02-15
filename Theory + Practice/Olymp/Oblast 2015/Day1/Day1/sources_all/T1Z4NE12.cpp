/**
Nikita Sazanovich's solution to tour 1 problem 4
**/
#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cstdlib>
#include <ctime>
#include <vector>
#include <set>
#include <map>
#include <string>
#include <cstring>
#include <iomanip>

using namespace std;
typedef long long ll;
typedef pair <int, int> pii;
const int N = 2e5;

vector <pii> edges[N], care[N];
pii all[N];
int res[N], _v[N], _parent[N], _edge[N], _curi[N];

int main() {
    // including files
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    ios_base::sync_with_stdio(false);
    // entering input data
    // care[] is the array that contains roads which i-th town is care for
    int n;
    cin >> n;
    for (int i = 1; i < n; i++) {
        int x, y, z;
        cin >> x >> y >> z;
        edges[x].push_back(make_pair(y, z));
        edges[y].push_back(make_pair(x, z));
        care[x].push_back(make_pair(y, z));
    }
    // the main reason to creating _v[], _parent[], _edges[], _curi[] is stack in c++
    // my recursive solution was failing on tests with N > 1e4 because of something strange process returned code
    // so i create my own stack with this arrays
    // _v[] is for vertexes
    // _parent[] is for previous vertex in dfs-order
    // _edges is cost of the edge for _parent to _v
    // _curi is iterator i in dfs
    // res [] is answer for current vertex and it is also contained cost of returning edge
    int cur = 1;
    _v[cur] = 1;
    _parent[cur] = 1;
    _edge[cur] = 0;
    _curi[cur] = 0;
    while (cur != 0) {
        int v = _v[cur];
        int parent = _parent[cur];
        int edge = _edge[cur];
        int curi = _curi[cur];
        if (curi == edges[v].size()) {
            // does this town contain road to parent which is cared by it
            bool care_about_parent = false;
            for (int i = 0; i < care[v].size(); i++)
                if (care[v][i].first == parent)
                    care_about_parent = true;
            // number of children
            int cnt = 0;
            for (int i = 0; i < edges[v].size(); i++) {
                int to = edges[v][i].first;
                if (to == parent)
                    continue;
                cnt++;
                all[cnt] = make_pair(res[to], to);
            }
            // if it is a leaf when we already may return from dfs
            if (cnt == 0) {
                res[v] = (care_about_parent ? 0 : edge);
                cur--;
                continue;
            }
            // all[] is array with pairs of all children in the way(res[child], child)
            sort(all + 1, all + cnt + 1);
            // to reduce res[v] we need to stop taking fee on road to bigget child(biggset = max res)
            bool care_about_biggest = false;
            int l;
            for (int i = 0; i < care[v].size(); i++)
                if (care[v][i].first == all[cnt].second) {
                    care_about_biggest = true;
                    l = care[v][i].second;
                }
            res[v] = all[cnt].first + (care_about_parent ? 0 : edge);
            // if we don't have such road we may go out
            if (care_about_biggest == false) {
                cur--;
                continue;
            }
            // in the other case we may relax our answer with min of biggest child minus road or second-biggest child
            int last = (cnt == 1 ? 0 : all[cnt - 1].first);
            last = max(last, all[cnt].first - l);
            res[v] = min(res[v], last + edge);
            cur--;
            continue;
        }
        // it is cycle i which looks through all children and add them to stack
        int to = edges[v][curi].first;
        _curi[cur]++;
        if (to != parent) {
            cur++;
            _v[cur] = to;
            _parent[cur] = v;
            _edge[cur] = edges[v][curi].second;
            _curi[cur] = 0;
        }
    }
    // res[1] is the best cost when we are going out from vertex 1
    cout << res[1];
    return 0;
}