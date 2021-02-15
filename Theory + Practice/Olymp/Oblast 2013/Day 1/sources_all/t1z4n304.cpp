#include <iostream>
#include <fstream>
#include <stack>

using namespace std;

ifstream f1("input.txt");
ofstream f2("output.txt");
long int ost[200010],start[200010],fin,n,m,i,j,u,v,kol=0,k,dest[200010],next[200010],head[200010],mon=0;
stack<long int>s;

void add(int u,int v)
{
    kol++;
    dest[kol]=v;
    next[kol]=head[u];
    head[u]=kol;
}

void DFS(int u)
{
    int j=head[u];
    while (j!=-1 and j!=0)
    {
        if (dest[j]==fin)
        {
            s.push(u);
            mon++;
            j=-1;
            while (!s.empty())
            {
                ost[s.top()]--;
                s.pop();
            }
        }
        else
        {
            if (ost[dest[j]]>0)
            {
                s.push(u);
                DFS(dest[j]);
            }
            else
            if (ost[dest[j]]==0)
            {
                while (!s.empty())
                    s.pop();
                j=-1;
            }
        }
        j=next[j];
    }
}

main ()
{

    f1>>n>>m>>k;
    for (j=1;j<=n;j++)
    {
        head[j]=-1;
    }
    for (i=1;i<=m;i++)
        f1>>start[i];
    for (i=1;i<=n;i++)
    {
        f1>>v;
        add(i,v);
        ost[i]=k;
    }
    f1>>fin;
    for (i=1;i<=m;i++)
    {
        DFS(i);
    }
    f2<<mon;
    f1.close();
    f2.close();
}
