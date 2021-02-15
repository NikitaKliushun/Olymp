//Чуров Алексей Валерьевич, г.Солигорск, 10, 3
program T1Z3NB16;
var f1,f2:text;
a:array [1..100000] of integer;
i,n,m,j,d:integer;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n);
for i:=1 to n do read(f1,a[i]);
m:=n;
close(f1);
for i:=1 to n-1 do
if a[i+1]<a[i] then begin
d:=0;
for j:=1 to n do
if a[i+1]=a[j] then d:=d+1;
m:=m-d;
a[i+1]:=a[i];
end;
assign(f2,'output.txt');
rewrite(f2);
write(f2,m);
close(f2);
end.