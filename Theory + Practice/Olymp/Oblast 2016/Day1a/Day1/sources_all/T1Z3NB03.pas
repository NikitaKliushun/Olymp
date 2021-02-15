var a:array[1..10000]of longint;
    n,i,k1,k2:longint;
    f:text;
begin
assign(f,'input.txt');
reset(f);
readln(f,n);
for i:=1 to n do
 begin
  read(f,a[i]);
  if a[i]=1 then inc(k1)
         else inc(k2);
 end;
close(f);
assign(f,'output.txt');
rewrite(f); 
if k1>k2 then writeln(f,k1)
         else writeln(f,k2);
close(f);         
end.