//Иванов Денис Сергеевич,Минский район,11,z1
program T1Z1ND03;
var N,K,i,M,z: integer;
a,b:array[1..10000]of integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n,k);
for i:=1 to n do
 read(f1,a[i]);
for i:=1 to 100 do
 begin
 if a[i]>0 then b[a[i]]:=b[a[i]]+1
 end;
for i:=1 to 100 do
begin
b[i]:=round((b[i]-(b[i] mod k))/k);
end;
for i:=1 to 100 do
begin
if b[i]>0 then
for z:=1 to b[i] do
m:=m+1;
end;
writeln(f2,m);
for i:=1 to 100 do
begin
if b[i]>0 then
for z:=1 to b[i] do
write(f2,i,' ');
end;
close(f1);
close(f2);
end.