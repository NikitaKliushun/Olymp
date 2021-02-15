#include <fstream>
#include <string>
using namespace std;
string s1,s2;
int l1,l2,ans;
int main() {
	ifstream f1("input.txt");
	ofstream f2("output.txt");
	f1 >> s1 >> s2;
	l1 = s1.length() - 1; l2 = s2.length() - 1;
	ans = 0;
	while(l1 != -1 && l2 != -1){
		if(s1[l1] == s2[l2]) ans++; else break;
		l1--; l2--;
	}
	f2 << ans;
	f1.close(); f2.close();
	return 0;
}
