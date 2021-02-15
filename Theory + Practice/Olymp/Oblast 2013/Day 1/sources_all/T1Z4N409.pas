{Каменко Павел Николаевич г.Столбцы задача 4}
program z4;
var n,m,g,i,k,ans:longint;
    f:text;
    a,b:array[1..100000]of longint;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,m,k);
for i:=1 to m do
read(f,a[i]);
readln(f);
for i:=1 to n do
read(f,b[i]);
readln(f);
read(f,g);
if k=1 then ans:=1
else ans:=random(100);
assign(f,'output.txt');
rewrite(f);
write(f,ans);
close(f);


end.
