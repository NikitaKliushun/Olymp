#include <stdio.h>
#include <cmath>
#include <map>
#define int64 long long
using namespace std;
long long n,ans,i,nn;
map <long,bool> d;
int main() {
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	scanf("%d",&n); i = 2; nn = n;
	long double ii = cbrt(n); int64 k = ii;
	if(ii == k) {printf("1"); return 0;}
	while (i * i <= n) {
		if(n % i == 0) {d[i] = true; n = n/i;} 
		   else i++;
	}
	if(n != 0) d[n] = true;
	map <long,bool> :: iterator it; ans = 1;
	for(it = d.begin(); it != d.end(); it++) ans *= (it -> first);
    printf("%d",(ans * ans * ans)/nn);  
	return 0; 
}
