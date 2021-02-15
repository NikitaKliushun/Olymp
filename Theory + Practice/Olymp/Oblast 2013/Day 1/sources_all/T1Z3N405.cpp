// Тумаш Илья Валерианович
// Молодечно
// 3 курс
// Задание 3

#include <fstream>

int** arr;

bool analyse(int x, int y, int w, int h)
{
    for(int i = 0; i <= w/2; i++)
        for(int j = y; j <= h+y; j++)
            if(arr[x+i][j] != arr[w+x-i][j]) return false;
    return true;
}

int main()
{
    std::ifstream ifile("input.txt");
    int N, M;
    ifile >> N >> M;
    arr = new int*[N];
    for(int i=0; i < N; i++)
    {
        arr[i] = new int[M];
        for(int j=0; j < M; j++)
        {
            char t; ifile >> t;
            arr[i][j] = (t=='0'?0:1);
        }
    }
    ifile.close();

    int res=0;
    for(int x = 0; x < N; x++)
        for(int y = 0; y < M; y++)
            for(int w = 1; w < N; w++)
                for(int h = 0; h < M; h++)
                    if(x+w < N && y+h < M && analyse(x, y, w, h)) res++;

    std::ofstream ofile("output.txt");
    ofile << res;
    ofile.close();
}
