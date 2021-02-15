// яковлев ¬€чеслав
#include <iostream>
#include <fstream>
using namespace std;

	ifstream fin("input.txt");
	ofstream fout("output.txt");
	
	long long n,m,K1[2][100002],K2[2][100002],ans[2][100002],k=0;
	
	long long min( long long a, long long b ){
		if( a < b ) return a;
		else return b;	
	}
	
	void Init(){
		fin >> n >> m;
		
		for( long long i = 0; i < n; i++ ){
			fin >> K1[0][i];
			if( i % 2 == 0 ) K1[1][i] = 1;
			else K1[1][i] = 0;
		}
		
		for( long long i = 0; i < m; i++ ){
			fin >> K2[0][i];
			if( i % 2 == 0 ) K2[1][i] = 1;
			else K2[1][i] = 0;
		}
		
	}
	
	void Def(){
		long long x0=0,x1,y0=0,y1,z;
		long long i = n-1, j = m-1;
		
		while( ( i > -1 || x0 != 0 ) && ( j > -1 || y0 != 0 ) ){
			if( x0 == 0 ){
				x0 = K1[0][i];
				x1 = K1[1][i];
				i--; 
			}
			
			if( y0 == 0 ){
				y0 = K2[0][j];
				y1 = K2[1][j];
				j--; 
			}
			
			z = min(x0,y0);
			
			
			if( k != 0 ){
				
				if( x1 == y1 && ans[1][k-1] == 0 ){
					ans[0][k-1] += z;
					x0 -= z;
					y0 -= z;
				}
				else
				if( x1 != y1 && ans[1][k-1] == 1 ){
					ans[0][k-1] += z;
					x0 -= z;
					y0 -= z;					
				}
				else{
					ans[0][k] = z;					
					x0 -= z;
					y0 -= z;
					if( x1 == y1 )  ans[1][k] = 0;
					else            ans[1][k] = 1;
					k++;
				}
				
			}
			else{
				ans[0][k] = z;					
				x0 -= z;
				y0 -= z;
				if( x1 == y1 )  ans[1][k] = 0;
				else            ans[1][k] = 1;
				k++;
			}
			
			
		}
		while( i > -1 || x0 != 0 ){
			if( x0 == 0 ){
				x0 = K1[0][i];
				x1 = K1[1][i];
				i--;
			}
			
			if( x1 == ans[1][k-1] ){
				ans[0][k-1] += x0;
				x0 = 0;
			}
			else{
				ans[0][k] = x0;
				ans[1][k] = x1;
				k++;
				x0 = 0;
			}
		}
		
		while( j > -1 || y0 != 0 ){
			if( y0 == 0 ){
				y0 = K2[0][j];
				y1 = K2[1][j];
				j--;
			}
			
			if( y1 == ans[1][k-1] ){
				ans[0][k-1] += y0;
				y0 = 0;
			}
			else{
				ans[0][k] = y0;
				ans[1][k] = y1;
				k++;
				y0 = 0;
			}
		}
		
	}
	
int main(){
	
	Init();
	
	Def();
	
	if( ans[1][k-1] == 0 ) k--;
	
	for( long long i = k-1; i > -1; i-- )
		fout << ans[0][i] << " ";
	
	fin.close();
	fout.close();
	return 0;
}
