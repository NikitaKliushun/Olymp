//Sinyak Sergei 11B Task 2 N 406
//just the same
#include<cstdio>
#include<algorithm>
using namespace std;
#define FOR(i,a,b) for(int i=(int)a;i<=(int)b;++i)
#define REP(i,n) FOR(i,0,n-1)
#define REPT(i,n) FOR(i,1,n)
#define MAXN 100010
#define INF 2000000000
int N,K,D[MAXN],ID[MAXN],RL,RC=INF;
bool cmp(const int&lhs,const int&rhs){
    return D[lhs]<D[rhs];
}
main(){
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    scanf("%d%d",&N,&K);
    REP(i,N)
        scanf("%d",&D[i]),
        ID[i]=i;
    sort(ID,ID+N,cmp);
    REP(i,N-K+1){
        if (D[ID[i+K-1]]-D[ID[i]]<RC)
            RL=i,
            RC=D[ID[i+K-1]]-D[ID[i]];
    }
    FOR(i,RL,RL+K-1)
        printf("%d ",ID[i]+1);
}
