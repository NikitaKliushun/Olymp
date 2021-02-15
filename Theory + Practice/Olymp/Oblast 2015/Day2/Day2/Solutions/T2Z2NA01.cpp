#include <iostream>
#include <fstream>
#include <math.h>
using namespace std;

	ifstream fin("input.txt");
	ofstream fout("output.txt");
	
	long long x, del[100000],a[100000],y=1,ans=1;
	
	void Init(){
		fin >> x;
		
		for( int i = 0; i < 100000; i++ ) del[i] = 0;
		for( int i = 0; i < 100000; i++ ) a[i] = 0;
		
		long long i = 2;
		
		while( x != 1 && i < 100000 ){
			if( x % i == 0 ){
				del[i]++;
				x /= i;
			}
			else i++;
		}
		
	}
	
int main(){
	
	Init();
	
	for( long long i = 2; i < 100000; i++ )
		if( del[i] != 0 ){
			if( del[i] % 3 == 0 ) y = y * pow(i,(long long)(del[i]/3));
			else y = y * pow(i,(long long)(del[i]/3+1));
		}
		
	long long i = 2;
		
	while( y != 1 && i < 100000 ){
		if( y % i == 0 ){
			a[i]++;
			y /= i;
		}
		else i++;
	}
	
	for( int i = 0; i < 100000; i++ ) a[i] = a[i]*3;
		
	for( int i = 0; i < 100000; i++ )
		if( a[i] != 0 ) ans = ans * pow(i,(long long)(a[i]-del[i]));
	
	if( x != 1 ) ans = ans * pow(x,2);	
		
	fout << ans;
	
	fin.close();
	fout.close();
	return 0;
}
