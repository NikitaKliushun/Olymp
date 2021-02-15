// яковлев ¬€чеслав
#include <iostream>
#include <math.h>
#include <fstream>
using namespace std;

	ifstream fin("input.txt");
	ofstream fout("output.txt");
	
	long long a,b,ans=0,z;
	
	long long min( long long x, long long y ){
		if( x > y ) return y;
		else return x;
	}
	
	void Init(){
		fin >> a >> b;
		
		if( a == b ) z = a+b;
		else z = min(a,b)*2+1;
		
		ans = z;
	}
	
int main(){
	
	Init();
	
	for( int i = 2; i <= pow(z,0.5); i++ ){
		ans += 1 + (z - i*i)/i;
	}
	
	fout << ans;
	
	fin.close();
	fout.close();
	return 0;
}
