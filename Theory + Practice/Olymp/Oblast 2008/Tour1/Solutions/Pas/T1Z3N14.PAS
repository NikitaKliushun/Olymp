{Popzov Alexei BORISOV}
program sortirovo4ka;
var
f,f1,f2:text;
a:array[1..8003,1..2]of longint;
i,b,j,x,y:longint;
begin
assign(f,'input.txt');
assign(f1,'output.txt');
reset(f);
readln(f,x,y);
for i:=1 to x do begin
a[i,1]:=i;
a[i,2]:=i;
end;
rewrite(f1);

while not eoln(f) do begin
read(f,b);
j:=j+1;
write(f1,a[b,2]);
if (j<>y)then
write(f1,' ');

for i:=1 to x do begin
if a[i,2]<a[b,2] then a[i,2]:=a[i,2]+1;
end;
a[b,2]:=1;
end;

close(f1);
close(f);
end.
