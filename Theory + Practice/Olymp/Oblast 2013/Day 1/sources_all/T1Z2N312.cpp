// by Leshkevich Pavel
#include<fstream>
#include<cmath>
#include<vector>
#include<map>
using namespace std;
vector < long long > g;
map < long long , int > mp;
int i;
long long a,c,ans = 1;

int main(){
 ifstream in("input.txt");
 ofstream out("output.txt");
in >> a >> c;
__int64 a1 = a, c1 = c, h = int(sqrt(c));
i = 2;
 for(i=2;i<=h;i++){
  if(c1 % i == 0){
   g.push_back(i);
   while(c1 % i == 0){
    c1/=i;
    mp[i]++;
   }
  }
 }
i = 2;
 if (c1 > 1){
  mp[c1]++;
  g.push_back(c1);
 }
h = int(sqrt(a));
for(i=2;i<=h;i++){
 if(a1 % i == 0){
  while(a1 % i == 0){
   a1/=i;
   mp[i]--;
  }
 }
}
if(a1 > 1)mp[a1]--;
 for(i=0;i<g.size();i++)if(mp[g[i]] > 0){
  ans *= mp[g[i]] + 1;
 }
out << ans;
}
