{Пашкевич Александр Александрович, 2 тур, 11 класс, Борисовский, Задача 1}
var
a:array [1..255] of longint;
y,i:longint;
n,z,b,x:int64;
f,f1:text;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
rewrite(f1);
read(f,n);
for i:=1 to n do
read(f,a[i]);
for y:=1 to n do
for i:=1 to n-1 do
if a[i]> a[i+1] then
begin
b:=a[i+1];
a[i+1]:=a[i];
a[i]:=b;
end;
b:=0;
x:=n div 2;
for i:=1 to x do
z:=z+a[i];
for i:=x+1 to n do
b:=b+a[i];
z:=b-z;
write(f1,z);
close(f1);
close(f);
end.

