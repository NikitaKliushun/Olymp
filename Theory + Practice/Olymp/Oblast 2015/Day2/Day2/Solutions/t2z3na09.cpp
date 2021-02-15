//Dmitry Shakhanovich
// Problem 3
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <algorithm>
#define MaxN 100001
#define ll long long
using namespace std;

int a[10][10],s[MaxN];

int main()
{
     freopen("input.txt","r",stdin);
     freopen("output.txt","w",stdout);


     for(int i=0;i<10;i++)
        for(int j=0;j<10;j++)
            a[i][j]=0;
     a[1][7]=2;
     a[7][1]=2;
     a[2][3]=2;
     a[3][2]=2;
     a[3][4]=2;
     a[4][3]=2;
     a[2][4]=3;
     a[4][2]=3;
     a[5][6]=2;
     a[6][5]=2;
     a[6][9]=4;
     a[9][6]=4;
     a[5][9]=2;
     a[9][5]=2;


     int n,k;
     scanf("%d%d",&n,&k);
     int tk;
     int ans=1;


     if(n==1)
     {
         scanf("%d",&s[0]);
         if(k==0){printf("1"); return 0;}
         if(k==1){printf("1");return 0;}
         if (s[0] == 1 || s[0] == 7) {printf("2");return 0;}
         if(k==2 && (s[0]== 2 || s[0]==4 || s[0]==9 || s[0] == 6)){printf("2");return 0;}
         if(k >= 2 && (s[0]==3 || s[0]==5)){printf("3");return 0;}
         if(k >=3 && (s[0]== 2 || s[0]==4 || s[0]==9 || s[0] == 6)){printf("3");return 0;}
         if(k>=4 && s[0]!=0 && s[0]!=8 ) printf("3");
     }
     if(n==2)
     {
         char x,y;
         scanf("%c%c",&x,&y);
         s[0]=x-48;s[1]=y-48;
        tk=k;
         if(tk >= 2) {
         if (s[0] == 1 || s[0] == 7) {ans=2;tk=k-2;}else
         if(tk==2 && (s[0]== 2 || s[0]==4 || s[1]==9 || s[1] == 6)){ans=2;tk=k-2;}else
         if(tk==3 && (s[0]==3 || s[0]==5)){ans=3;tk=k-3;}else
         if(tk>=4 && s[0]!=0 && s[0]!=8 ) {ans=3;tk=k-3;}
         if(tk >= a[s[1]][s[0]]) ans*=2;
         if ((s[1] == 1 || s[1] == 7) ) {ans=2;tk=k-2;}else
         if(tk==2 && (s[1]== 2 || s[1]==4 || s[1]==9 || s[1] == 6) && tk){ans=2;tk=k-2;}else
         if(tk==3 && (s[1]==3 || s[1]==5) ){ans=3;tk=k-3;}else
         if(tk>=4 && s[1]!=0 && s[1]!=8 ) {ans=3;tk=k-3;}
         if(tk >= a[s[1]][s[0]]) ans*=2;
         if(k >= a[s[1]][s[0]]) ans++;
         }
         printf("%d",ans);
     }
}
