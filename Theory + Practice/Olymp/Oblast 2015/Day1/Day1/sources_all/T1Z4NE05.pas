//Чуров Алексей Валерьевич, г.Солигорск,9г, 4
program T1Z4NE05;
var f1,f2:text;
x,y,z:array [1..100000] of integer;
i,n,s,m:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,n);
for i:=1 to n-1 do begin
readln(f1,x[i],y[i],z[i]);
if x[i]=1 then m:=i;
end;
for i:=1 to n-1 do begin
if y[i]=1 then z[i]:=0;
if (x[i]=1) and (z[i]>=z[m]) then m:=i;
end;
z[m]:=0;
for i:=1 to n-1 do
if (y[i]=1) or (x[i]=1) then s:=z[i]+s;
writeln(f2,s);
close(f1);
close(f2);
end.