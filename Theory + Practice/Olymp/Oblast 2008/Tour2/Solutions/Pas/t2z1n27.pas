{program by Pozdniak Artyr from Zhodino}
program shrek;
var s,k,x,v,b,c:longint;
i,j,n:integer;
a:array [1..100] of longint;
begin
k:=0;
x:=0;
assign (input, 'input.txt');
reset(input);
read(n);
for i:=1 to n do
read(a[i]);
close(input);
for i:=1 to n do
for j:=1 to n-i do
begin
if a[j]>a[j+1] then
begin
s:=a[j];
a[j]:=a[j+1];
a[j+1]:=s;
end;
end;
if n mod 2 = 0 then
b:=trunc(n/2) else
b:=trunc(n/2) +1;
c:=trunc(n/2);
for i:=1 to c do
k:=k+a[i];
for I:=n downto b+1 do
begin
x:=x+a[i];
end;
v:=x-k;
assign(output,'output.txt');
rewrite(output);
writeln(v);
close(output);
end.

