//Grinchik Vsevolod Vladimirovich, minski raion, 10 "v" klass, n3
#include<iostream>
#include<string>
#include<vector>
#include<cmath>
#include<algorithm>
using namespace std;
int i, j, m=0, a, c, n, a1, c1, s=0, r;
char b;
int main(){
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	vector<vector<char> > p(13);
	for(i=0; i<12; i++){
		p[i].resize(13);}
	for(i=1; i<11; i++){
		for(j=1; j<11; j++){
			cin >> p[i][j];
			if(p[i][j]=='#'){
				r++;}
		}}
		for(i=1; i<12; i++){
		p[i][0]='.';
		p[i][11]='.';
		p[0][i]='.';
		p[11][i]='.';}


	cin >> n;
	for(i=0; i<n; i++){
		s=0;
		cin >> a >> b;
		if(b=='k'){
			b--;}
		c=b-96;
		if(p[a][c]=='.' || p[a][c]=='1'){
			cout << "MISS\n";}
		else{
			if(p[a][c+1]=='.' && p[a][c-1]=='.' && p[a+1][c]=='.' && p[a-1][c]=='.'){if(r==1){cout << "GAME OVER"; break;}
					cout << "DEAD\n";
					p[a][c]='1';r--;}
				else{
				if(p[a][c+1]=='#' || p[a][c-1]=='#' || p[a+1][c]=='#' || p[a-1][c]=='#'){
					cout << "HIT\n";
					p[a][c]='1';r--;}
				else{
					a1=a; c1=c;
					if(p[a][c+1]=='1'){
					    c++;
						s++;
						if(p[a][c+1]=='#'){
							cout << "HIT\n";
							p[a1][c1]='1';r--;}
						if(p[a][c+1]=='1'){
							c++;
							s++;
							if(p[a][c+1]=='1'){if(r==1){cout << "GAME OVER"; break;}
								cout << "DEAD\n";
								p[a1][c1]='1';r--;}
							else{
								if(p[a][c+1]=='#'){
									cout << "HIT\n";
									p[a1][c1]='1';r--;}}}}


				    if(p[a][c-1]=='1'){
					    c--;
						s++;
						if(p[a][c-1]=='#'){
							cout << "HIT\n";
							p[a1][c1]='1';r--;}
						if(p[a][c-1]=='1'){
							c--;
							s++;
							if(p[a][c-1]=='1'){if(r==1){cout << "GAME OVER"; break;}
								cout << "DEAD\n";
								p[a1][c1]='1';r--;}
							else{
								if(p[a][c-1]=='#'){
									cout << "HIT\n";
									p[a1][c1]='1';r--;}}}}
					if(p[a1][c1]!='1' && s!=0){if(r==1){cout << "GAME OVER"; break;}
					cout << "DEAD\n";r--;}
					if(s=0){
						
						if(p[a+1][c]=='1'){
					    a++;
						s++;
						if(p[a+1][c]=='#'){
							cout << "HIT\n";r--;
							p[a1][c1]='1';}
						if(p[a+1][c]=='1'){
							a++;
							s++;
							if(p[a+1][c]=='1'){if(r==1){cout << "GAME OVER"; break;}
								cout << "DEAD\n";
								p[a1][c1]='1';r--;}
							else{
								if(p[a+1][c]=='#'){
									cout << "HIT\n";
									p[a1][c1]='1';r--;}}}}


				    if(p[a-1][c]=='1'){
					    a--;
						s++;
						if(p[a-1][c]=='#'){
							cout << "HIT\n";
							p[a1][c1]='1';r--;}
						if(p[a-1][c]=='1'){
							a--;
							s++;
							if(p[a-1][c]=='1'){if(r==1){cout << "GAME OVER"; break;}
								cout << "DEAD\n";
								r--;
								p[a1][c1]='1';}
							else{
								if(p[a-1][c]=='#'){
									cout << "HIT\n";
									p[a1][c1]='1';r--;}}}}
					if(p[a1][c1]!='1' && s!=0){if(r==1){cout << "GAME OVER"; break;}
					cout << "DEAD\n";r--;}}}}}}
}