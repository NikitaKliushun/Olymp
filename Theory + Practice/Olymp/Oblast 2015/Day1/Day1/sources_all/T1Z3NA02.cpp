#include <fstream>
#include <stdlib.h>
using namespace std;
long n,m,al,bl,bufa,bufb,buf;
char sa[10000],sb[10000];
int main() {
	ifstream f1("input.txt");
	ofstream f2("output.txt");
	f1 >> n >> m; al = 0; bl = 0;
	for(size_t i = 1; i <= n; ++i) {
	    f1 >> buf;
		for(size_t j = 1; j <= buf; ++j) {if(i % 2 != 0) sa[al] = '1'; else sa[al] = '0'; al++;}
		buf = 0;
	}
	buf = 0;
	for(size_t i = 1; i <= m; ++i) {
	    f1 >> buf;
		for(size_t j = 1; j <= buf; ++j) {if(i % 2 != 0) sb[bl] = '1'; else sb[bl] = '0'; bl++;}
		buf = 0;
	}
    bufa = strtol(sa,0,2); bufb = strtol(sb,0,2);
    bufa = bufa ^ bufb; 
	memset(sa,0,sizeof(sa));
    ltoa(bufa,sa,2);
    long k,l = 0; char c = '1';
    for(k = 0; sa[k]; ++k)
    	if(sa[k] == c) l++; else{f2 << l << " "; l = 1; if(c == '1') c = '0'; else c = '1';}
    f2 << l;
    f1.close(); f2.close();
    return 0;
}
