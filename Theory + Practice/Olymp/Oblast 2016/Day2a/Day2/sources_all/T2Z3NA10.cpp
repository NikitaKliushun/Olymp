//Lisenko Evgenii Sergeevich, Zadacha 3, Leninski raion, klass 10, MGOL 
#include <fstream>
/////////////////
#define deb(arg) //arg


std::ofstream _os("output.txt");
std::ifstream _is("input.txt");

int* letters, biggest = 0, letnum, trips;
bool forward = 1;

int move(int& cord){ 
	if(forward){
		++cord;
		if(cord == letnum){ forward = 0; cord = letnum - 2; --trips;}
		return cord;
	}
	--cord;
	if(cord == -1){ forward = 1; cord = 1; --trips;}
	return cord;
}
void recstep(int position = 0, int let = 1, int num = 0){
	if(let > letnum) { 
//		deb(std::cout << "#Limit exit#";) 
		return; 
	}
	while(let == letters[position] && trips) { 
//		deb(std::cout << "GET " << let << std::endl;) 
		move(position);
		++let; ++num; 
//      deb(Ya ne mogu v DP, poetomu DFS, kotorii po vremeni ne proidet (8/20))
	}
	if(num > biggest) biggest = num;
	if(trips){
		int buf = position;
		move(buf);
//		deb(std::cout << '{' << " to " << buf + 1 << " on " << let;)
		recstep(buf, let, num);
//		deb(std::cout << "}\n";)
		if(let < letters[position]){ 
//			deb(std::cout << '['  << " to " << position + 1 << "(-" << (letters[position] - position) << ')' << " on " << let;)
			recstep(position, letters[position], num); 
//			deb(std::cout << "]\n";)
		}
	}
}
int recgo(int _letnum, int _trips, bool _forward = 1){
	biggest = 0;
	forward = _forward;
	letnum = _letnum;
	trips = _trips;
	recstep();
	return biggest;
}

int main(){
	int T, L, i;
	_is >> L >> T;
	if(1 == L) _os << 1;
	letters = new int[L];
	i = -1;
	while(++i < L)
	 _is >> letters[i];
	_os << recgo(L, T);
	return 0;
}

