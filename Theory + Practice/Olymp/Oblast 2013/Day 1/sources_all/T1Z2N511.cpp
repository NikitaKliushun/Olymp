#include <iostream>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
#include <algorithm>
#include <map>
#include <cmath>
#include <set>

using namespace std;


int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    long long int a, b, c;
    cin >> a >> c;
    int ans = 0;
    for (int b = a; b <=c; b += a ) {
        if (c % b == 0 && b % a == 0 && c % a == 0) ans++;
    }
    cout << ans << endl;
}
