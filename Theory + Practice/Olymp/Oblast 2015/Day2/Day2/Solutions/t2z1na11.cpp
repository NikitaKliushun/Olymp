//Rudzko Jan Wiaczaslawawicz, MGOL, 10 klass, zadacza 1
#include <fstream>
#include <iostream>
#include <string>

int main()
{
	std::ifstream fin("input.txt");
	std::ofstream fout("output.txt");
	
	std::string s1, s2;
	
	std::getline(fin, s1);
	std::getline(fin, s2);
	
	long i = s1.size() - 1;
	long j = s2.size() - 1;
	
	long lRifm = 0;
	while(true)
	{
		if(s1[i] == s2[j])
			lRifm++;
		else
			goto l1;
			
		i--;
		j--;
		
		if(i == -1)	
			break;
		if(j == -1)	
			break;
				
	}
	
	l1:
	
	fout << lRifm;	
		
	fin.close();
	fout.close();
	return 0;
}
