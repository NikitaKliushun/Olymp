//Dmitry Shakhanovich
// Problem 2
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <algorithm>
#define MaxN 100001
#define ll long long
using namespace std;

ll int d;

ll int chek_prime()
{
     int n=sqrt(d);
     if(d <= 2 && d > 0)return d;
     for(int i=2;i<=n;i++)
        if( d % i == 0) return i;
    return -1;
}
bool hit()
{
    for(int i=1; i < sqrt(d);i++)
        if(i*i*i == d) return true;
    return false;
}
ll int cpr(ll int x)
{
    if(x >= d) return d;
    for(int i=x+1;i <= d/2; i++)
        if(d % i == 0) return i;
}
void prin(int x)
{
    ll int a=(x*x*x)/d;
    printf("%lld",a);
}
int main()
{
     freopen("input.txt","r",stdin);
     freopen("output.txt","w",stdout);

     scanf("%lld",&d);
     ll int prime = chek_prime();

     if(prime == -1) {
        printf("%lld",d*d);
        return 0;
     }
     if (hit()) { printf("1"); return 0;}
     if( d <= 100000){
     for(int i=1;i<=d;i++)
     {
         if((i*i*i) > d && (i*i*i)% d == 0){prin(i); return 0;}
     }} else{
     for(int i=prime;i<=d;i++)
     {
         if(d % i == 0 && (i*i*i) > d && (i*i*i) % d == 0) {prin(i);return 0;}
     }
     ll int g=d*d;
     printf("%lld",g);
}}
