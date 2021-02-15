#include <fstream>
using namespace std;
long n,x,y,z,mn;
int main() {
	ifstream f1("input.txt");
	ofstream f2("output.txt");
	f1 >> n; mn = 999999999;
	for(size_t i = 1; i < n; i++){
		f1 >> x >> y >> z;
		if(mn > z) mn = z;
	}
	f2 << mn;
	f1.close(); f2.close();
	return 0;
}
