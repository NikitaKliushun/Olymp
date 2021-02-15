{Свиpиденко Гpигоpий, 11Б, гимназия г.Дзеpжинска}
{$-02}
program t2z1n52;
var n,i,j,t:integer;
    s,max:int64;
    a:array[1..100] of int64;
{procedure qsort(k,l:longint);
  var i,x,e,r,t:longint;
  begin
    e:=k;
    r:=l;
    x:= a[(r-e)div 2];
    repeat
      while a[e]<x do e:=e+1;
      while a[r]>x do r:=r-1;
      if r>e then  begin
                   t:=a[r];
                   a[r]:=a[e];
                   a[e]:=t;
                   end;
    until e>=r;
    if k<e then qsort(k,e);
    if l>r then qsort(r,l);
  end; }
   procedure qsort(k,l:longint);
  var i,x,e,r,t:longint;
  begin
    e:=k;
    r:=l;
    x:= a[(r-e+1)div 2];
    repeat
      while a[e]<x do e:=e+1;
      while a[r]>x do r:=r-1;
      if r>e then  begin
                   t:=a[r];
                   a[r]:=a[e];
                   a[e]:=t;
                   end;
    until e>=r;
    if k<=e then qsort(k,e);
    if l>=r then qsort(r,l);
  end;
  begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  for i:=1 to n do
    read(a[i]);
  {qsort(1,n);}
  j:=0;

  for i:=1 to n-1-j do
  if a[i]>a[n-j] then
        begin
          t:=a[i];
          a[i]:=a[n-j];
          a[n+1-j]:=t;
          j:=j+1;
        end;



   for i:=1 to n div 2 do
    s:=s-a[i]+a[n-i+1];


  write(s,' ');
  close(input);
  close(output);
end.
