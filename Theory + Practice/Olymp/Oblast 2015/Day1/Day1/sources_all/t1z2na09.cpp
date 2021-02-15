// Шаханович Дмитрий
// Молодечно
// Задача 2

#include <stdlib.h>
#include <stdio.h>
#include <algorithm>
#define MaxN 110
#define ll long long
using namespace std;
int main()
{
  freopen("input.txt","r",stdin);
  freopen("output.txt","w",stdout);

  ll int a,b;
  scanf("%lld%lld",&a,&b);
  if(a > b) swap(a,b);
  ll int maxlen= a*2;
  if(a!=b)maxlen++;
  int x;
  int ans=0;
  ans+=maxlen;
  for(int i=2;i<=maxlen/2;i++)
  {
      x = (maxlen/i) - i + 1;
      if( x > 0) ans+= x ; else break;
  }
  printf("%d",ans);
}