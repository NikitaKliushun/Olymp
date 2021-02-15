//Лапотко Алексей Андреевич, г. Солигорск, 11Б класс, задача 4
#include <iostream>
#include <fstream>
#include <vector>
#include <stack>

#define MAXN 200100

using namespace std;

ifstream fin("input.txt");
ofstream fout("output.txt");

int n, m, k, f, res[MAXN] = {}, pr[MAXN] = {}, s[MAXN], s1 = 0;
vector <int> a[MAXN];
bool p[MAXN] = {}, was[MAXN] = {};

void in_s(int x){
    s[s1++] = x;
}

int out_s(){
    return s[s1 - 1];
}

int dfs(){
    pr[f] = -1;
    in_s(f);

    while (s1){
        int t = out_s();
        if (!was[t]){
            if (p[t]) res[t] = 1;
            for (int i = 0; i < a[t].size(); i++)
                if (a[t][i] != f) {
                    pr[a[t][i]] = t;
                    in_s(a[t][i]);
                }
            was[t] = true;
        } else {
            s1--;
            if (pr[t] != -1){
                res[pr[t]] += res[t];
                if (res[pr[t]] > k && pr[t] != f) res[pr[t]] = k;
            }
        }
    }

    return res[f];
}

int main(){
    fin >> n >> m >> k;
    for (int i = 0; i < m; i++){
        int x;
        fin >> x;
        p[x - 1] = true;
    }

    for (int i = 0; i < n; i++){
        int x;
        fin >> x;
        a[x - 1].push_back(i);
    }
    fin >> f;
    f--;

    fout << dfs() << endl;
}
