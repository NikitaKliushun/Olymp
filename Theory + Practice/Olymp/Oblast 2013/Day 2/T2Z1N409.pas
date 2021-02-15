program z1;
var  n,k,tek,i,sum,x:longint;
     a,b:array[1..100]of longint;
     f:text;
     
begin
assign(f,'input.txt');
reset(f);
read(f,n,k);
for i:=1 to n do
begin
read(f,a[i],b[i]);
sum:=sum+a[i];
end;
close(f);
assign(f,'output.txt');
rewrite(f);
writeln(f,abs(k-sum));
tek:=1;
if sum<k
then
 begin
   while x<(k-sum) do
     begin
      if a[tek]=b[tek]
      then begin inc(tek);end
      else begin inc(a[tek]);writeln(f,tek);inc(x);end;
     end;
 
 
 end
else
 begin
   while x<(sum-k) do
     begin
      if a[tek]=0
      then begin inc(tek);end
      else begin dec(a[tek]);writeln(f,tek-tek*2);inc(x);end;
     end;
 
 
 
 end;
close(f);
end.