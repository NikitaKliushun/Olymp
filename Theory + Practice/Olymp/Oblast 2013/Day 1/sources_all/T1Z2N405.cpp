// Тумаш Илья Валерианович
// Молодечно
// 3 курс
// Задание 2

#include <fstream>

int main()
{
    long int A, C;
    int res = 1;

    std::ifstream ifile("input.txt");
    ifile >> A >> C;
    ifile.close();

    for(int i=A; i < C; i+=A)
        if(C%i == 0) res++;

    std::ofstream ofile("output.txt");
    ofile << res;
    ofile.close();
}

