//1 Тур 3 Этапа Республиканской олимпиады, 2016 год, Залевский Александр, Задача 3
Var
  zz:array[1..100]of byte;
  z:array[1..100]of longint;
  a:array[1..100000]of byte;
  n,i,min,j:longint;
  x:byte;
  t1,t2:text;
function kol(m:longint):longint;
var i:longint;
Begin
kol:=0;
for i:=1 to n do
  if a[i]=m then kol:=kol+1;
end;

Begin
assign (t1,'input.txt'); reset (t1);
assign (t2,'output.txt'); rewrite (t2);
read (t1,n);
for i:=1 to n do read (t1,a[i]);
for i:=1 to 100 do z[i]:=kol(i);
  for i:=1 to 100 do
    Begin
    zz[i]:=0;
    end;
  x:=0;
  for i:=1 to n-1 do
    if a[i]<>a[i+1] then
      Begin
      x:=1;
      zz[a[i]]:=zz[a[i]]+1;
      zz[a[i+1]]:=zz[a[i+1]]+1;
      end;
  if x=0 then write (t2,n) else
    Begin
    min:=101;
    for i:=1 to 100 do
      if (z[i]>0)and(z[i]<min)
      then min:=z[i];
    write (t2,n-min);
    end;
close (t1);
close (t2);
end.