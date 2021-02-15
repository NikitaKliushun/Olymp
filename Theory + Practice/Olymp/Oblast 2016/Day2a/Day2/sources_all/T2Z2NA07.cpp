// Vsevolod Grinchik, Minski Raion, senitca shool, klass 10, n2
#include<iostream>
#include<stdio.h>
#include<vector>
using namespace std;
int i, j, m, n, mi=1000, z, f;
int main(){
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	cin >> m >> n;
	vector<int> h(m);
	vector<int> b(n);
	vector<int> k(m);
	for(i=0; i<m; i++){
		cin >> h[i];}
	for(i=0; i<n; i++){
		cin >> b[i];}
	for(i=0; i<n; i++){
		if(b[i]+h[j]<mi){
			mi=b[i]+h[j];
			f=i;
		}}
		b[f]=0;
		k[0]=f;
	for(j=1; j<m; j++){
	for(i=0; i<n; i++){
		if(b[i]+h[j]>mi){
			mi=b[i]+h[j];
			f=i;
		}}
		b[f]=0;
		if(f!=k[j-1]){
			k[j]=f;}

		else{z=1;}}
	if(z!=1){
		for(i=0; i<m; i++){
			cout << k[i]+1 << " ";}}
	else{
		cout << -1;}

	}
