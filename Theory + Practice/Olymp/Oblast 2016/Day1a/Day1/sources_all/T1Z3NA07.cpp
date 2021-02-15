//Grinchik Vsevolod Vladimirovich, minski raion, 10 "v" klass, n3
#include<iostream>
#include<string>
#include<vector>
#include<cmath>
#include<algorithm>
using namespace std;
int i, j, n, m, b, c, k=1, z, l;
int main(){
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	cin >> n;
	m=n;
	vector<int> a(n+1);
	for(i=0; i<n; i++){
		cin >> a[i];}
	while(k!=0){k=0;
	for(i=0; i<n; i++){
		for(j=0; j<n; j++){
			if(a[i]==a[j] && i!=j && m>=abs(j-i) && abs(j-i)!=1){
				m=abs(j-i);;
				b=i;
				c=j;}}}
	if(b<c){
		l=b;}
	else{
		l=c;}
	for(i=l+1; i<b+1; i++){
		if(a[i]==a[l]){
			m--;
		if(m==1){
			cout << n;
			k=0;
			break;}}
		else{z=a[i];
			for(j=0; j<n; j++){
				if(a[j]==z){n--;
					for(k=j; k<n+1; k++){
						a[k]=a[k+1];}}}
			m=n;break;}}}




}