// by Leshkevich Pavel 
#include<fstream>
#include<vector>
#include<memory.h>
#define maxn 11111
using namespace std;
int ans = 0,g[maxn],i,j,n,m;
vector < int > f[maxn];

void go(int x,int y){
 for(int t=0;t<f[x].size();t++)if(g[f[x][t]] == 0){
  g[f[x][t]] = y;
  go(f[x][t],y+1);
 }     
 else if( ( y - g[f[x][t]] )   % 2 == 0){
  f[x].erase(f[x].begin()+t);
 }
return; 
}

int main(){
 ifstream in("input.txt");
 ofstream out("output.txt");
in >> n >> m; 
 for(i=1;i<=m;i++){
  int k1,k2;                 
  in >> k1 >> k2;
  f[k1].push_back(k2);
  f[k2].push_back(k1);
  ans -= 2; 
 }  
for(i=1;i<=n;i++){
  for(j=0;j<f[i].size();j++)g[f[i][j]] = 1;
  for(j=1;j<=n;j++)if(i != j && g[j] == 0)f[i].push_back(j); 
 } 
go(1,0); 
for(i=1;i<=n;i++)ans += f[i].size();
if(ans > 0)out << ans / 2;
return 0; 
}
