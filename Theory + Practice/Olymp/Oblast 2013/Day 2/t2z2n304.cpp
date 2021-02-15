#include <iostream>
#include <fstream>
#include <stdlib.h>

using namespace std;
ifstream f1("input.txt");
ofstream f2("output.txt");
long int x,cc,i,j,l,r,n,d[100010],k,pok=1000000001,ni,a[100010];

void QSort(int l,int r)
{
    i=l;
    j=r;
    x=d[a[rand()%(r-l)+l]];
    while (i<=j)
    {
        while (d[a[i]]<x)
            i++;
        while (d[a[j]]>x)
            j--;
        if(i<=j)
        {
            cc=a[i];
            a[i]=a[j];
            a[j]=cc;
            i++;
            j--;
        }
    }
    if (l<j)
        QSort(l,j);
    if (i<r)
        QSort(i,r);
}

main ()
{
    f1>>n>>k;
    for (i=1;i<=n;i++)
    {
        f1>>d[i];
        a[i]=i;
    }
    QSort(1,n);
    i=1;
    j=k;
    while (j<=n)
    {
        if (d[a[j]]-d[a[i]]<pok)
        {
            pok=d[a[j]]-d[a[i]];
            ni=i;
        }
        i++;
        j++;
    }
    i=ni;
    j=ni-1+k;
    f2<<k<<endl;
    while (i<=j)
    {
        f2<<a[i]<<" ";
        i++;
    }

    f1.close();
    f2.close();
}
