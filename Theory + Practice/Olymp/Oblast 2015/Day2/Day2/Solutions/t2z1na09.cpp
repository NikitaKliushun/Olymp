//Dmitry Shakhanovich
// Problem 1
#include <stdlib.h>
#include <stdio.h>
#define MaxN 100001
using namespace std;

int main()
{
     freopen("input.txt","r",stdin);
     freopen("output.txt","w",stdout);

     char s[MaxN],t[MaxN],x;
     int ls=0,lt=0;
     scanf("%c",&x);
     while ( x != 10)
     {
          s[ls]=x;
          ls++;
          scanf("%c",&x);
     }
     scanf("%c",&x);
     while ( x != 10 && !feof(stdin))
     {
          t[lt]=x;
          lt++;
          scanf("%c",&x);
     }
     int ans=0;
     while ( ls && lt)
     {
          ls--; lt--;
          if(s[ls] == t[lt]) ans++; else break;
     }
     printf("%d",ans);
}
