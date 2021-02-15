{Serokurov Sergei, Soligorsk}
program q4;
var f1,f2 : text; n,i,kk,max,i2,j,sumi,sumk,sv,a2 : longint; a : array[1..100] of longint;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n);
for i:=1 to n do
 read(f1,a[i]);
close(f1);
kk:=n div 2;
for i:=1 to n do
 begin
  max:=a[i];
  i2:=i;
  for j:=i to n do
   if a[j]>max then begin  max:=a[j]; i2:=j; end;
  a2:=a[i];
  a[i]:=max;
  a[i2]:=a2;
 end;
for i:=1 to kk do
 sumi:=sumi+a[i];
for i:=n downto n-kk+1 do
 sumk:=sumk+a[i];
sv:=sumi-sumk;
assign(f2,'output.txt');
rewrite(f2);
writeln(f2,sv);
close(f2);
end.

