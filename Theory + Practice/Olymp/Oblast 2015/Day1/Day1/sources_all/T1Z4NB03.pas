program z2;
var
n,x,y,z,max,q,q1,i,k,j,min1:longint;
a:array[1..2000,1..2000] of longint;
function min(x,y:longint):longint;
begin
if x<y then min:=x
            else min:=y;
end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n);
for i:=1 to n do
  for j:=1 to n do a[i,j]:=9999;
for i:=1 to n do a[i,i]:=0;
for i:=1 to n-1 do begin
                   read(x,y,z);
                   a[x,y]:=z;
                   a[y,x]:=z;
                   end;
max:=a[1,1];
min1:=99999;
for q:=1 to n do
for q1:=1 to n do
begin
if max<a[q,q1] then max:=a[q,q1];
{k:=1;}for k:=1 to n do
for i:=1 to n do
for j:=1 to n do
  if (a[i,j]<max) and (a[i,j]<>0) and (a[i,j]<>9999) then a[i,j]:=a[i,j]+min(a[i,k],a[k,j]);
for i:=1 to n do
      for j:=1 to n do if i<>j then begin min1:=min(min1,a[i,j]);
                      end;
end;

write(min1);
close(input);
close(output);
end.
