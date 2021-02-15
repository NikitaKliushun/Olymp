var a,r,n:array [1..100000] of longint;
    i,j,m,k,d:longint;

procedure qs(l,r:integer);
var i,j,x,t:integer;
begin
i:=l; j:=r; x:=a[l+random(r-l+1)];
repeat
while a[i]<x do inc(i);
while a[j]>x do dec(j);
if i<=j then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t:=n[i];
n[i]:=n[j];
n[j]:=t;
inc(i);
dec(j);
end;
until i>j;
if i<r then qs(i,r);
if l<j then qs(l,j);
end;

begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
read(m,k);
for i:=1 to m do begin
read(a[i]);
n[i]:=i;
end;
close(input);
if m=k then begin
writeln(k);
for i:=1 to m do
write(i,' ');
end;
qs(1,m);
d:=1000000001;
for i:=1 to m-k do begin
r[i]:=a[i]-a[i+k];
if r[i]<d then begin d:=r[i]; j:=i; end;
end;
writeln(k);
for i:=j to j+k-1 do
write(n[i],' ');
close(output);
end.


