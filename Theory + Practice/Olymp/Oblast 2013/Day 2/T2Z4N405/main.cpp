// Тумаш Илья Валерианович
// 3курс
// Молодечно
// Задание 4

#include <fstream>
#include <vector>

#include <iostream>

using namespace std;

int main()
{
    int N, M, K;

    std::ifstream ifile("input2.txt");
    std::ofstream ofile("output2.txt");

    ifile >> N >> M >> K;
    int* arr = new int[K];
    for(int i = 0; i < K; i++) ifile >> arr[i];
    ifile.close();

    int w = (2*M+1);
    int h = (2*N+1);

    char** map = new char*[h];
    for(int i = 0; i < h; i++)
    {
        map[i] = new char[w];
        for(int j = 0; j < w; j++)
        {
            map[i][j] = ' ';
            if((i+1)%2 == 0 && (j+1)%2 == 0) map[i][j] = '.';
            if((i+1)%2 != 0 && (j+1)%2 != 0) map[i][j] = '#';

            map[i][0]     = '#';
            map[i][w-1]   = '#';
            map[0][j]     = '#';
            map[0][h-1]   = '#';
        }
    }
    int** map2 = new int*[N];
    for(int i = 0; i < N; i++) {
        map2[i] = new int[M];
        for(int j = 0; j < M; j++)
            map2[i][j]   = 0;
    }

    std::vector<std::pair<int, int> > oldWave;
    std::vector<std::pair<int, int> > newWave;
    int n = 0;

    for(int q = 0; q < K; q++)
    {
        int posX, posY;
        for(int i = 0; i < N; i++)
            for(int j = 0; j < M; j++)
                if(map2[i][j] == 0)
                {
                    posX = i;
                    posY = j;
                    goto b;
                }
        b:
        oldWave.push_back(std::pair<int, int>(posX, posY));
        newWave.clear();
        n++;
        while(oldWave.size() != 0)
        {
            static int dx[] = {  0, 1, 0, -1 };
            static int dy[] = { -1, 0, 1,  0 };
            for(int ss = 0; ss < oldWave.size(); ss++)
            {
                for(int xx = 0; xx < 4; xx++)
                    for(int yy = 0; yy < 4; yy++)
                    {
                        int nx = oldWave[ss].first;
                        int ny = oldWave[ss].second;
                        if(nx+dx[xx]>=0 && nx+dx[xx]<N &&
                           ny+dy[yy]>=0 && ny+dy[yy]<M &&
                           map2[nx+dx[xx]][ny+dy[yy]] == 0)
                        {
                            arr[q]--;
                            map2[nx+dx[xx]][ny+dy[yy]] = n;
                            newWave.push_back(std::pair<int, int>(nx+dx[xx], ny+dy[yy]));

                            if(arr[q] == 0) goto e;
                        }
                    }
            }
            oldWave = newWave;
            newWave.clear();
        }
        e:
        oldWave.clear();
        newWave.clear();
    }


    for(int q = 1; q <= K; q++)
        for(int i = 0; i < N; i++)
            for(int j = 0; j < M; j++)
                if(map2[i][j] == q)
                {
                    static int dx[] = {  0, 1, 0, -1 };
                    static int dy[] = { -1, 0, 1,  0 };

                    for(int xx = 0; xx < 4; xx++)
                        for(int yy = 0; yy < 4; yy++)
                        {
                            int nx = i+dx[xx];
                            int ny = j+dy[yy];

                            if(nx>=0 && nx<N &&
                               ny>=0 && ny<M &&
                               map2[nx][ny] != q)
                                {}//map[2*i][2*j] = '$';
                        }
                }

    for(int i = 0; i < h; i++)
    {
        for(int j = 0; j < w; j++)
            ofile << map[i][j];
        ofile << std::endl;
    }
    ofile.close();
}
