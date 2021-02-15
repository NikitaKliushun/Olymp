{DROZD ANDREY SERGEEVICH}
Program T2z1n03;
var a:array [1..100] of int64;
    i,n,j:longint;
    s,t:int64;
begin
assign(input,'input.txt');
reset(input);
read(n);
for i:=1 to n do
read(a[i]);
close(input);
assign(output,'output.txt');
rewrite(output);
if i=2 then begin write(abs(a[1]-a[2]));halt;end;
for i:=1 to n do
for j:=1 to i do
if a[i]<a[j] then begin t:=a[i];a[i]:=a[j];a[j]:=t;end;
for i:=1 to n-1 do
s:=0;
for i:=1 to (n div 2) do
             s:=s+abs(a[i]-a[n-i+1]);
write(s);
close(output);
end.
