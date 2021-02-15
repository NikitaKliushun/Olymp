//Sinyak Sergei 11B Dzerzhinsk Gymnasium 29.12.1995 Task 2
//Answer should be C from n by k without clones but i know only C from n by k with it
#include<cstdio>
#include<vector>
#include<iostream>
using namespace std;
#define FOR(i,a,b) for(int i=(int)a;i<=(int)b;i++)
#define REP(i,n) FOR(i,0,n-1)
#define REPT(i,n) FOR(i,1,n)
#define SZ(c) (int)c.size()
typedef long long ll;
ll A,C,MB;
int K;
vector<int>p;
int factor(ll X);
ll Solve(int n);
main(){
    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);
    cin>>A>>C;
    if (C%A==0)
        MB=C/A,
        K=factor(MB),
        cout<<Solve(K);
    else
        cout<<0<<endl;
}
int factor(ll X){
    int res=0,col;
    for(int i=2;i*i<=X;++i)
        if (X%i==0){
            col=0;
            while(X%i==0)
                ++col,
                X/=i;
            if (col>1)
                p.push_back(col);
            res+=col;
        }
    if (X>1)
        p.push_back(1),
        ++res;
    return res;
}
ll Solve(int n){
    ll C[n+1][n+1];
    C[0][0]=1;
    REPT(i,n){
        C[i][0]=C[i][i]=1;
        REPT(j,i-1)
            C[i][j]=C[i-1][j-1]+C[i-1][j];
    }
    ll res=0;
    FOR(j,0,n)
        res+=C[n][j];
    return res;
}
