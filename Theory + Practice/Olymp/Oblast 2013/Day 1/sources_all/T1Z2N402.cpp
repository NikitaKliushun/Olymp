//Лапотко Алексей Андреевич, г. Солигорск, 11Б класс, задача 2
#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

ifstream fin("input.txt");
ofstream fout("output.txt");

typedef long long ll;

ll a, c, x;

int main(){
    fin >> a >> c;

    x = c / a;
    ll i = 2, ans = 1;
    while (i * i <= x){
        int sum = 0;
        while (x % i == 0){
            x /= i; sum++;
        }
        ans += ans * sum;
        i++;
    }
    if (x != 1) ans *= 2;

    fout << ans << endl;
}
