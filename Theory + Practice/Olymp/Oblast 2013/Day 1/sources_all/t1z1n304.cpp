#include <iostream>
#include <fstream>
#include <string.h>

using namespace std;

ifstream f1("input.txt");
ofstream f2("output.txt");

long int kol,a[2100],i,j,n,t,cc,hh,mm,ss;
string s;

long int preobr(string s)
{
    long int t,hh,mm,ss;
    hh=int(s[0]-'0')*10+int(s[1]-'0');
    mm=int(s[3]-'0')*10+int(s[4]-'0');
    ss=int(s[6]-'0')*10+int(s[7]-'0');
    t=hh*3600+mm*60+ss;
    return t;

}

main ()
{
    f1>>n>>t;
    kol=n*2;
    for (i=1;i<=kol;i++)
    {
        f1>>s;
        a[i]=preobr(s);
    }

    for (i=1;i<kol;i++)
        for (j=1;j<=kol-i;j++)
            if (a[j]>a[j+1])
                {
                    cc=a[j];
                    a[j]=a[j+1];
                    a[j+1]=cc;
                }

i=1;
j=2;
while (i<=kol)
    {
        while (a[j]-a[i]!=t)
            j++;

        hh=a[i]/3600;
        a[i]%=3600;
        mm=a[i]/60;
        a[i]%=60;
        ss=a[i];

        if (hh<10)
            f2<<"0"<<hh<<":";
        else
            f2<<hh<<":";
        if (mm<10)
            f2<<"0"<<mm<<":";
        else
            f2<<mm<<":";
        if (ss<10)
            f2<<"0"<<ss<<"-";
        else
            f2<<ss<<"-";


        hh=a[j]/3600;
        a[j]%=3600;
        mm=a[j]/60;
        a[j]%=60;
        ss=a[j];

        if (hh<10)
            f2<<"0"<<hh<<":";
        else
            f2<<hh<<":";
        if (mm<10)
            f2<<"0"<<mm<<":";
        else
            f2<<mm<<":";
        if (ss<10)
            f2<<"0"<<ss<<endl;
        else
            f2<<ss<<endl;

        a[i]=-1;
        a[j]=-1;
        while (a[i]==-1)
            i++;
        while (a[j]==-1 and j<=i)
            j++;
    }

    f1.close();
    f2.close();
}
