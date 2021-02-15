/*
  Time : O( N^2 * K )
  Memory : O( N * K)
  Solved by Sikorsky Alexey
*/

#include "fstream"

#define int64 long long

using namespace std;

int main()
{

  ifstream fin("input.txt");
  int n, k;
  fin>>n>>k;
  int *a = new int[n];
  for (int i = 0; i < n; ++i) fin>>a[i];
  for (int i = 0; i < n; ++i)
   if (a[i] > k) a[i] = k;
  int s = 0;
  for (int i = 0; i < n; ++i) s+=a[i];
  int64 *m1 = new int64[s + 1];
  int64 *m2 = new int64[s + 1];
  for (int i = 0; i <=s; ++i) m1[i] = 0;
  for (int i = 0; i <=s; ++i) m2[i] = 0;
  m1[0] = 1;
  for (int i = 0; i < n; ++i)
  {
    for (int t = 0; t <= s; ++t)
      if (m1[t] > 0)
      {
         m2[t]+=m1[t];
         m2[t + a[i]]+=m1[t];
         m1[t] = 0;
      }
    swap(m1, m2);
  }
  int64 ans = 0;
  for (int i = k; i <= s; ++i)
    if (s - i >= k) ans+=m1[i];
  ofstream fout("output.txt");
  fout<<ans<<endl;
  delete [] m1;
  delete [] m2;
  delete [] a;
  return 0;
}
