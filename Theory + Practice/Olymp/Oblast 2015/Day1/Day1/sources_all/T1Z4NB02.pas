const
  INF=16000;
  MAXN=100000;
var
  f1, f2:text;
  matr:array[1..MAXN, 1..MAXN] of integer;
  n, i:longint;
  p:array[1..MAXN] of byte;
  l:array[1..MAXN] of word;
  pr:array[1..MAXN] of longint;
  maxl, q:longint;
  total:word;
  x, y, j:longint;
  z:integer;
Procedure read_data;
var
  i, x, y, j:longint;
  z:word;
Begin
  read(f1, n);
  for i:=1 to n do
    for j:=1 to n do
      matr[i, j]:=0;
  for i:=1 to n-1 do begin
    read(f1, x, y, z);
    matr[x, y]:=z;
    matr[y, x]:=z;
  end;
  for i:=1 to n  do begin
    l[i]:=INF;
    p[i]:=0;
    pr[i]:=0;
  end;
end;

Procedure Dejkstra;
var
  i, j, min:longint;
  minv:word;
Begin
  l[1]:=0;
  i:=1;
  repeat
    p[i]:=1;

    for j:=1 to n do
      if (matr[i, j]>0) and (l[j]>l[i]+matr[i, j]) then begin
        l[j]:=l[i]+matr[i, j];
        pr[j]:=i;
      end;

    minv:=INF;
    for j:=1 to n do
     if (p[j]=0) and (matr[i, j]>0) and  (l[j]<minv) then begin
       min:=j;
       minv:=l[j];
     end;

     if minv=INF then
       i:=pr[i]
     else
       i:=min;
  until i=0;
End;

BEGIN
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);


  read(f1, n);
  for i:=1 to n do
    for j:=1 to n do
      matr[i, j]:=0;

  for i:=1 to n-1 do begin
    read(f1, x, y, z);
    matr[x, y]:=z;
    matr[y, x]:=z;
  end;

  for i:=1 to n  do begin
    l[i]:=INF;
    p[i]:=0;
    pr[i]:=0;
  end;



  Dejkstra;

  maxl:=1;
  for i:=1 to n do
    if l[maxl]<l[i] then
      maxl:=i;

  total:=0;
  for i:=1 to n do
    total:=total+l[i];

  i:=maxl;
  while i<>1 do begin
    total:=total-l[i];
    i:=pr[i];
  end;

  write(f2, total);

  close(f1);
  close(f2);
END.
