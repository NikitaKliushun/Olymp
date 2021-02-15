uses math;
var a:array[1..100000] of longint;
    l,r,n,i,t:longint;
begin
   assign(input,'input.txt'); reset(input); assign(output,'output.txt');rewrite(output);
read(n);
for i:=1 to n do
   read(a[i]);
for i:=1 to n-1 do
   if a[i]<>a[i+1] then inc(t);
if t>1 then begin
   for i:=1 to n do
     if a[i]=1 then inc(l) else inc(r);
   write(max(l,r));
   end else
   write(n);
close(input); close(output);;
end.