//Sinyak Sergei 11B Task 3 N 406
//Very interesting problem, big thx to author.
//It was  really cool and interesting for me
//to solve it!
#include<cstdio>
#include<vector>
#include<memory.h>
using namespace std;
#define FOR(i,a,b) for(int i=(int)a;i<=(int)b;++i)
#define FORD(i,a,b) for(int i=(int)a;i>=(int)b;--i)
#define REP(i,n) FOR(i,0,n-1)
#define REPT(i,n) FOR(i,1,n)
#define SZ(c) (int)c.size()
#define PB push_back
#define MAXN 10010
typedef pair<int,int> pii;
vector<pii>p;
int N,M;
vector<int>g[MAXN];
char color[MAXN];
void bipart();
int ranec();
main(){
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    scanf("%d%d",&N,&M);
    REP(i,M){
        int x,y;
        scanf("%d%d",&x,&y),--x,--y;
        g[x].PB(y);
        g[y].PB(x);
    }
    bipart();
    printf("%d",ranec()-M);
}
int ranec(){
    int S=0,Sn=0;
    vector<int>A;
    REP(i,SZ(p)){
        if (p[i].first>p[i].second)
            A.PB(p[i].first-p[i].second),
            S+=p[i].second;
        else
            A.PB(p[i].second-p[i].first),
            S+=p[i].first;
        Sn+=A.back();
    }
    char ok[MAXN];
    memset(ok,0,sizeof(ok));
    ok[0]=1;
    int MP=Sn/2;
    REP(i,SZ(A))
        FORD(j,MP-A[i],0)
            if (ok[j]&&!ok[j+A[i]])
                ok[j+A[i]]=true;
    int P1=0;
    FORD(j,MP,0)
        if (ok[j]){
            P1=j;
            break;
        }
    int P2=Sn-P1;
    P1+=S,P2+=S;
    return P1*P2;
}
int dfs_p1,dfs_p2;
void dfs(int v,int p=-1){
    if (p==-1||color[p]==1)
        color[v]=-1,
        ++dfs_p2;
    else
        color[v]=1,
        ++dfs_p1;
    REP(i,SZ(g[v])){
        int to=g[v][i];
        if (to==p) continue;
        if (color[to]==0)
            dfs(to,v);
    }
}
void bipart(){
    memset(color,0,sizeof(color));
    REP(i,N)
        if (color[i]==0){
            dfs_p1=0;
            dfs_p2=0;
            dfs(i);
            p.PB(pii(dfs_p1,dfs_p2));
        }
}
