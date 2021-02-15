#include <iostream>
#include <fstream>
#include <string.h>
using namespace std;

	ifstream fin("input.txt");
	ofstream fout("output.txt");
	
	string s,t;
	
	long long l,ans=0,l1,l2;
	
	void Init(){
		fin >> s;
		fin >> t;
		l1 = s.length();
		l2 = t.length();
	}
	
int main(){
	
	Init();
	
	while( (l < l1 && l < l2) && ( s[l1-l-1] == t[l2-l-1] ) ){
		ans++;
		l++;
	}
	
	fout << ans;
	
	fin.close();
	fout.close();
	return 0;
}
