#include <iostream>
#include <fstream>
#include <queue>
using namespace std;

ifstream f1("input.txt");
ofstream f2("output.txt");
long int dor=0,col=0,n,m,i,j,kol=0,u,v,head[10010],next[200020],dest[200020],d[10010],comp[2][10010],nc,nn,vr[10010],zah[10010],comp_r[10010];

void add(int u,int v)
{
    kol++;
    dest[kol]=v;
    next[kol]=head[u];
    head[u]=kol;
}

void BFS(int u,int color)
{
    queue<int> o;
    int x;
    o.push(u);
    d[u]=0;
    comp[0][col]++;
    while (!o.empty())
    {
        x=o.front();
        o.pop();
        if (zah[x]==0)
        {
            comp_r[col]+=vr[x];
            zah[x]++;
        }
        int j=head[x];
        while (j!=-1 and j!=0)
        {
            if (d[dest[j]]>d[x]+1 and zah[dest[j]]==0)
            {
                d[dest[j]]=d[x]+1;
                if (d[dest[j]]%2==0)
                    comp[0][col]++;
                else
                    comp[1][col]++;
                o.push(dest[j]);
            }
            j=next[j];
        }
    }
}

main ()
{
    f1>>n>>m;
    for (i=1;i<=n;i++)
    {
        head[i]=-1;
        d[i]=1000000000;
        comp[0][i]=0;
        comp[1][i]=0;
        vr[i]=0;
        zah[i]=0;
        comp_r[i]=0;
    }
    for (i=1;i<=m;i++)
    {
        f1>>u>>v;
        add(u,v);
        add(v,u);
        vr[u]++;
        vr[v]++;
    }
    if (m==0)
    {
        if (n%2==0)
            f2<<(n/2)*(n/2);
        else
            f2<<(n/2)*(n/2+1);
    }
    else
    {
        for (i=1;i<=n;i++)
        {
            if (d[i]==1000000000)
            {
                col++;
                BFS(i,col);
                comp_r[col]/=2;
            }
        }
    }
    nc=0;
    nn=0;
    for (i=1;i<=col;i++)
    {
        if (comp_r[i]<comp[0][i]*comp[1][i])
        {
            dor+=(comp[0][i]*comp[1][i]-comp_r[i]);
        }
        if (nc*comp[0][i]+nn*comp[1][i]>nc*comp[1][i]+nn*comp[0][i])
        {
            dor+=nc*comp[0][i]+nn*comp[1][i];
            nc+=comp[1][i];
            nn+=comp[0][i];
        }
        else
        {
            dor+=nc*comp[1][i]+nn*comp[0][i];
            nc+=comp[0][i];
            nn+=comp[1][i];
        }
    }
    f2<<dor;

    f1.close();
    f2.close();
}
