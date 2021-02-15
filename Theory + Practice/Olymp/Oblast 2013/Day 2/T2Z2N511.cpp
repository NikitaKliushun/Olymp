#include <iostream>
#include <cstdio>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    ios_base::sync_with_stdio(0);
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    int n, k, ans = 2000000000;
    pair <int, int> a[100100];
    cin >> n >> k;
    int t;
    for (int i = 0; i < n; i++) {
        cin >> t;
        a[i] = make_pair(t, i + 1);

    }
    sort(a, a + n);
    int l, r, ansl, ansr;
    for (int i = 0; i < n - k + 1; i++) {
        l = i, r = i + k - 1;
      //  cout << a[r].first - a[l].first << " " << l << " " << r << endl;
        if (ans > a[r].first - a[l].first) {
            ans = a[r].first - a[l].first;
            ansl = l;
            ansr = r;
        }
    }
    cout << ansr - ansl  + 1 << endl;
    for (int i = ansl; i <= ansr; i++) {
        cout << a[i].second << " ";
    }
}
