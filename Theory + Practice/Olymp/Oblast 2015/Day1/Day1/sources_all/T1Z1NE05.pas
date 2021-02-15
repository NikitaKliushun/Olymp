//Чуров Алексей Валерьевич, г.Солигорск,9г, 1
program T1Z1NE05;
var f1,f2:text;
a,b:array [1..10000] of integer;
c:array [1..100] of integer;
i,n,j,k,m,max:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);     
readln(f1,n,k);
for i:=1 to n do read(f1,a[i]);
max:=a[1];
for i:=1 to n do begin
if a[i]>max then max:=a[i];
c[a[i]]:=c[a[i]]+1;
end;
for i:=1 to max do
for j:=1 to c[i] do begin
if c[i]>=k then begin
m:=m+1;
b[m]:=i;
c[i]:=c[i]-k;
end;
end;
writeln(f2,m);
for i:=1 to m do write(f2,b[i],' ');
close(f1);
close(f2);
end.