/**
Nikita Sazanovich's solution for tour 1 problem 3
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
typedef pair <ll, int> plli;
const int N = 1e6;

plli a[N], b[N], c[N];

int main() {
    // including files
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    ios_base::sync_with_stdio(false);
    // entering input data
    int n, m;
    cin >> n >> m;
    // counting length of the first number and making array a in pairs(length of bits, type of the bit)
    ll d1 = 0;
    for (int i = 1; i <= n; i++) {
        int l;
        cin >> l;
        int byte = (i % 2 ? 1 : 0);
        a[i] = make_pair(l, byte);
        d1 += l;
    }
    // counting length of the second number and making array b in pairs(length of bits, type of the bit)
    ll d2 = 0;
    for (int i = 1; i <= m; i++) {
        int l;
        cin >> l;
        int byte = (i % 2 ? 1 : 0);
        b[i] = make_pair(l, byte);
        d2 += l;
    }
    // if d1 < d2 then we need to add zeroes to the first number
    if (d1 < d2) {
        for (int i = n + 1; i > 1; i--)
            a[i] = a[i - 1];
        a[1] = make_pair(d2 - d1, 0);
        d1 = d2;
        n++;
    }
    // if d2 < d1 then we need to add zerores to the second number
    if (d2 < d1) {
        for (int i = m + 1; i > 1; i--)
            b[i] = b[i - 1];
        b[1] = make_pair(d1 - d2, 0);
        d2 = d1;
        m++;
    }
    // in is iterator in a and im is iterator in b
    // k is the length of output array
    int in = 1, im = 1;
    int k = 0;
    while (in <= n && im <= m) {
        // founding number of the next bits in answer
        ll cnt = min(a[in].first, b[im].first);
        a[in].first -= cnt;
        b[im].first -= cnt;
        // type of the next bits in answer
        int byte = a[in].second ^ b[im].second;
        // if we haven't got any numbers or type of the last number doesn't equal to ours we need to add pair in answer
        if (k == 0 || c[k].second != byte) {
            k++;
            c[k] = make_pair(0, byte);
        }
        c[k].first += cnt;
        if (a[in].first == 0)
            in++;
        if (b[im].first == 0)
            im++;
    }
    // if type of the first number in the answer if 0 then we need to start from the second pair
    int start = (c[1].second == 0 ? 2 : 1);
    // writting output data
    for (int i = start; i <= k; i++) {
        cout << c[i].first;
        if (i != k) cout << " ";
    }
    return 0;
}