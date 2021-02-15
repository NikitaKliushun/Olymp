// Vsevolod Grinchik, Minski Raion, senitca shool, klass 10, n1
#include<iostream>
#include<stdio.h>
#include<vector>
using namespace std;
int i, j, m, w, s, b, t, k, z=0, l;
int main(){
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	cin >> m >> w;
	vector<int> d(m);
	for(i=0; i<m; i++){
		cin >> d[i];}
	cin >> s >> b >> t;
	
	for(i=0; i<m; i++){
	if(b>s){
		k=b-s+1;}
	else{
		k=w-s+b;}
		while(k+w<=d[i]){
			if(k==t){
				z++;}
			k=k+w;}
		l=b+d[i]-k;
		if(l<=w){
			s=l;}
		else{
			s=l-w;}}
	cout << z;
	}