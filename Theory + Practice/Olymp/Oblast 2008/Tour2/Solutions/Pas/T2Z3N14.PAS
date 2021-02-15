{alexei popzov}
var
n,k,x,y,j,i,max,s:longint;
a:array[1..10000,1..10000]of byte;
f,f1:text;
procedure prig(x,k:longint);
var
l:longint;
begin
if (x=j)and(max>k) then
max:=k;
if l=n then exit;
for l:=x to n do begin
if l<>i then begin
if (l=j)and(a[x,l]=1)then prig(l,k);
if a[x,l]=1 then prig(l,k+1);
end;end;
if max=2000000 then max:=0;
end;

begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
readln(f,n,k);
if (k=0)or(n<=2) then begin
rewrite(f1);writeln(f1,0);close(f1);close(f);exit; end;


for i:=1 to k do begin
readln(f,x,y);
a[x,y]:=1;
a[y,x]:=1;
end;
close(f);
for i:=1 to n do begin

for j:=i to n do begin
max:=2000000;
prig(i,0);
s:=s+max;
end;
end;
rewrite(f1);
if s<2000000 then
writeln(f1,s*2)
else
writeln(f1,k);
close(f1);
end.
