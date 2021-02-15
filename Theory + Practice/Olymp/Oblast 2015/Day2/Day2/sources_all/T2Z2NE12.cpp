/**
Nikita Sazanovich's solution for tour 2 problem 2
**/
#include <iostream>
#include <cstdio>
#include <algorithm>
#include <vector>
#include <set>
#include <map>
#include <iomanip>
#include <cstring>
#include <string>
#include <ctime>
#include <cstdlib>

using namespace std;
typedef long long ll;
typedef pair <int, int> pii;
const int add[] = {0, 2, 1};

vector <ll> factors;

int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    ios_base::sync_with_stdio(false);
    ll d;
    cin >> d;
    for (int i = 2; i * i <= d; i++)
        while (d % i == 0) {
            factors.push_back(i);
            d /= i;
        }
    if (d != 1)
        factors.push_back(d);
    sort(factors.begin(), factors.end());
    ll ans = 1;
    int l = static_cast <int> (factors.size());
    int i = 0;
    while (i < l) {
        int j = i;
        while (j < l && factors[i] == factors[j])
            j++;
        int cnt = j - i;
        cnt = add[cnt % 3];
        for (int x = 1; x <= cnt; x++)
            ans *= factors[i];
        i = j;
    }
    cout << ans;
    return 0;
}