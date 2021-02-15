{Tsybulko Alexey}
Program T2Z1N56;
var
a:array[1..100] of longint;
i,j,n:integer;
s,s1,s2,k,m,f:longint;
begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
readln(n);
for i:=1 to n do
read(a[i]);
for i:=1 to n do
begin
for j:=1 to n-i do
if a[j]<a[j+1] then
begin f:=a[j+1];
a[j+1]:=a[j];
a[j]:=f;
end;
end;
k:=a[1];
for i:=1 to (n div 2)-1 do
begin
k:=k+a[i+1] ;
s1:=k;
end;
m:=a[(n div 2)+1];
for i:=n downto (n div 2)+1 do
m:=m+a[i+1];
s2:=m;
begin
if s1>s2 then
s:=s1-s2
else
s:=s2-s1
end;
if s=1 then
s:=s+1;
writeln(s);
Close(input);
Close(output);
end.

