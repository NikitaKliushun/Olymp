//Лапотко Алексей Андреевич, г. Солигорск, 11Б класс, задача 1
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <algorithm>

using namespace std;

ifstream fin("input.txt");
ofstream fout("output.txt");

vector < pair <int, int> > a;
int n, t, p[2100];
string s[2100];

int toi(int x1, int x2, string t){
    int res = 0;
    for (int i = x1; i <= x2; i++)
        res = res * 10 + t[i] - '0';
    return res;
}

int decode(string t){
    int h = toi(0, 1, t), m = toi(3, 4, t), s = toi(6, 7, t);
    s += 60 * (m + 60 * h);
    return s;
}

int find(int x){
    for (int i = 0; i < 2 * n; i++)
        if (p[i] == -1 && a[i].first == x) return i;
}

int main(){
    fin >> n >> t;
    for (int i = 0; i < n * 2; i++){
        fin >> s[i];
        a.push_back(make_pair(decode(s[i]), i));
        p[i] = -1;
    }
    sort(a.begin(), a.end());

    for (int i = 0; i < 2 * n; i++)
    if (p[i] == -1){
            int f = find(a[i].first + t);
            p[f] = 10;
            fout << s[a[i].second] << "-" << s[a[f].second] << endl;
        }
}
