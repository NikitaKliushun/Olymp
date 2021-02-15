// Атрохов Антон Анатольевич. Солигорск. СОШ 2. Задача 4
program t1z4nd06;
var a:array[1..10000,1..3] of integer;
    b:array[1..10000] of integer;
    i,n,m,max:integer;
    j:byte;
    c,sc:longint;
    f1,f2:text;
    begin;
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,n);
max:=0;
for i:=1 to (n-1) do
 for j:=1 to 3 do  read(f1,a[i,j]);
for i:=1 to (n-1) do
begin
for j:=1 to m do b[j]:=0;
m:=1;
for j:=1 to (n-1) do
if a[j,1]=i
 then  begin
 b[m]:=a[j,3];
   m:=m+1;
 end;
 c:=0;
for j:=1 to m do if b[j]>max then max:=b[j];
for j:=1 to m do c:=c+b[j];
sc:=sc+(c-max);
max:=0;
end;
write(f2,sc);
close(f2);
close(f1);
end.
