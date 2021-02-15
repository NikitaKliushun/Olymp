/*
  Time : O( KLogK )
  Memory: O( 1 )
  Solved by Sikorky Alexey
*/

#include "fstream"
#include "math.h"

using namespace std;

int main()
{
  ifstream fin("input.txt");
  int n, w, h, i, j;
  fin>>n;
  int v = 3 * n;
  for (int i = 1; i <= n; ++i)
   for (int j = 1; i * j <=n; ++j)
    if (n - i * j + abs(i - j) < v)
    {
      v = n - i * j + abs(i - j);
      w = i;
      h = j;
    }
  ofstream fout("output.txt");
  fout<<w<<" "<<h<<endl;
  return 0;
}
