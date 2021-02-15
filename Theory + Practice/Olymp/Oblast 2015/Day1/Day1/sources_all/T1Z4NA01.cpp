// яковлев ¬€чеслав
#include <iostream>
#include <fstream>
using namespace std;

	ifstream fin("input.txt");
	ofstream fout("output.txt");
	
	long long cost[200004],nalog[200004],head[200004],to[200004],pred[200004],list[200004],n,k=0,color[200004],a[200004],ans=0,maxx;
	
	void Init(){
		long long x,y,z;
		fin >> n;
		
		for( long long i = 0; i < n; i++ ) list[i] = -1;
		
		for( long long i = 0; i < n-1; i++ ){
			fin >> x >> y >> z;
			x--;
			y--;
			
			to[k] = y;
			pred[k] = list[x];
			list[x] = k;
			nalog[k] = z;
			cost[k] = 0;
			head[k] = x;
			k++;
			
			to[k] = x;
			pred[k] = list[y];
			list[y] = k;
			nalog[k] = z;
			cost[k] = 0;
			head[k] = x;
			k++;
			
		}
		
	}
	
	void Dfs( long long x, long long col[200004], long long k, long long legs[200004] ){
		col[x] = 1;
		for( long long i = 0; i < k; i++ ){
			cost[legs[i]] += nalog[legs[i]];
			cost[legs[i]-1] += nalog[legs[i]];
		}
			
		long long e = list[x];
		while( e != -1 ){
			if( col[to[e]] == 0 ){
				legs[k] = e;
				Dfs(to[e],col,k+1,legs);
			}
			e = pred[e];
		}
	}
	
int main(){
	
	Init();
	
	for( long long i = 0; i < 200004; i++ ) color[i] = 0;
	
	Dfs(0,color,0,a);
	
	for( long long i = 0; i < n*2-2; i++ )
		if( i % 2 == 0 ) ans += cost[i];

	long long e;
	for( long long i = 0; i < n; i++ ){
		maxx = 0;
		e = list[i];
		while( e != -1 ){
			if( head[e] == i && cost[e] > maxx ) maxx = cost[e];
			e = pred[e];
		}
		ans -= maxx;
	}
	
	fout << ans;
	
	fin.close();
	fout.close();
	return 0;
}
