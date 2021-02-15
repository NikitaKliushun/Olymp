// Шаханович Дмитрий
// Молодечно
// Задача 4

#include <stdlib.h>
#include <stdio.h>
#include <algorithm>
#include <vector>
#include <queue>
#define MaxN 2010
#define ll long long
using namespace std;

struct str
{
   int v;
   int w;
};
struct graph
{
    vector<str> dest;
};
struct str2
{
   vector<int> v;
   int p;
};
int a[MaxN][MaxN],way[MaxN][MaxN];
int maxlen=0;
str2 m[MaxN];
graph g[MaxN];
int pred[MaxN];
int n;
queue<str> o;
queue<int> o2,o3;
int len[MaxN],len2[MaxN];
void BFS()
{
    char p[MaxN];
    fill(p,p+n+1,0);
    while (!o.empty()) o.pop();
    str u,x;
    int vertex,f;
    u.v=1;
    u.w=0;
    o.push(u);
    while(!o.empty())
    {
       u=o.front();
       o.pop();
       f=0;
       p[u.v]=1;
       len[u.v]=u.w;
       len2[u.v]=len[u.v];
       for(int i=0;i<g[u.v].dest.size();i++)
       {
          vertex=g[u.v].dest[i].v;
          if(!p[vertex])
          {
             x.v=vertex;
             x.w=u.w+g[u.v].dest[i].w;
             o.push(x);
             f=1;
             way[u.v][vertex]=1;
          }
       }
       if (f==0) {o2.push(u.v);o3.push(u.v);}
          
    }
}
void BFS3()
{
    char p[MaxN];
    fill(p,p+n+1,0);
    int u,vertex;
    while(!o3.empty())
    {
       u=o3.front();
       o3.pop();
       p[u]=1;
       for(int i=0;i<g[u].dest.size();i++)
       {
          vertex=g[u].dest[i].v;
          if(!p[vertex])
          {
             o3.push(vertex);
             if(len[vertex] < len[u]){len2[vertex]=len[vertex]; len[vertex]=len[u];}
          }
       }
          
    }
}
void BFS2()
{
    char p[MaxN];
    fill(p,p+n+1,0);
    while (!o.empty()) o.pop();
    str u,x;
    u.v=1;
    u.w=0;
    o.push(u);
    maxlen=-1;
    while(!o.empty())
    {
       u=o.front();
       o.pop();
       p[u.v]=1;
       maxlen=max(maxlen,u.w);
       for(int i=1;i<= n;i++)
       {
          if(a[u.v][i] != -1 && !p[i])
          {
             x.v=i;
             x.w=a[u.v][i]+u.w;
             o.push(x);
          }
       }
    }
}
void go()
{
    char p[MaxN];
    fill(p,p+n+1,0);
    int u;
    int mx=-1,pmx,t,vertex,maxl;
    while(!o2.empty())
    {
       u=o2.front();
       o2.pop();
       p[u]=1;

       mx=-1;t=0;maxl=-1;pmx=0;
       for(int j=0; j < m[u].v.size();j++)
               {
                    if(way[u][m[u].v[j]])
                    {
                    if(max(len[m[u].v[j]] - a[m[u].v[j]][u],len2[vertex]) > mx){
                         mx = len[m[u].v[j]] - a[m[u].v[j]][u]; 
                         pmx=m[u].v[j];
                    }
                    }
                    else
                    {
                    t=m[u].v[j];
                    }
                    maxl=max(maxl,len[m[u].v[j]]);
               }
               if(t && maxl - a[u][t] > mx) pmx=t;
               m[u].p=pmx; 



       for(int i=0;i<g[u].dest.size();i++)
       {
          vertex=g[u].dest[i].v;
          if(vertex != pred[u]){   
               o2.push(vertex);
               pred[vertex]=u;
          }
       }
    }
}
void chek_len()
{
   for(int i=1;i<=n;i++)
     printf("%d ",len[i]);
     printf("\n");
}
void chek_len2()
{
   for(int i=1;i<=n;i++)
     printf("%d ",len2[i]);
     printf("\n");
}
void chek()
{
  for(int i=1;i<=n;i++)
    printf("%d ",m[i].p );
    printf("\n");
}
int main()
{
  freopen("input.txt","r",stdin);
  freopen("output.txt","w",stdout);
  
  for(int i=0;i< 2001;i++)
      for(int j=0;j<2001;j++)
          a[i][j]=-1;
  for(int i=0;i< 2001;i++)
      for(int j=0;j<2001;j++)
          way[i][j]=0;
  scanf("%d",&n);
  int x,y,z;
  fill(len,len+n+1,0);
  fill(pred,pred+n+1,0);
  for(int i=1;i<=n;i++)
    m[i].p=0;
  str t;
  for(int i=0;i<n-1;i++)
  {
    scanf("%d%d%d",&x,&y,&z);
    t.v=y;
    t.w=z;
    a[x][y]=z;
    a[y][x]=z;
    g[x].dest.push_back(t);
    t.v=x;
    g[y].dest.push_back(t);
    t.v=y;
    m[x].v.push_back(y);
  }
  BFS();
 // chek_len();
  BFS3();
  go();
 // chek_len();
 // chek_len2();
 // chek();
  for(int i=1;i<=n;i++)
    if(m[i].p)
    {
       a[i][m[i].p]=0;
       a[m[i].p][i]=0;
    }
    BFS2();
    printf("%d", maxlen);
}
