program z_1;
var n,k,i,m,s,j:longint;
    a:array [1..100] of longint;
    p:array [1..100] of longint;
    x:array [1..100] of longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,n,k);
s:=0;
j:=0;
m:=0;
for i:=1 to n do
begin
 read(f1,a[i]);
 read(f1,p[i]);
 s:=s+a[i];
end;
if s>k then
for i:=1 to n do
 while (a[i]>0) and (s<>k) do
 begin
  j:=j+1;
  s:=s-1;
  a[i]:=a[i]-1;
  x[j]:=-i;
  m:=m+1;
 end;
if s<k then
for i:=1 to n do
 while (a[i]<p[i]) and (s<>k) do
 begin
  j:=j+1;
  s:=s+1;
  a[i]:=a[i]+1;
  x[j]:=i;
  m:=m+1;
 end;
writeln(f2,m);
for i:=1 to j do
writeln(f2,x[i]);
close(f1);
close(f2);
end.
