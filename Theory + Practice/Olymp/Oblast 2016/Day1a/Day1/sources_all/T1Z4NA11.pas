//1 Тур 3 Этапа Республиканской олимпиады, 2016 год, Залевский Александр, Задача 4
Var
  t1,t2:text;
  j,i,k,n,z,x:longint;
  a:array[1..2001,1..2001]of byte;
Begin
assign (t1,'input.txt'); reset (t1);
assign (t2,'output.txt'); rewrite (t2);
readln (t1,n,k);
for j:=1 to n do
for i:=1 to k do
  read (t1,a[i,j]);
x:=0;
for i:=1 to k do
  Begin
  z:=1;
  for j:=2 to n do
    if a[i,j]<>a[i,1]then z:=0;
  if z=1 then x:=1;
  end;
if x=1 then write (t2,'0') else write (t2,'-1');
close (t1);
close (t2);
end.
