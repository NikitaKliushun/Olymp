//Лысенко Евгений Сергеевич, Ленинский район, 10 класс, 1 задача;
#include <iostream>
#include <fstream>
/////////////////////////////////////
#define asto(arg) std::cout << arg
/////////////////////////////////////
std::ifstream _is("input.txt");
std::ofstream _os("output.txt");

char matrix[] = ".abcdefghlk", field[12][12];

int seek__(char arg){
	int i = 0;
	while(++i < 11){
		if(matrix[i] == arg) break;
	}
	return i;
}

int main(){
	int i, j, N = 0;
	j = -1;
	while(++j < 12) field[0][j] = field[j][0] = field[11][j] = field[j][11] = '.';
	i = 0;
	while(++i < 11){
		j = 0;
		while(++j < 11){
			_is >> field[i][j];
			if(field[i][j] == '#') ++N;
		}
	}
	int b;
	char buf;
	_is >> b;
	++b;
	while(--b){
		_is >> i;
		_is >> buf;
		buf = field[i][j = seek__(buf)];
		if(buf == '.') _os << "MISS";
		else if(buf == '#'){
			if(!--N){
			 	_os << "GAME OVER";
				break;
			}
			field[i][j] = '.';
			if((field[i - 1][j] != '#')
			&& (field[i + 1][j] != '#')
			&& (field[i][j - 1] != '#')
			&& (field[i][j + 1] != '#')) _os << "DEAD";
			else _os << "HIT";
		}
		_os << std::endl;
	}
	return 0;
}

