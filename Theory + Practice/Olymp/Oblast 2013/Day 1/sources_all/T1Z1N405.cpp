// Тумаш Илья Валерианович
// Молодечно
// 3 курс
// Задание 1

#include <fstream>

void decode(int t, int& h, int& m, int& s)
{
    h = t/3600;
    m = t/60%60;
    s = t%60;
}

int main()
{
    std::ifstream ifile("input.txt");

    int N, T;
    ifile >> N >> T;

    bool *a   = new bool[2*N];
    int  *arr = new int[2*N];
    for(int i=0; i < 2*N; i++)
    {
        int h=0,m=0,s=0; char tmp;
        ifile >> h >> tmp >> m >> tmp >> s;
        int t = h*3600 + m*60 + s;

        arr[i] = t;
        a[i] = false;
    }

    ifile.close();

    for(int i=0; i < 2*N; i++)
        for(int j=i; j < 2*N; j++)
            if(arr[i] > arr[j])
            {
                int tmp = arr[i];
                arr[i] = arr[j];
                arr[j] = tmp;
            }

    std::ofstream ofile("output.txt");
    for(int i=0; i < 2*N; i++)
    {
        int h=0,m=0,s=0;
        if(a[i] == false)
        {
            decode(arr[i], h, m, s);
            ofile << h << ":" << m << ":" << s;
            a[i] = true;

            for(int j=i; j < 2*N; j++)
                if(arr[i] + T == arr[j] && a[j] == false)
                {
                    a[j] = true;
                    decode(arr[j], h, m, s);
                    ofile << "-" << h << ":" << m << ":" << s << std::endl;
                    break;
                }
        }
    }
    ofile.close();
}
