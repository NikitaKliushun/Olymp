/**
Nikita Sazanovich's solution for tour 1 problem 1
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
const int N = 1e3;

int a[N];
vector <int> print;

int main() {
    // including files
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    ios_base::sync_with_stdio(false);
    // entering input data
    int n, k;
    cin >> n >> k;
    for (int i = 1; i <= n; i++) {
        int x;
        cin >> x;
        a[x]++;
    }
    // print is the answer for this problem
    print.clear();
    // filling print
    for (int i = 1; i < N; i++) {
        int x = a[i] / k;
        for (int j = 1; j <= x; j++)
            print.push_back(i);
    }
    // l is length of print
    int l = static_cast <int> (print.size());
    // writting output data
    cout << l << "\n";
    for (int i = 0; i < l; i++) {
        cout << print[i];
        if (i + 1 != l)
            cout << " ";
    }
    return 0;
}