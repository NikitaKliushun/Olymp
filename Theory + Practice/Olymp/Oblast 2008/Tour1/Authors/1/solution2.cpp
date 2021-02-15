#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <math.h>
using namespace std;

ifstream InF("input.txt");
ofstream OutF("output.txt");

int main()
{
	int n;
	InF >> n;

	int ans=1000000000,bh,bw;
	for (int w=1;w<=n;w++) {
		for (int h=1;h*w<=n;h++) {
			int cur = abs(h-w) + (n - h*w);

			if (cur < ans) {
				ans = cur;

				bh = h;
				bw = w;
			}
		}
	}
	OutF << bw << " " << bh << endl;
	return 0;
}
