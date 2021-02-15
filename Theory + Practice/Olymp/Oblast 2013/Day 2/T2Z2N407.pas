var
f1,f2:text;
a:array[1..50000,1..2] of integer;
n,k,i,j,min,kol:integer;
procedure qsort(l,r:integer);
var
x,t,i,j:integer;
begin
i:=l;
j:=r;
x:=a[(l+r) div 2,1];
repeat

while a[i,1]>x do i:=i+1;

while a[j,1]<x do j:=j-1;

if i<=j then begin
t:=a[i,1];
a[i,1]:=a[j,1];
a[j,1]:=t;

t:=a[i,2];
a[i,2]:=a[j,2];
a[j,2]:=t;
i:=i+1;
j:=j-1;
end;

until i>j;
if j>l then qsort(l,j);
if i<r then qsort(i,r);
end;



begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,n,k);
for i:=1 to n do read(f1,a[i,1]);
for i:=1 to n do a[i,2]:=i;

qsort(1,n);

min:=a[1,1]-a[k,1];
j:=1;
for i:=2 to n-k+1 do
if a[i,1]-a[k+i-1,1]<min then
begin
j:=i;
min:=a[i,1]-a[k+i-1,1];
end;
i:=k+j;
while i<=n do begin
if a[k+j-1,1]<>a[i,1] then break;
i:=i+1;
k:=k+1;
end;

writeln(f2,k);
for i:=j to k+j-1 do write(f2,a[i,2],' ');
{while (a[i,1]=a[k+j-1,1]) and (i<=n) do begin
write(f2,a[i,2],' ');
i:=i+1;
end;}
close(f1);
close(f2);
end.