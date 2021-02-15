//Лапотко Алексей Андреевич, г. Солигорск, 11Б класс, задача 3
#include <fstream>
#include <vector>

using namespace std;

ifstream fin("input.txt");
ofstream fout("output.txt");

int n, m, p[10100] = {}, s[5] = {};
vector <int> a[10100];
vector < pair <int, int> > f;

void dfs(int t, int val){
    p[t] = val;
    s[val - 1]++;

    for (int i = 0; i < a[t].size(); i++)
        if (p[a[t][i]] == 0) dfs(a[t][i], 3 - val);
}

int main(){
    fin >> n >> m;
    for (int i = 0; i < m; i++){
        int x1, x2;
        fin >> x1 >> x2;
        x1--; x2--;
        a[x1].push_back(x2); a[x2].push_back(x1);
    }

    for (int i = 0; i < n; i++)
        if (p[i] == 0){
            dfs(i, 1);
            f.push_back(make_pair(s[0], s[1]));
            s[0] = s[1] = 0;
        }
        
    int sa[5] = {}, sb[5] = {}, sum[5] = {};
    sa[0] = f[0].first; sa[1] = f[0].second;
    sb[0] = sa[1]; sb[1] = sa[0];
    sum[0] = sum[1] = sa[0] * sa[1];
    for (int i = 1; i < f.size(); i++){
        int nsa[5] = {}, nsb[5] = {}, nsum[5] = {};
        int s1 = f[i].first, s2 = f[i].second;

        int t = 0;
        if (s2 * sa[0] + s1 * (sb[0] + s2) < s2 * sa[1] + s1 * (sb[1] + s2)) t = 1;
        nsa[0] = sa[t] + s1; nsb[0] = sb[t] + s2;
        nsum[0] = sum[t] + s2 * sa[t] + s1 * (sb[t] + s2);
        swap(s1, s2);
        t = 0;
        if (s2 * sa[0] + s1 * (sb[0] + s2) < s2 * sa[1] + s1 * (sb[1] + s2)) t = 1;
        nsa[1] = sa[t] + s1; nsb[1] = sb[t] + s2;
        nsum[1] = sum[t] + s2 * sa[t] + s1 * (sb[t] + s2);

        sa[0] = nsa[0]; sa[1] = nsa[1];
        sb[0] = nsb[0]; sb[1] = nsb[1];
        sum[0] = nsum[0]; sum[1] = nsum[1];
    }

    int ans = sum[0];
    if (sum[1] > ans) ans = sum[1];
    ans -= m;
    fout << ans << endl;
}
