/**
Nikita Sazanovich's solution for tour 2 problem 1
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

string s1, s2;

int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    ios_base::sync_with_stdio(false);
    cin >> s1;
    cin >> s2;
    int d1 = static_cast <int> (s1.length());
    int d2 = static_cast <int> (s2.length());
    int i = d1 - 1, j = d2 - 1, ans = 0;
    while (i >= 0 && j >= 0) {
        if (s1[i] != s2[j])
            break;
        i--;
        j--;
        ans++;
    }
    cout << ans;
    return 0;
}