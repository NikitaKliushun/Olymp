//Лысенко Евгений Сергеевич, Ленинский район, 10 класс, 3 задача;
#include <iostream>
#include <fstream>
#include <queue>
#include <vector>
#include <bitset>
/////////////////////////////////////
#define asto(arg) std::cout << arg
#define _p std::pair<int, int>
/////////////////////////////////////
typedef unsigned uu;

int ringlen = 8, GLway;

struct dfo_0{
    bool operator()(_p p1, _p p2){
        return (bool)(p1.first > p2.first);
    }
};

struct ring{
    int* some = 0, pointer = 0;
    void put(int* mass, int& rinlen, int po = 0){
        pointer = po;
        some = new int[rinlen];
        int i = rinlen;
        while(--i) some[i] = mass[i];
        *some = *mass;
    }
    int operator[](int& way){
        if(way > 7) way %= ringlen;
        else while(way < 0) way += ringlen;
        return some[way];
    }
    bool exist(int color){
        int i = ringlen;
        while(i) if(some[--i] == color) return 1;
        return 0;
    }
    int shortw(int color, int po = 0){
        //_p pair;
        ring& RING = *this;
        int steps = 0, b1, b2;
        if(RING[b1 = b2 = po] == color) return 0;
        while(RING[b1] != color && RING[b2] != color){
            --b1;
            ++b2;
            ++steps;
        };
       /* pair.first = steps;
        pair.second = (some[b1] == color ? b1 : b2);
        return pair;*/
        return steps;
    }
    void show(){
        int i = ringlen;
        std::cout << "{";
        while(--i) std::cout << some[i] << ' ';
        std::cout << some[i] << "}\n";
    }
};

std::ifstream _is("input.txt");
std::ofstream _os("output.txt");

int main(){
    std::priority_queue<_p, std::vector<_p>, dfo_0> pq;
    _p pair;
    std::bitset<2001> bit;
    _p b;
    int N, K, i, j, buf, b_, maxcolor = 0;
    _is >> N >> K;
    ringlen = K;
    ++K;
    ring* RING = new ring[N + 1];
    int* k = new int[K], ex[2001], all[2001];
    i = 0;
    while(++i < 2001) ex[i] = all[i] = 0;
    i = -1;
    while(++i < N){
        j = -1;
        bit.reset();
        while(++j < ringlen){
            _is >>  buf;
            k[j] = buf;
            ++all[buf];
            if(buf > maxcolor) maxcolor = buf;
            if(!bit[buf]){
                bit[buf] = 1;
                ++ex[buf];
            }
        }
        RING[i].put(k, ringlen);
    }
    ++maxcolor;
    i = 0;
    while(++i < maxcolor) if(ex[i] == N){
        pair.first = all[i];
        pair.second = i;
        pq.push(pair);
    }
    if(pq.empty()){ _os << -1; return 0;}
    int color, B, Bi, result = GLway = K * N / 2;
    while(pq.size()){
        color = pq.top().second;
        pq.pop();
        j = -1;
        while(++j < K){
            i = -1;
            Bi = 0;
            while(++i < N)
                Bi += RING[i].shortw(color, j);
            if(!Bi) { _os << 0; return 0; }
            if(result > Bi) result = Bi;
        }
    }
    _os << result;
	return 0;
}
