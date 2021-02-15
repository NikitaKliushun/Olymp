
program T1Z3NB18;
var a:array[1..10] of integer;
t1,t2:text;
i,j,n,k,max:byte; s:string; q:char;
begin
readln (n); for i:=1 to n do readln (a[i]);
for i:=1 to n-1 do
if (a[i]>a[i+1]) and (a[i]>max) then q:=chr(a[i]);
for i:=1 to n do
s:=s+chr(a[i]);
k:=n;
for i:=1 to k do
if s[i]=q then begin delete (s,i,1); k:=k-1; end;
for i:=1 to k do writeln (a[i]);
end.

