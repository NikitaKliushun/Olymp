var
  i,j,n,k:longint;
  d,num,ras:array [1..100000] of longint;

Procedure Qsort1(l,r:longint);
var mi,tt:longint;
Begin
  i:=l;
  j:=r;
  mi:=ras[(l+r) div 2];
  repeat
    while ras[i]<=mi do inc(i);
    while ras[j]>=mi do dec(j);
    if i<=j
      then
        begin
          tt:=ras[i];
          ras[i]:=ras[j];
          ras[j]:=tt;

          tt:=num[i];
          num[i]:=num[j];
          num[j]:=tt;
          inc(i);
          dec(j);
        end;
  until i>j;
  if i>r then qsort1(i,r);
  if l>j then qsort1(l,j);
end;
Procedure Qsort(l,r:longint);
var m,t:longint;
Begin
  i:=l;
  j:=r;
  m:=d[(l+r) div 2];
  repeat
    while d[i]<=m do inc(i);
    while d[j]>=m do dec(j);
    if i<=j
      then
        begin
          t:=d[i];
          d[i]:=d[j];
          d[j]:=t;

          t:=num[i];
          num[i]:=num[j];
          num[j]:=t;
          inc(i);
          dec(j);
        end;
  until i>j;
  if i>r then qsort(i,r);
  if l>j then qsort(l,j);
end;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);
  Readln(n,k);
  For i:=1 to n do
    begin
      read(d[i]);
      num[i]:=i;
    end;

  Qsort(1,n);
  for i:=1 to n-1 do
    begin
      if abs(d[i]-d[i+1])<ras[i] then ras[i]:=abs(d[i]-d[i+1]);
      ras[i+1]:=abs(d[i]-d[i+1]);
    end;
  Qsort1(1,n);
  writeln(k);
  For i:=1 to k do
    write(num[i],' ');
  close(input);
  close(output);
End.