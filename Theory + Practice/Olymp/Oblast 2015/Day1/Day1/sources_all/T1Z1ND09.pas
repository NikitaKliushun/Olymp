{Кудин Олег Евгеньевич г.Солигорск класс 11"А" задача номер 1}
program T1Z1ND09;
var n,k,i:longint;
b,max,m,j:integer;
a:array[1..100000] of integer;
q,kol:array[1..100] of integer;
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,k);
for i:=1 to n do
  read(a[i]);
for i:=1 to 100 do
  q[i]:=0;
max:=0;
for i:=1 to n do
  begin
    b:=a[i];
    if b>max then max:=b;
    q[b]:=q[b]+1;
  end;
for i:=1 to max do
  kol[i]:=q[i] div k;
m:=0;
for i:=1 to max do
  m:=m+kol[i];
writeln(m);
for i:=1 to max do
  for j:=1 to kol[i] do
    write(i,' ');
close(input);
close(output);
end.
