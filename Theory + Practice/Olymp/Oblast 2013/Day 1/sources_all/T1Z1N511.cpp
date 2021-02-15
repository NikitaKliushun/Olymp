#include <iostream>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
#include <algorithm>
#include <map>
#include <set>

using namespace std;

int hh, mm, ss;

int toint(string s) {
   hh += (int(s[0]) - 48) * 10;
   hh += int(s[1]) - 48;
   mm += (int(s[3]) - 48) * 10;
   mm += int(s[4]) - 48;
   ss += (int(s[6]) - 48) * 10;
   ss += int(s[7]) - 48;
}

int main() {
    int INF = int(2e8);
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    string s;
    int n, t;
    cin >> n >> t;
    vector <pair <int, int> > v;
    vector <string> st;
    for (int i = 0; i < 2 * n; i++) {
        hh = 0, mm = 0, ss = 0;
        cin >> s;
        st.push_back(s);
        toint(s);
      //  cout << hh << " " << mm << " " << ss << endl;
      v.push_back(make_pair( hh * 3600 + mm * 60 + ss, i));
    }
    for (int i = 0; i < n * 2; i++) {
        for (int j = i + 1; j < n * 2; j++) if (i != j) {
            if (abs(v[i].first - v[j].first) == t) {
                if (v[i].first < v[j].first) cout << st[v[i].second] << "-" << st[v[j].second] << endl; else
                cout << st[v[j].second] << "-" << st[v[i].second] << endl;
                v[i].first = INF;
                v[j].first = INF;
            }
        }
    }
}
