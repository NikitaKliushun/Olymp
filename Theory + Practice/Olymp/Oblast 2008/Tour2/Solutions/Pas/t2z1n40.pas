{Былинович Владислав, город Копыль,СШ №2, 6"Б"Класс, задача № 1 (Азартный Шрек)}
program t2z1n40;
type
massiv=array [1..100] of longint;
var k,l,n,m,t,x,s,s_k,s_sh:longint;
i,j,o,ij,ji:integer;
a:massiv;
f:text;
begin
assign  (f,'input.txt');
reset   (f);
readln  (f,n);
for o:=1 to n do
read    (f,a[o]);
close   (f);
for i:=1 to n-1 do
for j:=1 to n-i do
if a[j]>a[j+1] then
begin
x:=a[j];
a[j]:=a[j+1];
a[j+1]:=x;
end;
for ij:=1 to n div 2 do
s_k:=s_k+a[ij];
for i:=1 to n-1 do
for j:=1 to n-i do
if a[j]<a[j+1] then
begin
x:=a[j];
a[j]:=a[j+1];
a[j+1]:=x;
end;
for ji:=1 to n div 2 do
s_sh:=s_sh+a[ji];
s:=s_sh-s_k;
assign  (f,'output.txt');
rewrite (f);
writeln (f,s);
close   (f);
end.
