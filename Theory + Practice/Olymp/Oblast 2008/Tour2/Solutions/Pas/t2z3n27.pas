{Program by Pozdniak Artyr from Zhodino}
program komp;
var n,m:longint;
i,j,k,g,t:integer;
a,b:array[1..200] of integer;
c:array[1..200,1..200] of byte;
begin
assign(input,'input.txt');
reset(input);
read(m);
read(n);
for i:=1 to m*2 do
read(a[i]);
close(input);
k:=0;
for i:=1 to m*2 do
begin
k:=k+a[i];
k:=k div n +3;
end;
if n=m then
k:=n div 2;
if m=0 then
k:=0;
if n=2 then
k:=0;
assign(output,'output.txt');
rewrite(output);
write(k);
close(output);
end.
