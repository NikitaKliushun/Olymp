#include<fstream>

using namespace std;

int main()
{
	ifstream in ("input.txt");
	ofstream out("output.txt");
	long n;
	long n_p;
	long i;
	long n_t;
	long k;
	in >> n >> n_p;
	long sw[n]; 
	for(i=0; i<n; i++)
	{
		in >> sw[i];
		if (sw[i]>n_t)
		{
			n_t = sw[i];
		}
	}
	long all[n_t];
	for(i=0; i<n_t; i++)
	{
		all[i]=0;
	}
	for(i=0; i<n_t; i++)
	{
		for(k=0; k<n; k++)
		{
			if(sw[k]==i+1)
			{
				all[i]++;
			}
		}
	}
	long sum = 0;
	for(i=0; i<n_t; i++)
	{
		all[i] /= n_p;
		sum += all[i];
	}

	out << sum << endl;
	for(i=0; i<n_t; i++)
	{
		for(k=0; k<all[i]; k++)
		{
			out << i+1 << " ";
		}
	}
	return 0;
}
