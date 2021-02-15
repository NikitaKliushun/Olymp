#include<fstream>
#include<string>
#include<algorithm>
using namespace std;

int main()
{
	ifstream in("input.txt");
	ofstream out("output.txt");
	string fir, sec;
	in >> fir;
	in >> sec;
	long i = 0;
	long answer = 0;
	reverse(fir.begin(),fir.end());
	reverse(sec.begin(),sec.end());
	while(i==answer){
		if(fir[i]==sec[i])
		{
			answer++;
		}
		i++;
	}
	out << answer;
	return 0;
}
