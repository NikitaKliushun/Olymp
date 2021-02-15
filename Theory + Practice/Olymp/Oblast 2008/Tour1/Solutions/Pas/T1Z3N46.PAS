{Serokurov Sergei, Soligorsk}
program q4;
var f1,f2 : text;
n,m,i,i4,i3,i2 : longint;
a,b,c,c1 : array[1..1000] of longint;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,m);
for i:=1 to m do
 read(f1,b[i]);
close(f1);
i3:=1;
for i:=1 to n do
 a[i]:=i;
for i4:=1 to m do
 begin
  i2:=1;
  while a[i2]<>b[i3] do
    i2:=i2+1;
 c1[i3]:=i2;
 c[1]:=b[i3];
 for i:=2 to i2 do
  c[i]:=a[i-1];
 for i:=i2+1 to n do
  c[i]:=a[i];
 for i:=1 to n do
  a[i]:=c[i];
  i3:=i3+1;
 end;
assign(f2,'output.txt');
rewrite(f2);
for i:=1 to i3-1 do
 write(f2,c1[i],' ');
close(f2);
end.

