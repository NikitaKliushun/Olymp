//Lisenko Evgenii Sergeevich, Zadacha 2, Leninski raion, klass 10, MGOL
#include <fstream>
/////////////////
#define P0 std::pair<int, int>


std::ofstream _os("output.txt");
std::ifstream _is("input.txt");

int main(){
	int* Bm, *Wm, blocks, winners, i, buf, Wn;
	_is >> winners >> blocks;
	Bm = new int[blocks];
	Wm = new int[winners];
	i = -1;
	while(++i < winners) 
		_is >> Wm[i];
	i = -1;
	while(++i < blocks)
		_is >> Bm[i];
	i = buf = -1;
	int j = 0;
	while(++i < winners){
		Wn =  Wm[i];
		while((Wn + Bm[j]) <= buf && j < blocks) ++j;
		if(j == blocks) { _os << -1; return 0;}
		buf = Wn + Bm[j];
		Wm[i] = ++j;		
	}
	i = -1;
	while(++i < winners) _os << Wm[i] << ' ';
	return 0;
}

