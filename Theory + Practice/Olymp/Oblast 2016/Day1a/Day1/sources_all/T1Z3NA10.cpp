//Лысенко Евгений Сергеевич, Ленинский район, 10 класс, 3 задача;
#include <iostream>
#include <fstream>
#include <queue>
#include <vector>
/////////////////////////////////////
#define asto(arg) std::cout << arg
#define _p std::pair<int, int>
/////////////////////////////////////
typedef unsigned uu;

struct dfo_0{
    bool operator()(_p p1, _p p2){
        return (bool)(p1.first < p2.first);
    }
};

std::ifstream _is("input.txt");
std::ofstream _os("output.txt");
bool _first[101], _second[101], executed[101];
int _i[101], _k[101], some[101];

void obnulyai(bool* mass){
    int i = 0;
    while(++i < 101) mass[i] = 0;
}

int main(){
    std::priority_queue<_p, std::vector<_p>, dfo_0> pq;
    _p b_;
    char* mass;
	int N, b, i = 0;
	bool* b1,* b2;
	_is >> N;
	mass = new char[++N];
	while(++i < N){
        _is >> b;
        ++some[mass[i] = b];
        b2 = _second + b;
        if(!_i[b]) _i[b] = i;
        else if(_i && !(*b2)) *b2 = 1;\
        else if(_i && *b2) _k[b] = i;
	}
	i = 0;
	while(++i < N){
        if(some[i] < 3) continue;
        b_.first = some[i];
        b_.second = i;
        pq.push(b_);
	}
	int sum;
	i = 0;
	while(pq.size()){
        obnulyai(_first);
        sum = 0;
        b_ = pq.top();
        pq.pop();
        i = _i[b_.second];
        if(executed[b_.second]) continue;
        _first[b_.second] = 1;
        while(++i < _k[b_.second]){
            b = mass[i];
            if(executed[b] || _first[b]) continue;
            sum += some[b];
            _first[b] = 1;
        }
        _first[b_.second] = 0;
        if(some[b_.second] > sum){
            i = 0;
            while(++i < 101)
                if(_first[i]){
                    executed[i] = 1;
                    some[i] = 0;
                }
        }
        else{
            executed[b_.second] = 1;
            some[b_.second] = 0;
        }
	}
	sum = i = 0;
	while(++i < N) if(!executed[mass[i]]){
        sum += some[mass[i]];
        executed[mass[i]] = 1;
        some[mass[i]] = 0;
	}
	_os << sum;
	return 0;
}

