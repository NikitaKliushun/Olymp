//Sinyak Sergei 11B Dzerzhinsk Gymnasium 29.12.1995 Task 3
#include<cstdio>
#include<iostream>
#include<memory.h>
#include<algorithm>
using namespace std;
#define FOR(i,a,b) for(int i=(int)a;i<=(int)b;i++)
#define REP(i,n) FOR(i,0,n-1)
#define REPT(i,n) FOR(i,1,n)
#define MAXN 410
#define MAXM 410
int N,M;
char C[MAXN][MAXM],ok[MAXN][MAXN][MAXM];
long long R=0;
main(){
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    cin>>N>>M;
    REP(i,N)REP(j,M)
        cin>>C[i][j];
    memset(ok,1,sizeof(ok));
    FOR(d,2,N)
    FOR(a,0,N-d){
        int b=a+d-1,l=0;
        REP(r,M){
            ok[a][b][r]=(ok[a+1][b-1][r]&&C[a][r]==C[b][r]);
            if (ok[a][b][r])
                R+=r-l+1;
            else
                l=r+1;
        }
    }
    cout<<R<<endl;
}
