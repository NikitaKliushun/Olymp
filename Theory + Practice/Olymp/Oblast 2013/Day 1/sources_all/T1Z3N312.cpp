// by Leshkevich Pavel
#include<fstream>
using namespace std;
int f[444][444];
int n,m,i,j,ii,jj,l,k,ans=0;
int main(){
 ifstream in("input.txt");
 ofstream out("output.txt");
in >> n >> m;
for(i=1;i<=n;i++)
 for(j=1;j<=m;j++){
  char t;
  in >> t;
  f[i][j] = t - 48;
 }
for(i=1;i<=n;i++)
 for(j=1;j<=m;j++){
  for(ii=i+1;ii<=n;ii++){
   bool ok = true;
   for(jj=j;jj<=m;jj++)if(ok){
    int t = ii;
     for(l=i;l<=ii;l++)if(ok && t > l){
      for(k=j;k<=jj;k++)
      if(f[l][k] != f[t][k]){
      ok = false;
      break;
      }
     t--;
    }
   if(ok)++ans;
   }
  }
 }
out << ans;
}
