#include <iostream>
#include <fstream>
#include <math.h>

using namespace std;

main ()
{
    ifstream f1("input.txt");
    ofstream f2("output.txt");
    long int i,n,k,a[110],p[110],now=0;
    f1>>n>>k;
    for (i=1;i<=n;i++)
    {
        f1>>a[i]>>p[i];
        now+=a[i];
    }
    f2<<fabs(k-now)<<endl;
    if (now<k)
    {
        i=1;
        while (now!=k)
        {
            while (a[i]==p[i])
                i++;
            f2<<i<<endl;
            a[i]++;
            now++;
        }
    }
    else
    {
        if (now>k)
        {
            i=1;
            while (now!=k)
            {
                while (a[i]==0)
                    i++;
                f2<<-i<<endl;
                a[i]--;
                now--;
            }
        }
    }
    f1.close ();
    f2.close ();
}
