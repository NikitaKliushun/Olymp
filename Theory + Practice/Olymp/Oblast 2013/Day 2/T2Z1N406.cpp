//Sinyak Sergei 11B Task 1 N 406
//Very interesting task!!!
#include<cstdio>
using namespace std;
#define FOR(i,a,b) for(int i=(int)a;i<=(int)b;++i)
#define REP(i,n) FOR(i,0,n-1)
#define REPT(i,n) FOR(i,1,n)
#define MAXN 110
int N,K,A[MAXN],P[MAXN];
main(){
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    scanf("%d%d",&N,&K);
    REP(i,N)
        scanf("%d%d",&A[i],&P[i]),
        K-=A[i];
    if (K>0){
        printf("%d\n",K);
        REP(i,N)
            while(K>0&&A[i]<P[i])
                printf("%d\n",i+1),
                --K,
                ++A[i];
    }
    else if (K<0){
        printf("%d\n",-K);
        REP(i,N)
            while(K<0&&A[i]>0)
                printf("-%d\n",i+1),
                ++K,
                --A[i];
    }
    else
        printf("0");
}
