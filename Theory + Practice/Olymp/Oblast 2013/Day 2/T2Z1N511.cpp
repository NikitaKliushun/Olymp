#include <iostream>
#include <cstdio>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    int n, k, s = 0, a, p;
    pair <int, int> m[111];
    cin >> n >> k;
    for (int i = 0; i < n; i++) {
        cin >> a >> p;
        s += a;
        m[i] = make_pair(a, p);
    }
    int i = 0;
    cout << abs(s - k) << endl;
    while (s != k) {
        if (s > k) {
            if (m[i].first > 0) {s--; m[i].first--; cout << "-" << i + 1 << endl;} else i++;
        } else if (s < k) {
            if (m[i].first < m[i].second) {m[i].first++; s++; cout << i + 1 << endl;} else i++;
        }
    }
}
