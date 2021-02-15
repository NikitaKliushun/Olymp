#include <fstream>
#include <stdlib.h>
using namespace std;
int n,k;
int main() {
	ifstream f1("input.txt");
	ofstream f2("output.txt");
	f1 >> n >> k;
	f2 << (n*k) + rand()/2;
	return 0;
}
