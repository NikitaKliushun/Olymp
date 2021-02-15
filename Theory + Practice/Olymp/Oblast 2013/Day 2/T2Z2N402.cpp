//Лапотко Алексей Андреевич, г. Солигорск, 11Б класс, задача 2
#include <fstream>
#include <vector>
#include <algorithm>

using namespace std;

ifstream fin("input.txt");
ofstream fout("output.txt");

int n, k;
vector < pair <int, int> > a;

int main(){
    fin >> n >> k;
    for (int i = 0; i < n; i++){
        int x;
        fin >> x;
        a.push_back(make_pair(x, i));
    }
    sort(a.begin(), a.end());

    int ans = 0, sum = a[k - 1].first - a[0].first;

    for (int i = k; i < n; i++){
        int newsum = a[i].first - a[i - k + 1].first;
        if (newsum < sum) {
            sum = newsum;
            ans = i - k + 1;
        }
    }

    fout << k << endl;
    for (int i = ans; i < ans + k; i++)
        fout << a[i].second + 1 << " ";
}
