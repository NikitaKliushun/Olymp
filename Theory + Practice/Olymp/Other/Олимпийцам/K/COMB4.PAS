{Generatia sochetanij}
program Comb4;
var a:array[1..100] of longint;
    i,j,n,m,t:longint;
procedure QSort(l,r:longint);
  var i,j:longint;
      x,t:byte;
  begin
    i:=l;
    j:=r;
    x:=a[(l+r) div 2];  {x:=a[l+Random(r-l+1)];}
    repeat
      while a[i]<x do
        Inc(i);
      while a[j]>x do
        Dec(j);
      if i<=j
         then begin
                t:=a[i];
                a[i]:=a[j];
                a[j]:=t;
                Inc(i);
                Dec(j);
              end;
    until i>j;
    if l<j
       then QSort(l,j);
    if i<r
       then QSort(i,r);
  end;
procedure QSort2(l,r:longint);
  var i,j:longint;
      x,t:byte;
  begin
    i:=l;
    j:=r;
    x:=a[(l+r) div 2];  {x:=a[l+Random(r-l+1)];}
    repeat
      while a[i]>x do
        Inc(i);
      while a[j]<x do
        Dec(j);
      if i<=j
         then begin
                t:=a[i];
                a[i]:=a[j];
                a[j]:=t;
                Inc(i);
                Dec(j);
              end;
    until i>j;
    if l<j
       then QSort2(l,j);
    if i<r
       then QSort2(i,r);
  end;
procedure Rotate(x:longint); {Sdvig}
  var i,t:longint;
  begin
    t:=a[n-x+1];
    for i:=n-x+1 to n-1 do
      a[i]:=a[i+1];
    a[n]:=t;
  end;
begin
  Read(n,m);
  for i:=1 to n do
    a[i]:=i;
{  Randomize;
  for i:=1 to n do
    a[i]:=random(n);}
  QSort(1,n);
{  for i:=1 to n do
    Write(a[i],' ');
  Writeln;}
  QSort2(m+1,n);
  repeat
    for i:=1 to m do
      Write(a[i],' ');
    Writeln;
    {1}
    i:=n-1;
    while (i>0) and (a[i]>=a[i+1]) do
      i:=i-1;
    if i>0
       then begin
              {2}
              j:=n;
              while a[j]<=a[i] do
                j:=j-1;
              if j>m
                 then begin
                        t:=a[i];
                        a[i]:=a[j];
                        a[j]:=t;
                        {3}
                        QSort(i+1,n);
                      end
                 else begin
                        a[1]:=a[n];
                        n:=n-1;
                        QSort(1,n);
                      end;
              if (i+1<=m)
                 then while a[i+1]<a[i] do
                        Rotate(n-i);
              QSort2(m+1,n);
            end;
  until (n=m) or (i=0);
  for i:=1 to m do
    Write(a[i],' ');
end.