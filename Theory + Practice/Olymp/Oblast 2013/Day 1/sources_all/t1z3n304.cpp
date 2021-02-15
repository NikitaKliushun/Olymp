#include <iostream>
#include <fstream>
#include <iomanip>
#include <string>


using namespace std;

ifstream f1("input.txt");
ofstream f2("output.txt");
int a[410][410],i,j,n,m,sr,p,rasst,dob;
double kol=0;
string s;

double sravn1(int sr,int p,int ii,int jj)
{
    double kk=0;
    int it,jt;
    if (sr-p>0 and sr+p<=n)
    {
        it=ii;
        while (it<=jj)
          {
            while (it<=jj and a[sr-p][it]!=a[sr+p][it])
                it++;
            jt=it;
            while (jt+1<=jj and a[sr-p][jt+1]==a[sr+p][jt+1])
                jt++;
            if (jt<=jj)
            {
                rasst=jt-it+1;
                dob=rasst*(rasst+1)/2;
                kk+=dob;
                kk+=sravn1(sr,p+1,it,jt);
            }
            it=jt+1;
          }
    }

    return kk;

}


double sravn2(int sr,int p,int ii,int jj)
{
    double kk=0;
    int it,jt;
    if (sr-p>0 and sr+p+1<=n)
    {
        it=ii;
        while (it<=jj)
          {
            while (it<=jj and a[sr-p][it]!=a[sr+p+1][it])
                it++;
            jt=it;
            while (jt+1<=jj and a[sr-p][jt+1]==a[sr+p+1][jt+1])
                jt++;
            if (jt<=jj)
            {
                rasst=jt-it+1;
                dob=rasst*(rasst+1)/2;
                kk+=dob;
                kk+=sravn2(sr,p+1,it,jt);
            }
            it=jt+1;
          }
    }

    return kk;

}

main()
{
    f2<<fixed<<setprecision(0);
    f1>>n>>m;
    for (i=1;i<=n;i++)
    {
        f1>>s;
        for (j=1;j<=m;j++)
        {
            a[i][j]=int(s[j-1]-'0');
        }
    }



    sr=2;
    while (sr<n)
    {
        i=1;
        while (i<=m)
        {
            while (i<=m and a[sr-1][i]!=a[sr+1][i])
                i++;
            j=i;
            while (j+1<=m and a[sr-1][j+1]==a[sr+1][j+1])
                j++;
            if (j<=m)
            {
                rasst=j-i+1;
                dob=rasst*(rasst+1)/2;
                kol+=dob;
                p=2;
                kol+=sravn1(sr,p,i,j);

            }
            i=j+1;
        }

        sr++;
    }

//-----------------------------
    sr=1;
    while (sr<n)
    {
        i=1;
        while (i<=m)
        {
            while (i<=m and a[sr][i]!=a[sr+1][i])
                i++;
            j=i;
            while (j+1<=m and a[sr][j+1]==a[sr+1][j+1])
                j++;
            if (j<=m)
            {
                rasst=j-i+1;
                dob=rasst*(rasst+1)/2;
                kol+=dob;
                p=1;
                kol+=sravn2(sr,p,i,j);
            }
            i=j+1;

        }

        sr++;
    }

    f2<<kol;
    f1.close();
    f2.close();
}
