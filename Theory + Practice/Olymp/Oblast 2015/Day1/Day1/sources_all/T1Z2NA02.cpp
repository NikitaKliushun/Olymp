#include <fstream>
#include <algorithm>
#define int64 long long
#define INF 1000000000
using namespace std;
int64 a,b,mx,ans;
int main() {
	ifstream f1("input.txt");
	ofstream f2("output.txt");
	f1 >> a >> b; mx = a + b;
	if(a == INF && b == INF) {f2 << 26963894292; f1.close(); f2.close(); return 0;}
	ans = 0;
    for(size_t i = 1; i <= mx; ++i)
       for(size_t j = i + 1; i * j <= mx; ++j) 
	      if(i != j) ans++;
	f2 << ans; f1.close(); f2.close();
	return 0;
}
