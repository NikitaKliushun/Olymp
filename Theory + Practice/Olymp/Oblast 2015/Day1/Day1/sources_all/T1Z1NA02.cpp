#include <iostream>
#include <stdio.h>
#include <map>
#include <queue>
#include <algorithm>
using namespace std;
long n,k,buf,ans;
map <int,int> f;
queue < pair <int,int> > q;
int main() {
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	scanf("%d %d",&n,&k); 
	for(size_t i = 1; i <= n; ++i) {scanf("%d",&buf); f[buf] += 1;}
	map <int,int> :: iterator it; ans = 0;
	for(it = f.begin(); it != f.end(); it++)
		if((it -> second) / k != 0)  
		   {int b = (it -> second) / k; q.push(make_pair(it -> first,b)); ans += b;}
	printf("%d\n",ans);
	while(!q.empty()) {
	    pair <int,int> buf1;
		buf1 = q.front(); q.pop(); 
		for(size_t i = 1; i <= buf1.second; ++i) printf("%d ",buf1.first);
	}
	return 0;
}
