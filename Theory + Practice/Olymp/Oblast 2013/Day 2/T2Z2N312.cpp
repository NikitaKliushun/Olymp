// by Leshkevich Pavel
#include<fstream>
#include<vector>
#include<algorithm>
using namespace std;
vector < pair < int , int > > f;
vector < int > ans;
int n,k,i;
int main(){
 ifstream in("input.txt");
 ofstream out("output.txt");
in >> n >> k;
 for(i=1;i<=n;i++){
  int j;                
  in >> j;
  f.push_back(make_pair(j,i));
 } 
sort(f.begin(),f.end());
 for(i=0;i<k;i++)ans.push_back(f[i].second);
out << ans.size()<< endl; 
for(i=0;i<ans.size();i++)out << ans[i] << " ";
return 0; 
}
