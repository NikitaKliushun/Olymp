// by Leshkevich Pavel
#include<fstream>
#include<vector>
using namespace std;
int sum = 0,n,k,i;
vector < int > ans;
vector < pair < int, int > > h; 

int main(){
 ifstream in("input.txt");
 ofstream out("output.txt");
in >> n >> k;
 for(i=1;i<=n;i++){
  int v1,v2;                 
  in >> v1 >> v2;
  h.push_back(make_pair(v1,v2));
  sum += v1;
 } 
 for(i=0;i<h.size();i++){
  while(sum > k && h[i].first > 0){
   --h[i].first;
   --sum;
   ans.push_back( -( i + 1 ) );
  }
 }
  for(i=0;i<h.size();i++){
  while(sum < k && h[i].second > h[i].first){
   ++h[i].first;
   ++sum;
   ans.push_back( i + 1 );
  }
 } 
out << ans.size() << endl;
for(i=0;i<ans.size();i++)out << ans[i] << endl; 
}
