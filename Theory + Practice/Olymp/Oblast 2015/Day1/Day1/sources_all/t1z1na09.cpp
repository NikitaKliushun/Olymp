// Шаханович Дмитрий
// Молодечно
// Задача 1
#include <stdlib.h>
#include <stdio.h>
#include <algorithm>
#define MaxN 110

int main()
{
  freopen("input.txt","r",stdin);
  freopen("output.txt","w",stdout);

  int a[MaxN];
  std::fill(a,a+MaxN,0);
  int n,k,x;
  scanf("%d%d",&n,&k);
  for(int i=0;i<n;i++)
     {
        scanf("%d",&x);
        a[x]++;
     }
  int b[MaxN],m=0;
  for(int i=0;i<100;i++)
     {
        b[i]=a[i]/k;
        m+=b[i];
     }
  printf("%d\n",m);
  for(int i=0;i<100;i++)
     for(int j=0; j< b[i];j++)
      printf("%d ",i);
}