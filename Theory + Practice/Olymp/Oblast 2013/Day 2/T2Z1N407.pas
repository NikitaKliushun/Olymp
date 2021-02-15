var
n,k,t,sum,m,i,j:integer;
a,p:array[1..1000] of integer;
f1,f2:text;
function max1:integer;
var max,i:integer;
begin
max:=0;
for i:=1 to n do if a[i]>max then max:=i;
max1:=max;
end;

function max2:integer;
var max,i:integer;
begin
max:=0;
for i:=1 to n do if p[i]-a[i]>max then max:=i;
max2:=max;
end;

begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,n,k);
for i:=1 to n do readln(f1,a[i],p[i]);
sum:=0;
for i:=1 to n do sum:=sum+a[i];
t:=k-sum;
writeln(f2,abs(t));
if t<0 then
while sum<>k do begin
m:=max1;
while (sum<>k) and (a[m]>0) do begin
a[m]:=a[m]-1;
sum:=sum-1;
writeln(f2,-m);
end;
end

else
while sum<>k do begin
m:=max2;
while (sum<>k) and (p[m]-a[m]>0) do begin
a[m]:=a[m]+1;
sum:=sum+1;
writeln(f2,m);
end;
end;
close(f1);
close(f2);
end.