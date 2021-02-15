//Lisenko Evgenii Sergeevich, Zadacha 1, Leninski raion, klass 10, MGOL
#include <fstream>
//////////////////////////////
std::ofstream _os("output.txt");
std::ifstream _is("input.txt");

int main(){
	int* Mdays, monthes, weekdays, startday, Sweekday, Sday, i, DAYS, YEAR = 0, YES = 0;
	_is >> monthes >> weekdays;
	if(!_is){ _os << "15 Error \"File not found\""; return 0xF; } // 15 Error "File not found"
	Mdays = new int[monthes];
	i = -1;
	++weekdays;	
	while(++i < monthes)
		_is >> Mdays[i];
	_is >> startday >> Sweekday >> Sday;
	i =-1;
	--startday;
	while(++i < monthes){
		startday += Sday;
		startday %= weekdays;
		++startday;
		if(Sweekday == startday) ++YES;
		startday += Mdays[i] - Sday;
		startday %= weekdays;
		++startday;
	}
	_os << YES;
	return 0;
}

