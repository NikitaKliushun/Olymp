/*
  Time : O( N )
  Memory : O( N )
  Desc : Slow Solution
  Solved by Sikorsky Alexey
*/

#include "fstream"
#include "vector"
#include "list"
#include "map"

#define SIZE 512

using namespace std;

class DataBase 
{
  vector<list<int> > s;
  vector<int> v2s;
  int n;

public:
  
  DataBase(int n)
  {
    this->n = n;
    s.resize(n / SIZE + 1);
    v2s.resize(n + 1);
    for (int i = 0; i < n; ++i) s[i / SIZE].push_back(i + 1);
    for (int i = 0; i < n; ++i) v2s[i + 1] = i / SIZE;
  }

  int get(int k) 
  {
    int ans = v2s[k] * SIZE;
    list<int> &l = s[v2s[k]];
    int m = 1;
    for (list<int>::iterator i = l.begin(); i != l.end(); ++i)
     if (*i == k) 
     {
       ans+=m;
       l.erase(i);
       break;
    } else m++;
    s[0].push_front(k);
    v2s[k] = 0;
    for (int i = 0; (int) s[i].size() > SIZE; ++i)
    {
       s[i + 1].push_front(s[i].back());
       v2s[s[i].back()] = i + 1;
       s[i].pop_back();
    }
    return ans;
  }
};

int main()
{
  ifstream fin("input.txt");
  ofstream fout("output.txt");
  int n, m;
  fin>>n>>m;
  DataBase db(n);
  for (int i = 0; i < m; ++i)
  {
     int k;
     fin>>k;
     if (i > 0) fout<<" "<<db.get(k); else fout<<db.get(k);
  }
  fout<<endl;
  return 0;
}
