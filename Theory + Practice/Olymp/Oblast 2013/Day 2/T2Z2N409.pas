program z2;
var i,n,min,x,y,k:longint;
    a,b:array[1..100000]of longint;
    f:text;
procedure qsort(l,r:longint);
var i,j,m,x:longint;
begin
i:=l;
j:=r;
m:=a[(i+j)div 2];
while i<=j do
begin
 while a[i]<m do inc(i);
 while a[j]>m do dec(j);
  if i<=j
   then begin x:=a[i];a[i]:=a[j];a[j]:=x;x:=b[i];b[i]:=b[j];b[j]:=x;inc(i);dec(j);end
end;
if i<r then qsort(i,r);
if l<j then qsort(l,j)
end;
begin

assign(f,'input.txt');
reset(f);
read(f,n,k);
for i:=1 to n do
read(f,a[i]);
close(f);
min:=2000000000;
for i:=1 to n do
b[i]:=i;
qsort(1,n);
for i:=1 to n-k+1 do
if a[i+k-1]-a[i]<min
then begin min:=a[i+k-1]-a[i];x:=i;y:=i+k-1;end;
assign(f,'output.txt');
rewrite(f);
writeln(f,k);
for i:=x to y do
write(f,b[i],' ');
close(f);






end.
