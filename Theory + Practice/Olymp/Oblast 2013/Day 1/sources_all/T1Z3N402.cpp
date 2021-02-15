//Лапотко Алексей Андреевич, г. Солигорск, 11Б класс, задача 3
#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>

using namespace std;

ifstream fin("input.txt");
ofstream fout("output.txt");

int n, m, b[810][410] = {}, t[810][810];
char a[410][410];
string s;

int build(int p, int l, int r, int i){
    if (l == r){
        t[p][i] = l;
        return l;
    }

    int sr = (l + r) / 2;
    if (r <= sr) t[p][i] = build(p, l, r, i * 2);
    else if (l > sr) t[p][i] = build(p, l, r, i * 2 + 1);
    else {
        int r1 = build(p, l, sr, i * 2), r2 = build(p, sr + 1, r, i * 2 + 1);
        if (b[p][r1] < b[p][r2]) t[p][i] = r1; else t[p][i] = r2;
    }

    return t[p][i];
}

int findmin(int p, int l, int r, int fl, int fr, int i){
    if (l == fl && r == fr) return t[p][i];

    int sr = (l + r) / 2;
    if (fr <= sr) return findmin(p, l, sr, fl, fr, i * 2);
    if (fl > sr) return findmin(p, sr + 1, r, fl, fr, i * 2 + 1);
    int r1 = findmin(p, l, sr, fl, sr, i * 2), r2 = findmin(p, sr + 1, r, sr + 1, fr, i * 2 + 1);
    if (b[p][r1] < b[p][r2]) return r1; else return r2;
}

long long rec(int p, int l, int r){
    if (l == r) return b[p][l];

    int sr = findmin(p, 0, m - 1, l, r, 1);
    long long res = b[p][sr] * (sr - l + 1) * (r - sr + 1);
    if (sr > l) res += rec(p, l, sr - 1);
    if (sr < r) res += rec(p, sr + 1, r);

    return res;
}

int main(){
    fin >> n >> m;
    for (int i = 0; i < n; i++){
        fin >> s;
        for (int j = 0; j < m; j++)
            a[i][j] = s[j] - '0';
    }

    for (int i = 0; i < n; i++){
        for (int j = 0; j < m; j++){
            int l = 1;
            while (i - (l + 1) + 1 >= 0 && i + (l + 1) - 1 < n
                    && a[i - (l + 1) + 1][j] == a[i + (l + 1) - 1][j])
                        l++;
            b[i * 2][j] = l - 1;
        }
    }
    for (int i = 0; i < n - 1; i++)
        for (int j = 0; j < m; j++)
            if (a[i][j] == a[i + 1][j]){
                int l = 1;
                while (i - (l + 1) + 1 >= 0 && i + (l + 1) < n
                        && a[i - (l + 1) + 1][j] == a[i + (l + 1)][j])
                            l++;
                b[i * 2 + 1][j] = l;
            }

    long long ans = 0;

    for (int i = 0; i < 2 * n - 1; i++){
        build(i, 0, m - 1, 1);
        ans += rec(i, 0, m - 1);
    }

    fout << ans;
}
