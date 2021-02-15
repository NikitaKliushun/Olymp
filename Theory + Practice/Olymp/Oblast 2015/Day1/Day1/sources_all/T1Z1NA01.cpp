// яковлев ¬€чеслав
#include <iostream>
#include <fstream>
using namespace std;

	ifstream fin("input.txt");
	ofstream fout("output.txt");

	int A[101],n,k,ans=0;

	void Init(){
		fin >> n >> k;
		
		for( int i = 0; i < 101; i++ )
			A[i] = 0;
		
		int x;
		for( int i = 0; i < n; i++ ){
			fin >> x;
			A[x]++;
		}
	}

int main(){
	
	Init();
	
	for( int i = 1; i < 101; i++ )
		ans += A[i]/k;
		
	fout << ans << endl;
	
	for( int i = 1; i < 101; i++ )
		for( int j = 1; j <= A[i]/k; j++ )
			fout << i << " ";
	
	fin.close();
	fout.close();
	return 0;
}
