// by Leshkevich Pavel
#include<fstream>
#include<string>
#include<algorithm>
using namespace std;
int f[86444],maxn = 0,n,k,i;
string s,g[86444];

int main(){
 ifstream in("input.txt");
 ofstream out("output.txt");
in >> n >> k; 
 for(i=1;i<=n*2;i++){
  in >> s;
  int h = 0;
  h += (s[0] - 48) * 10 + (s[1] - 48);
  h *= 60;
  h += (s[3] - 48) * 10 + (s[4] - 48);
  h *= 60;
  h += (s[6] - 48) * 10 + (s[7] - 48);
  f[h]++;
  maxn = max(maxn,h);
  g[h] = s;
 }
 for(i=0;i<=maxn;i++)
 if(f[i] != 0)
  while(f[i] > 0){
   --f[i];
   int h = i + k;
   --f[h];
   out << g[i] << "-" << g[h] << endl;
  } 
return 0;
}
