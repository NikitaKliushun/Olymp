{Program by Pozdniak Artyr from Zhodino}
program dfg;
var a,z,p:array[1..7500] of integer;
i,n,m,c,y,k:integer;
begin
c:=1;
assign(input,'input.txt');
reset(input);
read (n);
read(m);
for I:=1 to m do
read(z[i]);
close(input);
for I:=1 to n do
begin
a[i]:=i ;
end;
i:=1;
while i<=m do
begin
if z[i]=a[c] then
begin
p[i]:=c;
y:=a[c];
for k:=c downto 2  do
begin
a[k]:=a[k-1];
end;
a[1]:=y;
i:=i+1;
c:=1;
end;
if z[i]<>a[c] then
begin
c:=c+1;
end;


end;
assign(output,'output.txt');
rewrite(output);
for i:=1 to m do
write (p[i],' ');
close(output);
end.
