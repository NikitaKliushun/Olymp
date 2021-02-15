/*
  Time : O( N * Log|Z| )
  Memory : O( N )
  Solved by Sikorsky Alexey
*/

#include "fstream"
#include "queue"
#include "string"
#include "map"

#define int64 long long

using namespace std;

int main()
{
  map<char, queue<int> > queues;
  string s;
  int n, k;
  int64 ans = 0;
  ifstream fin("input.txt");
  fin>>n>>k>>s;
  int last = 0;
  for (int i = 0; i < (int) s.length(); ++i)
  {
    queues[s[i]].push(i);
    if (queues[s[i]].size() > k) 
    {
      int tmp = queues[s[i]].front() + 1;
      queues[s[i]].pop();
      if (tmp > last) last = tmp;
    }
    ans+=(i - last + 1);
  }
  ofstream fout("output.txt");
  fout<<ans<<endl;
  return 0;
}
