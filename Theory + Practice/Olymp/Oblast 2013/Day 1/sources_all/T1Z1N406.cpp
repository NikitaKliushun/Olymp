//Sinyak Sergei 11B Dzerzhinsk Gymnasium 29.12.1995 Task 1
#include<cstdio>
#include<memory.h>
using namespace std;
#define FOR(i,a,b) for(int i=(int)a;i<=(int)b;i++)
#define REP(i,n) FOR(i,0,n-1)
#define REPT(i,n) FOR(i,1,n)
#define MAXN 1010
#define MAXV 90000
#define P 86400
int N,T;
int C[MAXV]={};
int ttoi(int hh,int mm,int ss){
    return hh*3600+mm*60+ss;
}
void ptime(int v){
    int hh,mm,ss;
    hh=v/3600;
    v%=3600;
    mm=v/60;
    v%=60;
    ss=v;
    printf("%02d%:%02d:%02d",hh,mm,ss);
}
main(){
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    memset(C,0,sizeof(C));
    scanf("%d%d",&N,&T);
    REP(i,2*N){
        int hh,mm,ss,v;
        scanf("%02d:%02d:%02d",&hh,&mm,&ss);
        v=ttoi(hh,mm,ss);
        C[v]++;
    }
    REP(s,MAXV){
        int f=(s+T)%P;
        if (C[s]==0||C[f]<C[s]) continue;
        REP(i,C[s]){
            ptime(s);
            putchar('-');
            ptime(f);
            printf("\n");
        }
        C[f]-=C[s];
        C[s]=0;
    }
}
