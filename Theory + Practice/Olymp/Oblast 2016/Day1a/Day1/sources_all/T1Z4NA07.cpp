//Grinchik Vsevolod Vladimirovich, minski raion, 10 "v" klass, n3
#include<iostream>
#include<string>
#include<vector>
#include<cmath>
#include<algorithm>
using namespace std;
int i, j, n, m, k=0, z=1;
int main(){
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	cin >> n >> m;
	vector<vector<int> > d(n);
	for(i=0; i<n; i++){
		d[i].resize(m);}
	for(i=0; i<n; i++){
		for(j=0; j<m; j++){
			cin >> d[i][j];}}
	for(i=0; i<n-1; i++){
		for(j=0; j<m; j++){
			if(d[i][j]==d[i+1][j]){
				z++;
				break;}}}
			if(z<n){
				cout << -1;}
			else{
				for(i=0; i<m; i++){
					for(j=0; j<n-1; j++){k=0;
						if(d[j][i]!=d[j+1][i]){k=1;}}
					if(k==0){
						cout << 0; break;}}}


}