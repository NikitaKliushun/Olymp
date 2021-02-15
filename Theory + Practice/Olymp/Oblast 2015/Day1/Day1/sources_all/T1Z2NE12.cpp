/**
Nikita Sazanovich's solution for tour 1 problem 2
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
const int LIM = 5e4;

int a, b;

// this function checking is it possible to fill box with r rows and c columns with a and b sweets
bool ok(ll r, ll c) {
    ll sq = r * c;
    ll k2 = sq / 2;
    ll k1 = sq - k2;
    return (a >= k1 && b >= k2);
}

int main() {
    // including files
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    ios_base::sync_with_stdio(false);
    // entering input data
    cin >> a >> b;
    // if a < b then swapping a and b to avoid double checking after
    if (a < b)
        swap(a, b);
    ll ans = 0;
    // LIM is round sqrt(2e9)
    for (ll r = 1; r <= LIM; r++) {
        // fix r and then using binary search to find max possible number of columns
        ll lf = r - 1, rh = max(r, (a + b) / r + 1);
        while (rh - lf > 1) {
            ll md = (lf + rh) / 2;
            if (ok(r, md))
                lf = md;
            else
                rh = md;
        }
        // adding to ans max possible number of columns minus min possible number of columns
        ans += lf - r + 1;
    }
    // writting output data
    cout << ans;
    return 0;
}